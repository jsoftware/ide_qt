NB. J qtide

require 'project'

coclass 'jqtide'

3 : 0''
if. IFQT do.
  require 'ide/qt/qtlib'
  require 'ide/qt/keys'
  require 'gl2'
end.
EMPTY
)
'jws_onOpen jws_onClose jws_onMessage jws_onError jws_onSslError jws_onStateChange'=: i.6
boxj2utf8=: 3 : 0
if. 1 < #$y do. y return. end.
b=. (16+i.11) { a.
if. -. 1 e. b e. y do. y return. end.
y=. ucp y
a=. ucp '┌┬┐├┼┤└┴┘│─'
x=. I. y e. b
utf8 (a {~ b i. x { y) x } y
)
clipread=: wd@('clippaste'"_)
clipwrite=: 3 : 0
txt=. boxj2utf8 flatten ":y
wd 'clipcopy *',txt
#txt
)
dbjqt=: 3 : 0
if. y do.
  if. _1 = 4!:0 <'jdb_open_jdebug_' do.
    0!:0 <jpath '~addons/ide/qt/debugs.ijs'
  end.
  jdb_open_jdebug_''
else.
  jdb_close_jdebug_ :: ] ''
end.
)
flatten=: 3 : 0
dat=. ": y
select. # $ dat
case. 1 do.
case. 2 do.
  }. , LF ,. dat
case. do.
  dat=. 1 1}. _1 _1}. ": < dat
  }: (,|."1 [ 1,.-. *./\"1 |."1 dat=' ')#,dat,.LF
end.
)
gridindex=: 3 : 0
'rws cls sel ndx shp'=. y
d=. (sel,rws,cls) |: i.shp
r=. (sel{shp),(*/rws{shp),*/cls{shp
,(<ndx) { r ($,) d
)
Multiline=: (,each '01234'),;:'noun adverb conjunction verb monad dyad'

ismultiline=: 3 : 0
if. 0=#y do. 0 return. end.
t=. ;: :: 0: y
if. t-:0 do. 0 return. end.
if. (<'Note') = {.t do. 1 return. end.
n=. I. }: t e. Multiline
if. 0=#n do. 0 return. end.
if. (<'define') e. (n+1){t do. 1 return. end.
(,each ':0') e. (n+/1 2){t,<''
)
showevents=: 3 : 0
select. {. y,1
case. 0 do.
  4!:55 <'wdhandler_debug_z_'
case. 1 do.
  wdhandler_debug_z_=: 3 : 'smoutput sysevent'
case. 2 do.
  wdhandler_debug_z_=: 3 : 'smoutput wdq'
case. 3 do.
  wdhandler_debug_z_=: 3 : 'if. -. ''_mmove''-:_6{.sysevent do. smoutput sysevent end.'
case. 4 do.
  wdhandler_debug_z_=: 3 : 'if. -. ''_mmove''-:_6{.sysevent do. smoutput wdq end.'
end.
EMPTY
)
textview=: 3 : 0
if. 2=#p=. boxopen y do.
  p=. 1 0 1 #^:_1 p
end.
'title caption text'=. _3 {. p
wd 'textview *;',title,';',caption,';',flatten text
)
addons_msg=: 0 : 0
The XX are not yet installed.

To install, select menu Tools|Package Manager and install package YY.
)
addons_missing=: 3 : 0
'name addon script'=. y
if. fexist script do. 0 return. end.
sminfo name;addons_msg rplc 'XX';name;'YY';addon
1
)
demoqt=: 3 : 0
p=. jpath '~addons/ide/qt/demo/qtdemo.ijs'
if. addons_missing 'qt demos';'ide/qt';p do. return. end.
load p
)
demowd=: 3 : 0
p=. jpath '~addons/demos/wd/demos.ijs'
if. addons_missing 'Showcase demos';'demos/wd';p do. return. end.
load p
)
labs_run=: 3 : 0
smfocus_jijs_=: 0:
closewindows_jijs_=: 0:
smclose_jijs_=: 0:
smopen_jijs_=: open
smsel_jijs_=: 0:
smselout_jijs_=: 0:
smsetsaved_jijs_=: 0:
smwrite_jijs_=: 0:
tile_jijs_=: 0:
coinsert_jijs_ (,copath) coname''

p=. jpath '~addons/labs/labs/lab.ijs'
if. addons_missing 'labs';'labs/labs';p do. return. end.
require p
lab_jlab_ y
)
helpcontext0=: 3 : 0
require '~addons/ide/qt/help.ijs'
helpcontext y
)

