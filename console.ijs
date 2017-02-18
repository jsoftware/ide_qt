NB. =========================================================
NB. utilites for running jqt under jconsole

require '~addons/ide/qt/qtlib.ijs'
coclass 'jqtide'

NB. =========================================================
NB. utilites for running jqt under jconsole

require '~addons/ide/qt/qtlib.ijs'
coclass 'jqtide'

NB. y ignored
qapplication=: 3 : 0
if. (UNAME-:'Linux') *. (0;'') e.~ <2!:5 'DISPLAY' do. _1 return. end.
('"',libjqt,'" state_run >',(IFWIN#'+'),' i i x *c i i x x *x *x')&cd`0:@.IFQT 0;0;'';FHS;0;0;0;(hjdll=. ,_1);(pjst=. ,_1)
0[IFQTC_z_=: 1
)

NB. ensure state_run run at most once
3 : 0''
IFQTC=. (IFQTC"_)^:(0=4!:0<'IFQTC') (0)
(qapplication ::0:)^:(IFQT+:IFQTC) 0
EMPTY
)
coclass 'jglc'

NB. gl2 on jconsole
NB. no events

rpcinfinity=: 3 : 0
<. 0 (I.(_=y)+.__=y)}y
)

chkgl2=: 13!:8@3:^:(0&<)

