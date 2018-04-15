require 'mkmf'

dir_config('idn2')
have_library('idn2')
have_header('idn2.h')
create_makefile('idn2/idn2')
