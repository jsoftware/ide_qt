NB. init

require 'project'

coclass 'jqtide'

3 : 0''
WDCB=: 0  NB. use 11!:x wd ?
try.
  WDCB=: 'jqt'-:11!:0'qwd'
catch. end.
if. IFQT do.
  require 'ide/qt/qtlib'
end.
EMPTY
)

NB. =========================================================
NB. for wdhandlerx
Debug=: 0