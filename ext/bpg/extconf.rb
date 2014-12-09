require 'mkmf'

ext_name    = 'bpg'

LIBDIR      = Config::CONFIG['libdir']
INCLUDEDIR  = Config::CONFIG['includedir']

HEADER_DIRS = [
    File.join(File.dirname(__FILE__), 'libbpg'),

    INCLUDEDIR
]

dir_config(ext_name, HEADER_DIRS)

create_makefile(ext_name)