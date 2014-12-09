require 'bindata'

module Bpg
  module FileFormat
    class HeicFile < BinData::Record
      sbit :file_magic,             nbits: 32
      sbit :pixel_format,           nbits: 3
      sbit :alpha_present_flag,     nbits: 1
      sbit :bit_depth_minus_8,      nbits: 4
      sbit :color_space,            nbits: 4
      sbit :extension_present_flag, nbits: 1
      sbit :reserved_zeros,         nbits: 3

      # TODO
    end
  end
end