NB. J qtide

load 'project'

cocurrent 'z'
3 : 0''
if. IFQT do.
  select. UNAME
  case. 'Linux' do. S=. BINPATH,'/libjqt.so'
  case. 'Android' do. S=. BINPATH,'/libjqt.so'
  case. 'Darwin' do. S=. BINPATH,'/libjqt.dylib'
  case. 'Win' do. S=. BINPATH,'/jqt.dll'
  end.
  wd_z_=: ('"',S,'" wd >',(IFWIN#'+'),' i *c *c') cd (;18!:5@(''"_))
  wdqhwndp_z_=: ('"',S,'" wdqhwndp >',(IFWIN#'+'),' x')&cd bind ''
  wdqhwndc_z_=: ('"',S,'" wdqhwndp >',(IFWIN#'+'),' x *c') cd <
end.
EMPTY
)
qthandler_z_=: 4 : 0
if. 3~: 4!:0 <x do. EMPTY return. end.
if. 3=4!:0<'qthandler_debug' do.
  try. x qthandler_debug y catch. end.
end.
qt_fn=. x
if. 13!:17'' do.
  z=. qt_fn~ y
else.
  try. z=. qt_fn~ y
  catch.
    qt_err=. 13!:12''
    if. 0=4!:0 <'ERM_j_' do.
      qt_erm=. ERM_j_
      ERM_j_=: ''
      if. qt_erm -: qt_err do. EMPTY return. end.
    end.
    qt_err=. LF,,LF,.}.;._2 qt_err
    smoutput 'qthandler error in: ',qt_fn,qt_err
    0
  end.
end.
EMPTY
)

cocurrent 'base'
