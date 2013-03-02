NB. J qtide

require 'project'

coclass 'jqtide'

Debugwd=: 0

cocurrent 'z'
wd=: 3 : 0"1
'r c p n b'=. wd1 ,&.>y;2;0;18!:5''
select. r
case. 0 do. 
 EMPTY
case. _1 do.
 memr p,0,n
case. _2 do.
 _2 [\ <;._2 memr p,0,n
case. do.
  (wd ::(''"_) 'qer') (13!:8) 3
end.
)

wd1=: ('"',libjqt,'" wd ', (IFWIN#'+ '),'i *c * *i *c') & cd
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
wdclippaste=: (wd bind 'clippaste') :: (''"_)
wdqq=: (wd bind 'q') :: (''"_)
wdqchildxywh=: (0 ". [: wd 'qchildxywh ' , ]) :: (0 0 0 0"_)
wdqchildxywhx=: (0 ". [: wd 'qchildxywhx ' , ] ) :: (0 0 0 0"_)
wdqcolor=: (0 ". [: wd 'qcolor ' , ":) :: ( 0 0 0"_)
wdqd=: (wd bind 'qd') :: (''"_)
wdqer=: (wd bind 'qer') :: (''"_)
wdqformx=: (0 ". wd bind 'qformx') :: (0 0 800 600"_)
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
NB gl2 overlay on opengl
rpcinfinity=: 3 : 0
<. 0 (I.(_=y)+.__=y)}y
)
gl_arc=: ('"',libjqt,'" gl_arc >',(IFWIN#'+'),' i *i') cd <
gl_brush=: ('"',libjqt,'" gl_brush >',(IFWIN#'+'),' i')&cd bind ''
gl_brushnull=: ('"',libjqt,'" gl_brushnull >',(IFWIN#'+'),' i')&cd bind ''
gl_capture=: ('"',libjqt,'" gl_capture >',(IFWIN#'+'),' i i')&cd
gl_caret=: ('"',libjqt,'" gl_caret >',(IFWIN#'+'),' i *i') cd <
gl_clear=: ('"',libjqt,'" gl_clear >',(IFWIN#'+'),' i')&cd bind ''
gl_clip=: ('"',libjqt,'" gl_clip >',(IFWIN#'+'),' i *i') cd <
gl_clipreset=: ('"',libjqt,'" gl_clipreset >',(IFWIN#'+'),' i')&cd bind ''
gl_cmds=: ('"',libjqt,'" gl_cmds >',(IFWIN#'+'),' i *i i') cd (;#)@:rpcinfinity
gl_cursor=: ('"',libjqt,'" gl_cursor >',(IFWIN#'+'),' i i')&cd
gl_ellipse=: ('"',libjqt,'" gl_ellipse >',(IFWIN#'+'),' i *i') cd <@:<.
gl_font=: ('"',libjqt,'" gl_font >',(IFWIN#'+'),' i *c') cd <@,
gl_font2=: ('"',libjqt,'" gl_font2 >',(IFWIN#'+'),' i *i i') cd (;#)@:<.
gl_fontangle=: ('"',libjqt,'" gl_fontangle >',(IFWIN#'+'),' i i')&cd
gl_lines=: ('"',libjqt,'" gl_lines >',(IFWIN#'+'),' i *i i') cd (;#)
gl_nodblbuf=: ('"',libjqt,'" gl_nodblbuf >',(IFWIN#'+'),' i i') cd {.@(,&0)
gl_paint=: ('"',libjqt,'" gl_paint >',(IFWIN#'+'),' i')&cd bind ''
gl_paintx=: ('"',libjqt,'" gl_paintx >',(IFWIN#'+'),' i')&cd bind ''
gl_pen=: ('"',libjqt,'" gl_pen >',(IFWIN#'+'),' i *i') cd <@:(2&{.)
gl_pie=: ('"',libjqt,'" gl_pie >',(IFWIN#'+'),' i *i') cd <
gl_pixel=: ('"',libjqt,'" gl_pixel >',(IFWIN#'+'),' i *i') cd <
gl_pixels=: ('"',libjqt,'" gl_pixels >',(IFWIN#'+'),' i *i i') cd (;#)@:<.
gl_pixelsx=: ('"',libjqt,'" gl_pixelsx >',(IFWIN#'+'),' i *i') cd <@:<.
gl_polygon=: ('"',libjqt,'" gl_polygon >',(IFWIN#'+'),' i *i i') cd (;#)@:<.
gl_rect=: ('"',libjqt,'" gl_rect >',(IFWIN#'+'),' i *i') cd <@:rpcinfinity
gl_rgb=: ('"',libjqt,'" gl_rgb >',(IFWIN#'+'),' i *i') cd <@:<.
gl_sel=: ('"',libjqt,'" gl_sel >',(IFWIN#'+'),' i x')&cd
gl_sel2=: ('"',libjqt,'" gl_sel2 >',(IFWIN#'+'),' i *c') cd <@,
gl_text=: ('"',libjqt,'" gl_text >',(IFWIN#'+'),' i *c') cd <@,
gl_textcolor=: ('"',libjqt,'" gl_textcolor >',(IFWIN#'+'),' i')&cd bind ''
gl_textxy=: ('"',libjqt,'" gl_textxy >',(IFWIN#'+'),' i *i') cd <@:<.
gl_windoworg=: ('"',libjqt,'" gl_windoworg >',(IFWIN#'+'),' i *i') cd <@:<.
gl_updategl=: ('"',libjqt,'" gl_updategl >',(IFWIN#'+'),' i x')&cd

gl_setlocale=: ('"',libjqt,'" gl_setlocale >',(IFWIN#'+'),' i *c') cd <@,@>
gl_qhandles=: 3 : 0"1
hs=. 3#2-2
('"',libjqt,'" gl_qhandles >',(IFWIN#'+'),' i *x') cd <hs
hs
)
gl_qwh=: 3 : 0"1
wh=. 2#2-2
('"',libjqt,'" gl_qwh >',(IFWIN#'+'),' i *i') cd <wh
wh
)
gl_qpixels=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
('"',libjqt,'" gl_qpixels >',(IFWIN#'+'),' i *i *i') cd y;pix
pix
)
gl_qextent=: 3 : 0"1
wh=. 2#2-2
('"',libjqt,'" gl_qextent >',(IFWIN#'+'),' i *c *i') cd (,y);wh
wh
)
gl_qextentw=: 3 : 0"1
y=. y,(LF~:{:y)#LF [ y=. ,y
w=. (+/LF=y)#2-2
('"',libjqt,'" gl_qextentw >',(IFWIN#'+'),' i *c *i') cd y;w
w
)
gl_qtextmetrics=: 3 : 0"1
tm=. 7#2-2
('"',libjqt,'" gl_qtextmetrics >',(IFWIN#'+'),' i *i') cd tm
tm
)
s=. '"',libjqt,'" dirmatch ', (IFWIN#'+ '),'> n *c *c'
dirmatch=: [: empty s cd [: ,each 2 {. boxopen

4!:55<'s'
wde=: [:
wdbox=: [:
wdmove=: [:
wdqshow=: [:
wdreset=: wd bind 'reset'
wdstatus=: [:
wdformedit=: [:
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
jpathsep wd 8 u: 'mb open ',y
)
mbsave=: 3 : 0
jpathsep wd 8 u: 'mb save ',y
)

wdreadimg=: ('"',libjqt,'" wdreadimg >',(IFWIN#'+'),' x *c *i')&cd
wdgetimg=: ('"',libjqt,'" wdgetimg >',(IFWIN#'+'),' x *c i *i')&cd
wdwriteimg=: ('"',libjqt,'" wdwriteimg >',(IFWIN#'+'),' i *c *i *c *c i')&cd
wdputimg=: ('"',libjqt,'" wdputimg >',(IFWIN#'+'),' x *c *i *i *c i')&cd

wdgetparentid=: 3 : 0
z=. ''
if. r=. ('"',libjqt,'" wdgetparentid >',(IFWIN#'+'),' x x') cd y do. z=. memr r, 0 _1 2 end.
z
)

wdfit=: 0:
wdget=: 4 : 0
nms=. {."1 y
vls=. {:"1 y
if. L. x do. vls {~ nms i. ,&.>x
else. > vls {~ nms i. <,x
end.
)

wdpclose=: [: wd :: empty 'psel ' , ';pclose' ,~ ":
wdcenter=: 0:

wdclipwrite=: ('"',libjqt,'" wdclipwrite >',(IFWIN#'+'),' i *c') cd <@,
wdclipread=: 3 : 0
if. m=. ('"',libjqt,'" wdclipread >',(IFWIN#'+'),' x *i')&cd <l=. ,_1 do.
  z=. memr m, 0, l, 2
  ('"',libjqt,'" wdclipread >',(IFWIN#'+'),' x *i')&cd <<0
  z
else.
  ''
end.
)
coclass 'jqtide'

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

s=. '"',libjqt,'" android_exec_host ', (IFWIN#'+ '),'> n *c *c *c'
android_exec_host=: [: empty s cd ]

4!:55<'s'
readimg=: 3 : 0
if. m=. wdreadimg (utf8 ,y);wh=. 2$2-2 do.
  d=. _2 ic memr m,0,(*/wh,4),2
  wdreadimg 2#<<0
  (|.wh)$d
else.
  0 0$2-2
end.
)
getimg=: 3 : 0
if. m=. wdgetimg y;(#y);wh=. 2$2-2 do.
  d=. _2 ic memr m,0,(*/wh,4),2
  wdreadimg 2#<<0
  (|.wh)$d
else.
  0 0$2-2
end.
)
writeimg=: 4 : 0
'h w'=. $x
d=. ,x
if. 2> #y=. boxopen y do.
  f=. >@{.y
  type=. }. (}.~ i:&'.') f
  opt=. ''
elseif. 2= #y do.
  f=. >@{.y
  type=. >1{y
  opt=. ''
elseif. do.
  f=. utf8 >@{.y
  type=. >1{y
  opt=. 2{.2}.y
  opt=. (":&.>1{opt) 1}opt
end.
if. 'jpg'-:type do. type=. 'jpeg'
elseif. 'tif'-:type do. type=. 'tiff'
end.
type=. toupper type
if. ''-:opt do. quality=. _1 else. quality=. <. {. 0&".opt end.
d=. fliprgb^:(-.RGBSEQ_j_) d
r=. wdwriteimg (2 ic d); (w,h); f; type; quality
EMPTY
)
putimg=: 4 : 0
'h w'=. $x
d=. ,x
if. 2> #y=. boxopen y do.
  type=. >@{.y
  opt=. ''
elseif. do.
  type=. >@{.y
  opt=. 2{.}.y
  opt=. (":&.>1{opt) 1}opt
end.
if. 'jpg'-:type do. type=. 'jpeg'
elseif. 'tif'-:type do. type=. 'tiff'
end.
type=. toupper type
if. ''-:opt do. quality=. _1 else. quality=. <. {. 0&".opt end.
d=. fliprgb^:(-.RGBSEQ_j_) d
m=. wdputimg (2 ic d); (w,h); (len=. ,_1); type; quality
if. m do.
  z=. memr m,0,len,2
  wdputimg (4#(<<0)),<0
  z
else.
  ''
end.
)

cocurrent 'base'
