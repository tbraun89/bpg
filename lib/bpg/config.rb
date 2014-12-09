module Bpg
  module Config
    require 'yaml'

    DEFAULT_FILE = File.join(File.dirname(File.expand_path(__FILE__)), '../../config/bpg.yml')
    CONFIG       = YAML.load_file(DEFAULT_FILE)['bpg']['config'].inject({}){|m,(k,v)| m[k.to_sym] = v; m}
  end
end