helpcontext1=: 3 : 0
require '~addons/ide/qt/help.ijs'
helpcontext1 y
)
cocurrent IFQT{'jqtide';'z'
wd=: 3 : 0"1
'r c l p n'=. wd1 (,y);(#,y);(,2);(,0)
select. r
case. 0 do.
  EMPTY
case. _1 do.
  memr p,0,n
case. _2 do.
  _2 [\ <;._2 memr p,0,n
case. do.
  (LF,~wd ::(''"_)'qer') (13!:8) 3
end.
)

wd1=: ('"',libjqt,'" wd ', (IFWIN#'+'),' i *c i * *i') & cd f.
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
      wd_err=. LF,,LF,.(}.^:('|'e.~{.));._2 ,&LF^:(LF~:{:) wd_err
      wdinfo 'wdhandler';'error in: ',wd_fn,wd_err
    end.
  end.
end.
i.0 0
)
wdhandlerx=: 3 : 0
loc=. <,y
if. 0 <: 18!:0 loc do.
  wdhandler__loc''
else.
  msg=. 'no locale for event handler: ',>loc
  if. #wdq=. wd 'q' do.
    msg=. msg, ', event: ',(<1 1) pick wdq
  end.
  smoutput msg
end.
)
wdclippaste=: (wd bind 'clippaste') :: (''"_)
wdqq=: (wd bind 'q') :: (''"_)
wdqchildxywh=: (0 ". [: wd 'qchildxywh ' , ]) :: (0 0 0 0"_)
wdqcolor=: (0 ". [: wd 'qcolor ' , ":) :: ( 0 0 0"_)
wdqd=: (wd bind 'qd') :: (''"_)
wdqer=: (wd bind 'qer') :: (''"_)
wdqform=: (0 ". wd bind 'qform') :: (0 0 800 600"_)
wdqhinst=: (0 ". wd bind 'qhinst') :: 0:
wdqhwndc=: (0 ". [: wd 'qhwndc ' , ]) :: 0:
wdqhwndp=: (0 ". wd bind 'qhwndp') :: 0:
wdqhwndx=: (0 ". wd bind 'qhwndx') :: 0:
wdqm=: (0 ". wd bind 'qm') :: (800 600 8 16 1 1 3 3 4 4 19 19 0 0 800 570"_)
wdqp=: (wd bind 'qp') :: (''"_)
wdqprinters=: (wd bind 'qprinters') :: (''"_)
wdqpx=: (wd bind 'qpx') :: (''"_)
wdqscreen=: (0 ". wd bind 'qscreen') :: (264 211 800 600 96 96 32 1 _1 36 36 51"_)
wdqwd=: (wd bind 'qwd') :: ('jqt'"_)
wdcenter=: 0:
wdfit=: 0:

wdreset=: wd bind 'reset'
wdforms=: <;._2;._2 @ wd bind 'qpx'
wdisparent=: (boxopen e. 0: {"1 wdforms) ::0:
wdishandle=: (boxopen e. 1: {"1 wdforms) ::0:
wdinfo=: 3 : 0
'a b'=. _2{. boxopen y
if. 2=#$b=. ":b do. b=. }.,LF,.b end.
f=. 8 u: DEL&, @ (,&DEL) @ -.&(0 127{a.)
empty wd 'mb info ',(f a),' ',(f b)
)
wdquery=: 3 : 0
0 3 wdquery y
:
msg=. ' mb_'&,&.> res=. ;:'ok cancel yes no save discard'
t=. x [ 'a b'=. _2{. boxopen y
if. 2=#$b=. ":b do. b=. }.,LF,.b end.
f=. 8 u: DEL&, @ (,&DEL) @ -.&(0 127{a.)
m=. 'mb query', (;t{msg), ' ', (f a),' ',(f b)
res i. <wd m
)
mbopen=: 3 : 0
jpathsep wd 8 u: 'mb open1 ',y
)
mbsave=: 3 : 0
jpathsep wd 8 u: 'mb save ',y
)
wdget=: 4 : 0
nms=. {."1 y
vls=. {:"1 y
if. L. x do. vls {~ nms i. ,&.>x
else. > vls {~ nms i. <,x
end.
)

wdpclose=: [: wd :: empty 'psel ' , ';pclose' ,~ ":
3 : 0^:(IFQT > IFJHS)''
dirmatch=: 3 : 'wd ''dirmatch '', ; dquote&.> 2 {. boxopen y'
open=: 3 : 'wd ''openj *'' , > {. getscripts_j_ y'
immexj=: [: wd 'immexj *'&,
smact=: wd bind 'smact'

clipread=: clipread_jqtide_
clipwrite=: clipwrite_jqtide_
textview=: textview_jqtide_
EMPTY
)
coclass 'jqtide'
JQTREQ=: '1.5.3'
JQTMSG=: 0 : 0
The JQt binary needs updating.

To do so, close this session, then load jconsole and run:

   getqtbin''
or
   getqtbin'slim'

or run XX in the J installation folder.
)
checkjqtversion=: 3 : 0
f=. 1000 #. 0 ". ' ' I.@('.'=])} ]
ver=. wd 'version'
act=. f (<./ ver i.'/s') {. ver
req=. f JQTREQ
if. req <: act do. return. end.
msg=. JQTMSG rplc 'XX';'updatejqt.',IFWIN pick 'sh';'cmd'
sminfo 'JQt';msg
)
checkjqtversion^:IFQT''

cocurrent 'base'
