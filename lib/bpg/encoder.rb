module Bpg
  module Encoder
    require 'bpg/config'

    def self.encode_to_file(input_file, output_file, params = {})
      params = Bpg::Config::CONFIG.merge(params)
    end

    def self.encode(input_file, params = {})
    end
  end
end
