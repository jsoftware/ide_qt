NB. gl2 init

coclass 'jgl2'

3 : 0''
if. 0~: 4!:0 <'PROFONT_z_' do. PROFONT=: (('Linux';'Darwin';'Android';'Win') i. <UNAME){:: 'Sans 10' ; '"Lucida Grande" 10' ; (IFQT{::'Sans 10';'"Droid Sans" 10') ; 'Tahoma 10' else. PROFONT=: PROFONT_z_ end.
if. 0~: 4!:0 <'FIXFONT_z_' do. FIXFONT=: (('Linux';'Darwin';'Android';'Win') i. <UNAME){:: 'mono 10' ; 'Monaco 10' ; (IFQT{::'monospace 10';'"Droid Sans Mono" 10') ; '"Lucida Console" 10' else. FIXFONT=: FIXFONT_z_ end.
)

NB. gl2 constant

PS_NULL=: 0
PS_SOLID=: 1
PS_DASH=: 2
PS_DOT=: 3
PS_DASHDOT=: 4
PS_DASHDOTDOT=: 5

IDC_ARROW=: 0
IDC_UPARROW=: 1
IDC_CROSS=: 2
IDC_WAIT=: 3
IDC_IBEAM=: 4
IDC_SIZEVER=: 5
IDC_SIZEHOR=: 6
IDC_SIZEBDIAG=: 7
IDC_SIZEFDIAG=: 8
IDC_SIZEALL=: 9
IDC_BLANK=: 10
IDC_SPLITV=: 11
IDC_SPLITH=: 12
IDC_POINTINGHAND=: 13
IDC_FORBIDDEN=: 14
IDC_OPENHAND=: 17
IDC_CLOSEDHAND=: 18
IDC_WHATSTHIS=: 15
IDC_BUSY=: 16
IDC_DRAGMOVE=: 20
IDC_DRAGCOPY=: 19
IDC_DRAGLINK=: 21
IDC_UNSET=: _1

NB. numeric constants used in glcmds

glarc_n=: 2001
glbrush_n=: 2004
glbrushnull_n=: 2005
glcapture_n=: 2062
glcaret_n=: 2065
glclear_n=: 2007
glclip_n=: 2078
glclipreset_n=: 2079
glcmds_n=: 2999
glcursor_n=: 2069
glellipse_n=: 2008
glemfopen_n=: 2084
glemfclose_n=: 2085
glemfplay_n=: 2086
glfile_n=: 2066
glfill_n=: 2093
glfont_n=: 2012
glfontextent_n=: 2094
gllines_n=: 2015
glnodblbuf_n=: 2070
glpaint_n=: 2020
glpaintx_n=: 2021
glpen_n=: 2022
glpie_n=: 2023
glpixel_n=: 2024
glpixelsx_n=: 2075
glpixels_n=: 2076
glprint_n=: 2089
glprintmore_n=: 2091
glpolygon_n=: 2029
glqextent_n=: 2057
glqextentw_n=: 2083
glqpixels_n=: 2077
glqpixelm_n=: 2080
glqprintpaper_n=: 2092
glqprintwh_n=: 2088
glqtextmetrics_n=: 2058
glqtype_n=: 2095
glqwh_n=: 2059
glqhandles_n=: 2060
glrect_n=: 2031
glrgb_n=: 2032
glroundr_n=: 2033
glsel_n=: 2035
gltext_n=: 2038
gltextcolor_n=: 2040
gltextxy_n=: 2056
glwindoworg_n=: 2045

glbkmode_n=: 2003
glnoerasebkgnd_n=: 2071

glfont2_n=: 2312
glfontangle_n=: 2342
glrgba_n=: 2343
glsel2_n=: 2344

NB. opengl only
glwaitgl_n=: 2345
glwaitnative_n=: 2346

NB. keyboard events
kbBS=: Qt_Key_Backspace_jqtide_
kbTAB=: Qt_Key_Tab_jqtide_
kbLF=: Qt_Key_Enter_jqtide_
kbENTER=: Qt_Key_Enter_jqtide_
kbRETURN=: Qt_Key_Return_jqtide_
kbPUP=: Qt_Key_PageUp_jqtide_
kbPDOWN=: Qt_Key_PageDown_jqtide_
kbEND=: Qt_Key_End_jqtide_
kbHOME=: Qt_Key_Home_jqtide_
kbLEFT=: Qt_Key_Left_jqtide_
kbUP=: Qt_Key_Up_jqtide_
kbRIGHT=: Qt_Key_Right_jqtide_
kbDOWN=: Qt_Key_Down_jqtide_
kbESC=: Qt_Key_Escape_jqtide_
kbINS=: Qt_Key_Insert_jqtide_
kbDEL=: Qt_Key_Delete_jqtide_
kbMETA=: Qt_Key_Meta_jqtide_
kbALT=: Qt_Key_Alt_jqtide_
kbSHIFT=: Qt_Key_Shift_jqtide_
kbCTRL=: Qt_Key_Control_jqtide_
NB qt gl2

rpcinfinity=: 3 : 0
<. 0 (I.(_=y)+.__=y)}y
)

chkgl2=: 13!:8@3:^:(0&<)

NB. =========================================================
glarc=: chkgl2 @: (('"',libjqt,'" glarc >',(IFWIN#'+'),' i *i') cd <)
glbrush=: chkgl2 @: (('"',libjqt,'" glbrush >',(IFWIN#'+'),' i')&cd bind '')
glbrushnull=: chkgl2 @: (('"',libjqt,'" glbrushnull >',(IFWIN#'+'),' i')&cd bind '')
glcapture=: chkgl2 @: (('"',libjqt,'" glcapture >',(IFWIN#'+'),' i i')&cd)
glcaret=: chkgl2 @: (('"',libjqt,'" glcaret >',(IFWIN#'+'),' i *i') cd <)
glclear=: ('"',libjqt,'" glclear >',(IFWIN#'+'),' i')&cd bind ''
glclip=: chkgl2 @: (('"',libjqt,'" glclip >',(IFWIN#'+'),' i *i') cd <)
glclipreset=: chkgl2 @: (('"',libjqt,'" glclipreset >',(IFWIN#'+'),' i')&cd bind '')
glcmds=: chkgl2 @: (('"',libjqt,'" glcmds >',(IFWIN#'+'),' i *i i') cd (;#)@:rpcinfinity)
glcursor=: chkgl2 @: (('"',libjqt,'" glcursor >',(IFWIN#'+'),' i i')&cd)
glellipse=: chkgl2 @: (('"',libjqt,'" glellipse >',(IFWIN#'+'),' i *i') cd <@:<.)
glfill=: chkgl2 @: (('"',libjqt,'" glfill >',(IFWIN#'+'),' i *i') cd <@:<.)
glfont=: chkgl2 @: (('"',libjqt,'" glfont >',(IFWIN#'+'),' i *c') cd <@,)
glfont2=: chkgl2 @: (('"',libjqt,'" glfont2 >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glfontangle=: chkgl2 @: (('"',libjqt,'" glfontangle >',(IFWIN#'+'),' i i')&cd)
glfontextent=: chkgl2 @: (('"',libjqt,'" glfontextent >',(IFWIN#'+'),' i *c') cd <@,)
gllines=: chkgl2 @: (('"',libjqt,'" gllines >',(IFWIN#'+'),' i *i i') cd (;#))
glnodblbuf=: chkgl2 @: (('"',libjqt,'" glnodblbuf >',(IFWIN#'+'),' i i') cd {.@(,&0))
glpen=: chkgl2 @: (('"',libjqt,'" glpen >',(IFWIN#'+'),' i *i') cd <@:(2 {. (,&1)))
glpie=: chkgl2 @: (('"',libjqt,'" glpie >',(IFWIN#'+'),' i *i') cd <)
glpixel=: chkgl2 @: (('"',libjqt,'" glpixel >',(IFWIN#'+'),' i *i') cd <)
glpixels=: chkgl2 @: (('"',libjqt,'" glpixels >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glpixelsx=: chkgl2 @: (('"',libjqt,'" glpixelsx >',(IFWIN#'+'),' i *i') cd <@:<.)
glpolygon=: chkgl2 @: (('"',libjqt,'" glpolygon >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glrect=: chkgl2 @: (('"',libjqt,'" glrect >',(IFWIN#'+'),' i *i') cd <@:rpcinfinity)
glrgb=: chkgl2 @: (('"',libjqt,'" glrgb >',(IFWIN#'+'),' i *i') cd <@:<.)
glrgba=: chkgl2 @: (('"',libjqt,'" glrgba >',(IFWIN#'+'),' i *i') cd <@:<.)
glsel1=: chkgl2 @: (('"',libjqt,'" glsel >',(IFWIN#'+'),' i x')&cd)
glsel2=: chkgl2 @: (('"',libjqt,'" glsel2 >',(IFWIN#'+'),' i *c') cd <@,)
gltext=: chkgl2 @: (('"',libjqt,'" gltext >',(IFWIN#'+'),' i *c') cd <@,)
gltextcolor=: chkgl2 @: (('"',libjqt,'" gltextcolor >',(IFWIN#'+'),' i')&cd bind '')
gltextxy=: chkgl2 @: (('"',libjqt,'" gltextxy >',(IFWIN#'+'),' i *i') cd <@:<.)
glwaitgl=: chkgl2 @: (('"',libjqt,'" glwaitgl >',(IFWIN#'+'),' i')&cd bind '')
glwaitnative=: chkgl2 @: (('"',libjqt,'" glwaitnative >',(IFWIN#'+'),' i')&cd bind '')
glwindoworg=: chkgl2 @: (('"',libjqt,'" glwindoworg >',(IFWIN#'+'),' i *i') cd <@:<.)

glsetlocale=: chkgl2 @: (('"',libjqt,'" glsetlocale >',(IFWIN#'+'),' i *c') cd <@,@>)

NB. =========================================================
NB. immediate paint
glpaint=: 3 : 0 "1
if. #stash_buf do. stash_buf=: 0$0 [ glcmds stash_buf end.
('"',libjqt,'" glpaint >',(IFWIN#'+'),' i')&cd ''
0
)

NB. =========================================================
NB. paint
glpaintx=: 3 : 0 "1
if. #stash_buf do. stash_buf=: 0$0 [ glcmds stash_buf end.
('"',libjqt,'" glpaintx >',(IFWIN#'+'),' i')&cd ''
0
)

NB. =========================================================
glqhandles=: 3 : 0"1
hs=. 3#2-2
chkgl2 ('"',libjqt,'" glqhandles >',(IFWIN#'+'),' i *x') cd <hs
hs
)

NB. =========================================================
glqtype=: 3 : 0"1
type=. 1#2-2
chkgl2 ('"',libjqt,'" glqtype >',(IFWIN#'+'),' i *i') cd <type
type
)

NB. =========================================================
glqwh=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glqwh >',(IFWIN#'+'),' i *i') cd <wh
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
chkgl2 ('"',libjqt,'" glqpixelm >',(IFWIN#'+'),' i *i *i *i') cd y;shape;pix
shape$pix
)

NB. =========================================================
NB. result is in opengl form
NB. pixels top to bottom, RGB24
NB. TODO
glqpixels=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
chkgl2 ('"',libjqt,'" glqpixels >',(IFWIN#'+'),' i *i *i') cd y;pix
pix
)

NB. =========================================================
NB. TODO
glqextent=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glqextent >',(IFWIN#'+'),' i *c *i') cd (,y);wh
wh
)

NB. =========================================================
NB. TODO
glqextentw=: 3 : 0"1
y=. y,(LF~:{:y)#LF [ y=. ,y
w=. (+/LF=y)#2-2
chkgl2 ('"',libjqt,'" glqextentw >',(IFWIN#'+'),' i *c *i') cd y;w
w
)

NB. =========================================================
NB. font information: Height, Ascent, Descent, InternalLeading, ExternalLeading, AverageCharWidth, MaxCharWidth
NB. TODO
glqtextmetrics=: 3 : 0"1
tm=. 7#2-2
chkgl2 ('"',libjqt,'" glqtextmetrics >',(IFWIN#'+'),' i *i') cd tm
tm
)

NB. =========================================================
glsetbrush=: glbrush @ glrgb
glsetpen=: glpen @ ((1 1 [ glrgb) :((2 {. (,&1)) glrgb))

NB. =========================================================
NB. printer

NB. not implemented
glprint=: [:
glprintmore=: [:
glqprintpaper=: [:
glqprintwh=: [:

NB. not implemented
glemfclose=: [:
glemfopen=: [:
glemfplay=: [:
glfile=: [:
glroundr=: [:

NB. =========================================================
glsel=: glsel1`glsel2@.(2=3!:0)


NB. record played by glpaint or automatically after paint event

NB. stash gl2 command for glcmds
stash_state=: 0
stash_buf=: 0$0

NB. is now recording ?
glqmark=: 3 : 0"1
stash_state
)

NB. start recording
glmark=: 3 : 0"1
stash_state=: 1
EMPTY
)

NB. discard buffer and stop recording and return buffer
gltrash=: 3 : 0"1
b [ stash_state=: 0 [ stash_buf=: 0$0 [ b=. stash_buf
)

NB. record gl2 cmds into buffer
glbuf=: 4 : 0"0 1
assert. 1=stash_state
if. (*#y) *. 2 = 3!:0 y do. y=. a. i. y end.
if. glcmds_n_jgl2_ = x do.
  stash_buf=: stash_buf, y
else.
  stash_buf=: stash_buf, (2+#y),x,<.y
end.
EMPTY
)
NB. util

NB. =========================================================
RGBA=: 3 : 'r (23 b.) 8 (33 b.) g (23 b.) 8 (33 b.) b (23 b.) 8 (33 b.) a [ ''r g b a''=. <.y'
BGRA=: 3 : 'b (23 b.) 8 (33 b.) g (23 b.) 8 (33 b.) r (23 b.) 8 (33 b.) a [ ''r g b a''=. <.y'

NB. =========================================================
NB. pafc v Polar angle from cartesian coords
pafc=: 2p1&|@{:@:(*.@(j./))

rfd=: *&(1p1%180)
dfr=: *&(180%1p1)

NB. calcAngle gives polar angle in radians with zero at 3-o'clock
NB. from rectangular coordiates with origin (0,0) at the top, left
NB. (xctr,yctr) calcAngle xpt,ypt
calcAngle=: ([: pafc _1 1 * -)"1

NB. =========================================================
NB. convert radians to 64ths-of-a-degree
degree64=: 0.5 <.@:+ 64 * dfr

NB. =========================================================
NB. opengl (and normal folk?) are ARGB with A 0
NB. glpixels and glqpixels need to make these adjustments
3 : 0''
if. IF64 do.
  ALPHA=: 0{_3 ic 0 0 0 255 255 255 255 255{a.
else.
  ALPHA=: 0{_2 ic 0 0 0 255{a.
end.
''
)
NOTALPHA=: 0{_2 ic 255 255 255 0{a.
ALPHARGB=: IF64{::_1;16bffffffff

NB. =========================================================
NB. arc drawing - glellipse, glarc, glpie
NB. draw arc on the ellipse defined by rectangle
NB. arc starts at xa,ya and ends at xz,yz (counterclockwise)
NB. points need not lie on the ellipse
NB. they define a line from the center that intersects ellipse
NB. gdk arc has same xywh but args are start and end angles
NB. counterclockwise in 64th degrees

NB. =========================================================
parseFontname=: 3 : 0
font=. ' ',y
b=. (font=' ') > ~:/\font='"'
a: -.~ b <@(-.&'"');._1 font
)

NB.*FontStyle n Regular Bold Italic Underline Strikeout
NB.             0       1    2      4         8
FontStyle=: ;:'regular bold italic underline strikeout'

parseFontSpec=: 3 : 0
'ns styleangle'=. 2 split parseFontname y
'face size'=. ns
size=. 12". size
style=. FontStyle i. tolower each styleangle
style=. <.+/2^<:(style ((> 0) *. <) #FontStyle) # style
if. 1 e. an=. ('angle'-:5&{.)&> styleangle do.
  degree=. 10%~ 0". 5}.>(an i. 1){styleangle
else.
  degree=. 0
end.
face;size;style;degree
)

NB. delete leading white spaces
dlws=: 3 : 0
y }.~ +/ *./\ (y e. ' ')+.(y e. LF)+.(y e. TAB)
)

NB. count leading white spaces
clws=: 3 : 0
+/ *./\ (y e. ' ')+.(y e. LF)+.(y e. TAB)
)

NB. get first argument and remove enclosing dquotes or DEL
NB. update global noun wdglptr on exit
wdglshiftarg=: 3 : 0
if. (#wdglstr) = wdglptr=: wdglptr + clws wdglptr}. wdglstr do. '' return. end.
y=. wdglptr}.wdglstr
b=. y e. ' '
a=. y e. '*'
q=. 2| +/\ y e. '"'
d=. 2| +/\ y e. DEL
b=. b *. -.q+.d
a=. a *. -.q+.d
if. 1={.a do.     NB. *argument
  z=. }.y
  wdglptr=: #wdglstr
elseif. (1={.d)+.(1={.q) do.   NB. enclosed between DEL or "
  p2=. 1+ (}.y) i. {.y
  z=. }.p2{.y
  wdglptr=: wdglptr+ p2+1
elseif. 1 e. b do. NB. space delimited
  p2=. {.I.b
  z=. p2{.y
  wdglptr=: wdglptr+ 1+p2
elseif. do.
  z=. y
  wdglptr=: #wdglstr
end.
<z
)

NB. get all arguments by repeating calling wdglshiftarg
wdglshiftargs=: 3 : 0
wdglptr=: 0 [ wdglstr=: y
z=. 0$<''
while. wdglptr < #wdglstr do. z=. z, wdglshiftarg'' end.
z
)

tors=: 3 : 0
(2{.y),(2{.y)+2}.y
)
NB. supports the isigraph control
NB.
NB. method:
NB.   gopen''      opens a graphics window
NB.   g...         fns to generate graphics
NB.   gshow''      show graphics
NB.
NB. points are plotted to pixels in a box with coordinates (0,0) at top left
NB.
NB. points should be given as a 2 element vector or 2 column matrix
NB. colors should be given as 3 numbers in range (0,255) for RGB,
NB. or as a single RGB number.
NB.
NB. see also isigutil.ijs for various supporting utilities.

NB. main functions:
NB. gbrush      set brush color
NB. gclear      clear graphics window (non-empty y is color)
NB. gfit        fit data to graphics window
NB. gopen       open graphics window
NB. glines      display lines
NB. gpolygon    display polygon given vertices
NB. gpen        set pen color and style
NB. gscale      scale from range (_1,1) to (0,1000)
NB. gshow       show graph
NB.

NB. =========================================================
NB.*gbrush v set brush color
gbrush=: glbrush_jgl2_ @: grgb

NB. =========================================================
NB.*gclear v clear graphics window
gclear=: 3 : 0
glclear_jgl2_''
if. #y do.
  gbrush y
  glrect_jgl2_ 0 0 1000 1000
end.
)

NB. =========================================================
NB.*gfit v fit data to graphics window
NB.
NB. scales each column of data independently to range (0,1000)
gfit=: 3 : 0
min=. <./y
max=. >./y
(y-"1 min)*"1 [ 1000%max-min
)

NB. =========================================================
NB.*glines v display line connecting points
NB.
NB. {color;width;style} glines points
NB.
NB. points should be a 2 column matrix of xy values
glines=: 3 : 0
gllines_jgl2_ y
:
glpen_jgl2_ x
gllines_jgl2_ y
)

NB. =========================================================
NB.*gopen v open graphics window
NB. y = controlname;parentname
NB.    if either empty, default to 'isigraph'
NB. e.g   gopen ''
NB.       gopen '';'J Graphics'
gopen=: 3 : 0
y=. 2{.}.0;y
'c n'=. (<'isigraph') (I. y=<'') }y
if. (<c) e. <;._2 wd 'qp;' do.
  wd 'psel ',c
  glclear_jgl2_''
else.
  wd 'pc ',c,' closeok;pn *',n
  wd 'xywh 0 0 150 150;cc g0 isigraph rightmove bottommove'
  wd 'pas 0 0;pcenter'
  fx=. 0 ". wd 'qformx'
  wd 'pmove 150 5 ',": 2 }. fx
  wd 'pshow;'
end.
)

NB. =========================================================
NB.*gpen v set pen color [;width,style]
NB. (default 1,0}
NB.
gpen=: 3 : 0
y=. boxopen y
'c ws'=. 2{. y,(#y)}.0 0 0;1 0
glpen_jgl2_ ws
grgb c
)

NB. =========================================================
NB.*gpolygon v draw polygon given points
NB. {color} gpolygon points
gpolygon=: 3 : 0
glpolygon_jgl2_ y
:
glbrush_jgl2_ grgb x
glpolygon_jgl2_ y
)

NB. =========================================================
NB.*grgb v set color values
grgb=: 3 : 0
clr=. y
if. 1=#clr do. clr=. |. 256 256 256 #: {.clr end.
glrgb_jgl2_ clr
)

NB. =========================================================
NB.*gscale v scale from (-1,1) to (0,1000)
gscale=: 500&* @ >:

NB. =========================================================
NB.*gshow v {parent} gshow graph
gshow=: 3 : 0
'isigraph' gshow y
:
wd 'psel ',x,';'
glpaint_jgl2_''
)
NB. isigraph utilities
NB.
NB. points are a 2 element vector or 2 column matrix of x,y coordinates
NB. from (-1,-1) at bottom left, to (1,1) at top right.
NB.
NB. cile         x cile values of y
NB. fit01        fit values into range 0 1
NB. fit11        fit values into range _1 1
NB. fitrect01    fit rect values into range 0 1
NB. fitrect11    fit rect values into range _1 1
NB. grayscale    grayscale with values from 0 to 1
NB. hue          colors with values from 0 to 1
NB. hueRGB       variant of hue specifically for RGB colors
NB. polygon      vertices of regular polygon
NB. rotate       rotate points by angle
NB.
NB. HUES         standard color set

HUES=: 255*|."1#:7|3^i.7      NB. standard color set

NB. =========================================================
NB.*cile v x cile values of y
NB. example:
NB.    3 cile i.12
cile=: $@] $ ((* <.@:% #@]) /:@/:@,)

NB.*grayscale v generate grayscale
NB. example:
NB.   grayscale (i.%<:) 5
grayscale=: 3&#"0 @ >.@ (255&*)

NB. =========================================================
NB.*fit01 v fit data to range 0 1
NB. form: [anisotropic] fit data
NB.
NB. if left argument is 1, scales columns independently,
NB. otherwise applies same factors to all data,
fit01=: 3 : 0
0 fit01 y
:
dat=. y
s=. $dat
if. x=0 do. dat=. ,dat end.
min=. <./dat
max=. >./dat
s $ ,(dat -"1 min) %"1 max-min
)

NB. =========================================================
NB.*fit11 v fit data to range _1 1
fit11=: <: @: +: @: fit01

NB. =========================================================
NB.*fitrect01 v fit rectangle data to 0 1
NB. form: [anisotropic] fitrect01 data
NB.
NB. if left argument is 1, applies same factors to both columns
NB. otherwise, scales columns independently.
fitrect01=: 0&$: : (4 : 0)
s=. $y
'x y w h'=. |: _4[\ ,y
rx=. #x
d=. x fit01 (x,x+w) ,. y,y+h
'x xw'=. (2,rx)${."1 d
'y yh'=. (2,rx)${:"1 d
s $ , x,.y,.(xw-x),.yh-y
)

NB. =========================================================
NB.*fitrect11 v fit rectangle data to _1 1
fitrect11=: 3 : 0
s=. $y
'x y w h'=. |: _4[\ ,y
rx=. #x
d=. <: +: x fit01 (x,x+w) ,. y,y+h
'x xw'=. (2,rx)${."1 d
'y yh'=. (2,rx)${:"1 d
s $ , x,.y,.(xw-x),.yh-y
)

NB. ========================================================
NB.*hue v generate color from color set
NB. x is color set
NB. y is values from 0 to 1, selecting color
hue=: 4 : 0
y=. y*<:#x
b=. x {~ <.y
t=. x {~ >.y
k=. y-<.y
(t*k)+b*-.k
)

NB. ========================================================
NB.*hueRGB v generate color from RGB color se
NB. x is RGB color set (default HUES)
NB. y is values from 0 to 1, selecting color
hueRGB=: (HUES&$:) : (4 : 0)
<. 0.5 + x hue y
)

NB. ========================================================
NB.*polygon v vertices of a regular polygon
NB. y = number of points
NB. x = scale factor on angle 2p1%y  (default 1)
NB.
NB. e.g.   polygon 5 = pentagon
NB.      2 polygon 5 = 5 pointed star
polygon=: 1&$: : (4 : '|: clean 2 1 o./ (2p1*x%y)*i.>:y')

NB. ========================================================
NB.*rotate v rotate angle by given amount
NB.
NB. e.g. 0.5p1 rotate points = rotate clockwise a quarter turn
rotate=: 4 : 0
rot=. 2 2$1 1 _1 1*0 1 1 0{2 1 o. x
rot +/ . * "2 1 y
)
