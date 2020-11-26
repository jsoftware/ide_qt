cocurrent 'jdebug'
NB. call

NB. wdhandler - exactly like the system handler except the value returned from wd_fn is passed through in debug
wdhandler =: 3 : 0
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
      wd_err=. LF,,LF,.(}.^:('|'e.~{.));._2 ,&LF^:(LF~:{:) wd_err
      wdinfo 'wdhandler';'error in: ',wd_fn,wd_err
    end.
  i.0 0
  end.
else. i. 0 0
end.
)
      
NB. =========================================================
NB. restore various settings before running user code
NB. If y is nonempty, it is (line to dissect);(x options for dissect)
jdb_restore=: 3 : 0
jdb_ppset''
jdb_lxson ''
xsstg =. 'jdb_imxhandler_jdebug_ 1'
if. #y do.
  'line dissectopts' =. y
  xsstg =. ('((', (5!:5 <'dissectopts') , ') dissect ',(jdb_quote line), ') ') , xsstg
end.
jdb_imxs xsstg
jdb_imxss 1
i. 0 0
)

NB. =========================================================
jdb_imxhandler=: 3 : 0
if. 1 >: # 13!:13'' do. jdb_clear'' end.
empty''
:
NB. Dyad: x is result from dissect
NB. if x is a scalar (box), remember it as the open autodissect locale
if. '' -: $x do. autodissectlocale =: x
elseif. *#x do. wdinfo 'Dissect message';x
end.
jdb_imxhandler 1  NB. finish up through monad
)

jdb_destroyad =: 3 : 0
NB. In case user destroyed the locale already, check before we do
if. #autodissectlocale do.
  if. autodissectlocale e. 18!:1 (1) do. destroy__autodissectlocale '' end.
end.
autodissectlocale =: 0$a:
empty''
)

NB. =========================================================
jdb_inactive=: 3 : '0 e. #NAME'

NB. =========================================================
NB. jdb_clear
jdb_clear=: 3 : 0
hx=. HWNDPX
jdb_debugreset''
if. jdb_isparent <'jdebug' do.
  jdb_destroyad''
  jdb_wd 'psel jdebug'
  jdb_swap 'jdbnone'
end.
if. #hx do.
  jdb_wd :: jdb_smact 'psel ',hx
else.
  jdb_smact ''
end.
13!:0 [ 1
jdb_lxson''
)

NB. =========================================================
jdb_close=: 3 : 0
if. jdb_isgui'' do.
  jdb_wd 'psel ',HWNDP
  WINPOS=: 0 ". jdb_wd 'qform'
  jdb_wd 'pclose'
end.
HWNDP=: ''
TABCURRENT=: ''
jdb_lxsoff ''
jdb_imxss 0
jdb_imxs ''
jdb_destroyad''
jdb_debuginit''
13!:0 [ 0
)

NB. =========================================================
NB. If y is 1, ignore getstack and start by reopening the form
NB. (getstack keeps old data if we have cleared debug but not returned)
jdb_open=: 3 : 0
forcereopen =. {.!.0 y
a=. jdb_getactive''
jdb_debuginit''
ERM_j_=: ''
if. (-.forcereopen)*#jdb_getstack'' do.
  jdb_debug ''
else.
  jdb_ppget 0
  jdebug_run 0
  jdb_restore''
end.
jdb_setactive a
)
