require 'mkmf'

dir_config('idn2')
create_makefile('idn2/idn2') if have_library('idn2') && have_header('idn2.h')
