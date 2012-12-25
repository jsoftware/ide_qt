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
18!:4 <'z'
wd=: 3 : 0"1
if. er=. ('"',libjqt,'" wd >',(IFWIN#'+'),' i *c *c') cd (;18!:5@(''"_)) y do.
  (wdqer'') 13!:8[3
end.
er
)
wdqchildxywh=: 3 : 'p[(''"'',libjqt,''" wdqchildxywh >'',(IFWIN#''+''),'' i *c *i'') cd y;p=.4$2-2'
wdqchildxywhx=: 3 : 'p[(''"'',libjqt,''" wdqchildxywhx >'',(IFWIN#''+''),'' i *c *i'') cd y;p=.4$2-2'
wdqcolor=: ( 0 0 0"_)
wdqformx=: 3 : 'p[(''"'',libjqt,''" wdqformx >'',(IFWIN#''+''),'' i *i'') cd <p=.4$2-2'
wdqhinst=: 0:
wdqhwndc=: ('"',libjqt,'" wdqhwndc >',(IFWIN#'+'),' x *c') cd <
wdqhwndp=: ('"',libjqt,'" wdqhwndp >',(IFWIN#'+'),' x')&cd bind ''
wdqhwndx=: 0:
wdqiox=: 0:
wdqm=: 3 : 'p[(''"'',libjqt,''" wdqm >'',(IFWIN#''+''),'' i *i'') cd <p=.16$2-2'
wdqscreen=: 3 : 'p[(''"'',libjqt,''" wdqscreen >'',(IFWIN#''+''),'' i *i'') cd <p=.12$2-2'
wdinfo2=: ('"',libjqt,'" wdinfo2 >',(IFWIN#'+'),' i *c *c') cd ]
wdquery2=: ('"',libjqt,'" wdquery2 >',(IFWIN#'+'),' i *c *c *c') cd ]
wdclippaste=: 3 : 0
if. 0= #y do. y=. 0 end.
assert. 2>y [ 'clippaste 2 not implemented'
if. 0=n=. ('"',libjqt,'" wdclippaste >',(IFWIN#'+'),' i i *c') cd y;<<0 do.
  if. 0=y do. '' return. else. (wdqer'') 13!:8[3 end.
else.
  p [ ('"',libjqt,'" wdclippaste >',(IFWIN#'+'),' i i *c') cd y;p=. n#{.a.
end.
)
wdqer=: 3 : 0
a=. ('"',libjqt,'" wdqer >',(IFWIN#'+'),' x *i') cd <p=. ,2-2
assert. 0~:a
msg=. memr a,0 _1 2
if. #msg do.
  msg, ' : ', ":p
else.
  ''
end.
)
wdqwd=: 3 : 0
memr 0 _1 2,~ ('"',libjqt,'" wdqwd >',(IFWIN#'+'),' x') cd ''
)
wdqq=: 3 : 0
if. 0= n=. ('"',libjqt,'" wdq >',(IFWIN#'+'),' i *c') cd <<0 do.
  0 2$<''
else.
  ('"',libjqt,'" wdq >',(IFWIN#'+'),' i *c') cd <p=. n#{.a.
  ".p
end.
)
wdqd=: 3 : 0
if. 0= n=. ('"',libjqt,'" wdqd >',(IFWIN#'+'),' i *c') cd <<0 do.
  0 2$<''
else.
  ('"',libjqt,'" wdqd >',(IFWIN#'+'),' i *c') cd <p=. n#{.a.
  ".p
end.
)
wdqp=: 3 : 0
if. 0= n=. ('"',libjqt,'" wdqp >',(IFWIN#'+'),' i *c') cd <<0 do.
  ''
else.
  p [ ('"',libjqt,'" wdqp >',(IFWIN#'+'),' i *c') cd <p=. n#{.a.
end.
)
wdqpx=: 3 : 0
if. 0= n=. ('"',libjqt,'" wdqpx >',(IFWIN#'+'),' i *c') cd <<0 do.
  ''
else.
  p [ ('"',libjqt,'" wdqpx >',(IFWIN#'+'),' i *c') cd <p=. n#{.a.
end.
)
wdqprinters=: 3 : 0
if. 0= n=. ('"',libjqt,'" wdqprinters >',(IFWIN#'+'),' i *c') cd <<0 do.
  ''
else.
  p [ ('"',libjqt,'" wdqprinters >',(IFWIN#'+'),' i *c') cd <p=. n#{.a.
end.
)
wdreset=: wd bind 'reset'
wdclipread=: toJ @ (wdclippaste bind 0)
wdbox=: 3 : 0
whs=. 8 9 10 13 32{a.
del=. 127{a.
dat=. ' ',y
msk=. ~:/\ dat e. del
mqt=. 2: +./\ 0: , 2: | +/\ @ (=&'"')
mquote=. -. mqt dat
msk=. mquote *. msk
ndx=. 1 i.~ msk < dat='*'
end=. < }. ndx }. dat
dat=. ndx{.dat
msk=. mquote *.(ndx {. msk) < dat e. whs
dat=. (msk <;._1 dat) , end
a: -.~ dat -. each <del
)
wdcenter=: 3 : 0
'fx fy fw fh'=. 0&". :: ] y
'sx sy'=. sxy=. 2 {. wdqm''
'w h'=. sxy <. _2 {. wdqformx''
x=. 0 >. (sx-w) <. fx + <. -: fw-w
y=. 0 >. (sy-h) <. fy + <. -: fh-h
wd 'pmovex ',": x,y,w,h
)
wdclipwrite=: 3 : 0
txt=. y
if. L. txt do.
  txt=. }. ; (LF&, @ , @ ": each) txt
else.
  txt=. ": txt
  if. 1 < #$txt do. txt=. }. , LF,"1 txt end.
end.
wd 'clipcopy *',toHOST txt
#txt
)
wde=: 3 : 0
try. res=. wd y
catch.
  err=. wdqer''
  ndx=. >: err i. ':'
  msg=. ndx {. err
  pos=. {.". ndx }. err
  cmd=. (>:j i.';') {. j=. pos}.y
  if. 50 < #cmd do.
    cmd=. (47{.cmd),'...' end.
  wdinfo 'Window Driver';'wd error ',msg,LF,cmd
  wderr=. 13!:8@1:
  wderr ''
end.
)
wdfit=: 3 : 0
'mx my'=. 2{.y,(#y)}.1 1
'x y w h'=. wdqformx''
'fx fy zx zy yc ym sx sy sw sh'=. 6 }. wdqm''

select. mx
case. 0 do.
  w=. w - 0 <. sx - x
  x=. x >. sx
  w=. 0 >. w <. sx + sw - x
case. 1 do.
  x=. sx >. x <. (sx+sw) - w
  w=. 0 >. w <. sx + sw - x
case. 2 do.
  x=. sx
  w=. sw
case. 3 do.
  x=. - fx
  w=. sw + 2 * fx
end.

select. my
case. 0 do.
  h=. h - 0 <. sy - y
  y=. y >. sy
  h=. 0 >. h <. sy + sh - y
case. 1 do.
  y=. sy >. y <. (sy+sh) - h
  h=. 0 >. h <. sy + sh - y
case. 2 do.
  y=. sy
  h=. sh
case. 3 do.
  y=. - yc + fy
  h=. sh + yc + 2 * fy
end.

wd 'pmovex ',":x,y,w,h
)
wdforms=: 3 : 0
if. 0=# z=. <;._2;._2 @ wdqpx'' do. z=. 0 6$<'' end.
z
)
wdget=: 4 : 0
nms=. {."1 y
vls=. {:"1 y
if. L. x do. vls {~ nms i. ,&.>x
else. > vls {~ nms i. <,x
end.
)

SYSPPC=: (<'syschild'),.'ppcnext';'ppcprevious'
wdhandler=: 3 : 0
wdq=: wdqq''
wd_val=. {:"1 wdq
({."1 wdq)=: wd_val
if. 3=4!:0<'wdhandler_debug' do.
  try. wdhandler_debug'' catch. end.
end.
wd_ndx=. 1 i.~ 3 = 4!:0 [ 3 {. wd_val
if. 3 > wd_ndx do.
  if. (<sysevent) e. ;:'paint print char mwheel focus focuslost mmove mbldown mbldbl mblup mbmdown mbmdbl mbmup mbrdown mbrdbl mbrup' do.
    glsel_jgl2_ ::0: syshwndc
  end.
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
wdinfo=: 3 : 0
'a b'=. _2{. boxopen y
if. 0<Debugwd_jqtide_ do.
  smoutput b return.
end.
if. 2=#$b=. ":b do. b=. }.,LF,.b end.
f=. 8 u: -.&(0 127{a.)
wdinfo2 (f a);(f b)
EMPTY
)
wdisparent=: boxopen e. <;._2 @ wdqp
wdishandle=: boxopen e. 1: {"1 wdforms
wdmove=: 3 : 0
'' wdmove y
:
'px py'=. y
'sx sy sw sh'=. 12 13 14 15 { wdqm''
if. (*#x)*.(x-.@-:0) do. wd 'psel ',":x end.
'x y w h'=. wdqformx''
if. px < 0 do. px=. sw - w - 1 + px end.
if. py < 0 do. py=. sh - h - 1 + py end.
wd 'pmovex ',": (px+sx),(py+sy),w,h
)
wdpclose=: [: wd :: empty 'psel ' , ';pclose' ,~ ":
wdqshow=: 3 : 0
txt=. (>{."1 wdq),.TAB,.>{:"1 wdq
wdinfo 'wdq';(60 <. {:$txt) {."1 txt
)
wdquery=: 3 : 0
0 wdquery y
:
msg=. ;:'okcancel retrycancel yesno yesnocancel abortretryignore'
res=. ;:'OK CANCEL RETRY YES NO ABORT IGNORE'
ndx=. 0 1;2 1;3 4;3 4 1;5 2 6
't d'=. 2{.x [ 'a b'=. _2{. boxopen y
if. 2=#$b=. ":b do. b=. }.,LF,.b end.
f=. 8 u: -.&(0 127{a.)
assert. t<3 [ 'wdquery for 3 choices not implemented'
tt=. t{::'OK';'RETRY';'NY'
r=. wdquery2 tt;(f a);(f b)
res {::~ (-.r){ >t{ndx
)
wdselect=: 3 : 0
0 wdselect y
:
if. 0=#y do.
  empty wd 'psel wdselect;pclose' return.
end.

'n s e'=. 3{.x

if. 2=L.y do. 'hdr sel'=. y
else. hdr=. '' [ sel=. y
end.

'r c'=. $,.>sel
sel=. ;sel ,each LF

'c r'=. (12,5*6>r) + >. 4 8 * >. c,r
c=. 205 <. 80 >. (4*#hdr) >. c
r=. 128 <. r

if. (<'wdselect') e. <;._2 wdqp'' do.
  wd 'psel wdselect;pn '",hdr,'";'
else.
  wd 'pc wdselect;pn *',hdr
  wd 'xywh 4 4 ',":c,r
  wd 'cc l0 listbox ws_vscroll rightmove bottommove',s#' lbs_multiplesel'
  wd 'setfont l0 ',PROFONT
  wd 'cc e0 editm; setshow e0 0'
  wd 'xywh ',(":14+c),' 6 36 12;cc ok button leftmove rightmove bottommove;cn "OK";'
  wd 'xywh ',(":14+c),' 21 36 12;cc cancel button leftmove rightmove bottommove;cn "Cancel";'
  wd 'pas 4 2;pcenter;'
end.

wd 'set e0 *',sel
wd 'set l0 *',sel
wd (_1 ~: n) # 'setselect l0 ',":n
wd 'setfocus l0'
wd 'pshow'

while. 1 do.
  wdq=. wd 'wait;q'
  ({."1 wdq)=. {:"1 wdq
  done=. (<'cancel') e. systype;syschild
  button=. systype -: 'button'
  ok=. button *. (<syschild) e. ;:'l0 ok enter'
  if. ok +. done do.
    wd (ok *: e)#'pclose'
    ok;".l0_select
    break.
  end.
end.
)
wdstatus=: 3 : 0
'' wdstatus y
:
if. 0 e. $y do.
  empty wd :: [ 'psel status;pclose'
  return.
end.

msg=. y
if. 2=#$msg=. ":msg do. msg=. }.,LF,.msg
else. msg=. toJ (-LF={:msg)}.msg
end.

pn=. (*#x)#'pn ',DEL,x,DEL,';'

if. (<'status') e. <;._2 wdqp'' do.
  wd 'psel status;',pn
else.
  size=. |. 0 100 >. 8 4*$];._2 msg,LF
  wd 'pc status closeok;',pn
  wd 'xywh 10 10 ',(":size),';'
  wd 'cc s0 static;'
  wd 'pas 10 10;pcenter;'
end.

wd 'set s0 *',msg
wd 'pshow;'
)
mbopen=: 3 : 0
jpathsep wd 8 u: 'mbopen ',y
)
mbsave=: 3 : 0
jpathsep wd 8 u: 'mbsave ',y
)

cocurrent 'base'