NB. =========================================================
glarc=: chkgl2 @: (('"',libjqt,'" glc_arc >',(IFWIN#'+'),' i *i') cd <)
glbrush=: chkgl2 @: (('"',libjqt,'" glc_brush >',(IFWIN#'+'),' i')&cd bind '')
glbrushnull=: chkgl2 @: (('"',libjqt,'" glc_brushnull >',(IFWIN#'+'),' i')&cd bind '')
glcapture=: chkgl2 @: (('"',libjqt,'" glc_capture >',(IFWIN#'+'),' i i')&cd)
glcaret=: chkgl2 @: (('"',libjqt,'" glc_caret >',(IFWIN#'+'),' i *i') cd <)
glclear=: ('"',libjqt,'" glc_clear >',(IFWIN#'+'),' i')&cd bind ''
glclip=: chkgl2 @: (('"',libjqt,'" glc_clip >',(IFWIN#'+'),' i *i') cd <)
glclipreset=: chkgl2 @: (('"',libjqt,'" glc_clipreset >',(IFWIN#'+'),' i')&cd bind '')
glcmds=: chkgl2 @: (('"',libjqt,'" glc_cmds >',(IFWIN#'+'),' i *i i') cd (;#)@:rpcinfinity)
glcursor=: chkgl2 @: (('"',libjqt,'" glc_cursor >',(IFWIN#'+'),' i i')&cd)
glellipse=: chkgl2 @: (('"',libjqt,'" glc_ellipse >',(IFWIN#'+'),' i *i') cd <@:<.)
glfill=: chkgl2 @: (('"',libjqt,'" glc_fill >',(IFWIN#'+'),' i *i') cd <@:<.)
glfont=: chkgl2 @: (('"',libjqt,'" glc_font >',(IFWIN#'+'),' i *c') cd <@,)
glfont2=: chkgl2 @: (('"',libjqt,'" glc_font2 >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glfontangle=: chkgl2 @: (('"',libjqt,'" glc_fontangle >',(IFWIN#'+'),' i i')&cd)
glfontextent=: chkgl2 @: (('"',libjqt,'" glc_fontextent >',(IFWIN#'+'),' i *c') cd <@,)
gllines=: chkgl2 @: (('"',libjqt,'" glc_lines >',(IFWIN#'+'),' i *i i') cd (;#))
glnodblbuf=: chkgl2 @: (('"',libjqt,'" glc_nodblbuf >',(IFWIN#'+'),' i i') cd {.@(,&0))
glpen=: chkgl2 @: (('"',libjqt,'" glc_pen >',(IFWIN#'+'),' i *i') cd <@:(2 {. (,&1)))
glpie=: chkgl2 @: (('"',libjqt,'" glc_pie >',(IFWIN#'+'),' i *i') cd <)
glpixel=: chkgl2 @: (('"',libjqt,'" glc_pixel >',(IFWIN#'+'),' i *i') cd <)
glpixels=: chkgl2 @: (('"',libjqt,'" glc_pixels >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glpixelsx=: chkgl2 @: (('"',libjqt,'" glc_pixelsx >',(IFWIN#'+'),' i *i') cd <@:<.)
glpolygon=: chkgl2 @: (('"',libjqt,'" glc_polygon >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glrect=: chkgl2 @: (('"',libjqt,'" glc_rect >',(IFWIN#'+'),' i *i') cd <@:rpcinfinity)
glrgb=: chkgl2 @: (('"',libjqt,'" glc_rgb >',(IFWIN#'+'),' i *i') cd <@:<.)
glrgba=: chkgl2 @: (('"',libjqt,'" glc_rgba >',(IFWIN#'+'),' i *i') cd <@:<.)
NB. glc_sel=: chkgl2 @: (('"',libjqt,'" glc_sel >',(IFWIN#'+'),' i x')&cd)
NB. glc_sel2=: chkgl2 @: (('"',libjqt,'" glc_sel2 >',(IFWIN#'+'),' i *c') cd <@,)
gltext=: chkgl2 @: (('"',libjqt,'" glc_text >',(IFWIN#'+'),' i *c') cd <@,)
gltextcolor=: chkgl2 @: (('"',libjqt,'" glc_textcolor >',(IFWIN#'+'),' i')&cd bind '')
gltextxy=: chkgl2 @: (('"',libjqt,'" glc_textxy >',(IFWIN#'+'),' i *i') cd <@:<.)
glwindoworg=: chkgl2 @: (('"',libjqt,'" glc_windoworg >',(IFWIN#'+'),' i *i') cd <@:<.)

glinit=: chkgl2 @: (('"',libjqt,'" glc_init >',(IFWIN#'+'),' i *i') cd <@:(2&{.))
glfree=: chkgl2 @: (('"',libjqt,'" glc_free >',(IFWIN#'+'),' i')&cd bind '')
glsavefile=: chkgl2 @: (('"',libjqt,'" glc_savefile >',(IFWIN#'+'),' i *c') cd <@,)

NB. =========================================================
glqwh=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glc_qwh >',(IFWIN#'+'),' i *i') cd <wh
wh
)

NB. =========================================================
NB. return matrix of pixels
NB. wh is limited to pixmap size
NB. -1 in w or h means read to end
glqpixelm=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
shape=. 2#2-2
chkgl2 ('"',libjqt,'" glc_qpixelm >',(IFWIN#'+'),' i *i *i *i') cd y;shape;pix
shape$pix
)

NB. =========================================================
NB. result is in opengl form
NB. pixels top to bottom, RGB24
NB. TODO
glqpixels=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
chkgl2 ('"',libjqt,'" glc_qpixels >',(IFWIN#'+'),' i *i *i') cd y;pix
pix
)

NB. =========================================================
NB. TODO
glqextent=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glc_qextent >',(IFWIN#'+'),' i *c *i') cd (,y);wh
wh
)

NB. =========================================================
NB. TODO
glqextentw=: 3 : 0"1
y=. y,(LF~:{:y)#LF [ y=. ,y
w=. (+/LF=y)#2-2
chkgl2 ('"',libjqt,'" glc_qextentw >',(IFWIN#'+'),' i *c *i') cd y;w
w
)

NB. =========================================================
NB. font information: Height, Ascent, Descent, InternalLeading, ExternalLeading, AverageCharWidth, MaxCharWidth
NB. TODO
glqtextmetrics=: 3 : 0"1
tm=. 7#2-2
chkgl2 ('"',libjqt,'" glc_qtextmetrics >',(IFWIN#'+'),' i *i') cd <tm
tm
)

NB. =========================================================
glsetbrush=: glc_brush @ glc_rgb
glsetpen=: glc_pen @ ((1 1 [ glc_rgb) :((2 {. (,&1)) glc_rgb))
