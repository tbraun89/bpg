module Bpg
  module Encoder
    require 'tempfile'
    require 'bpg/config'

    def self.encode_to_file(input_file, output_file, params = {})
      params  = Bpg::Config::CONFIG.merge(params)
      options = ''

      options += "-q #{params[:quantizer]} "
      options += "-f #{params[:chroma]} "
      options += "-c #{params[:color_space]} "
      options += "-b #{params[:bit_depth]} "
      options += '-lossless' if params[:lossless]

      `#{params[:bpgenc]} -o #{output_file} #{options} #{input_file}`
    end

    def self.encode(input_file, params = {})
      tmp_output_file = Tempfile.new('bpg')

      encode_to_file(input_file, tmp_output_file.path, params)

      tmp_output_file.rewind
      data = tmp_output_file.read
      tmp_output_file.close
      tmp_output_file.unlink

      data
    end
  end
end
