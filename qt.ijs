NB. J qtide

require 'project'

coclass 'jqtide'

3 : 0''
select. UNAME
case. 'Linux' do. libjqt_z_=. BINPATH,'/libjqt.so'
case. 'Android' do. libjqt_z_=. BINPATH,'/libjqt.so'
case. 'Darwin' do. libjqt_z_=. BINPATH,'/libjqt.dylib'
case. 'Win' do. libjqt_z_=. BINPATH,'/jqt.dll'
end.
EMPTY
)

Debugwd=: 0
showevents=: 3 : 0
select. {. y,1
case. 0 do.
  4!:55 <'wdhandler_debug_z_'
case. 1 do.
  wdhandler_debug_z_=: 3 : 'smoutput sysevent'
case. 2 do.
  wdhandler_debug_z_=: 3 : 'smoutput wdq'
end.
EMPTY
)
wd=: 3 : 0
'r c p n b'=: wd1 ,&.>y;2;0;18!:5''
select. r
case. 0 do. 
 EMPTY
case. _1 do.
 memr p,0,n
case. _2 do.
 _2 [\ <;._2 memr p,0,n
case. do.
  ('wd error: ',":r) (13!:8) 3
end.
)
wdhandler=: 3 : 0
wdq=: wd 'q'
wd_val=. {:"1 wdq
({."1 wdq)=: wd_val
if. 3=4!:0<'wdhandler_debug' do.
  try. wdhandler_debug'' catch. end.
end.
wd_ndx=. 1 i.~ 3 = 4!:0 [ 3 {. wd_val
if. 3 > wd_ndx do.
  wd_fn=. > wd_ndx { wd_val
  if. 13!:17'' do.
    wd_fn~''
  else.
    try. wd_fn~''
    catch.
      wd_err=. 13!:12''
      if. 0=4!:0 <'ERM_j_' do.
        wd_erm=. ERM_j_
        ERM_j_=: ''
        if. wd_erm -: wd_err do. i.0 0 return. end.
      end.
      wd_err=. LF,,LF,.}.;._2 wd_err
      wdinfo 'wdhandler';'error in: ',wd_fn,wd_err
    end.
  end.
end.
i.0 0
)

cocurrent 'base'
