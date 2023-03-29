NB. qt gl2

chkgl2=: 13!:8@3:^:(0&<)@>@{.

NB. =========================================================
glarc=: chkgl2 @: (('"',libjqt,'" glarc >',(IFWIN#'+'),' i *i') cd <) "1
glbrush=: chkgl2 @: (('"',libjqt,'" glbrush >',(IFWIN#'+'),' i')&cd bind '') "1
glbrushnull=: chkgl2 @: (('"',libjqt,'" glbrushnull >',(IFWIN#'+'),' i')&cd bind '') "1
glcapture=: chkgl2 @: (('"',libjqt,'" glcapture >',(IFWIN#'+'),' i i')&cd) "1
glcaret=: chkgl2 @: (('"',libjqt,'" glcaret >',(IFWIN#'+'),' i *i') cd <) "1
glclear=: (('"',libjqt,'" glclear >',(IFWIN#'+'),' i')&cd bind '') "1
glclip=: chkgl2 @: (('"',libjqt,'" glclip >',(IFWIN#'+'),' i *i') cd <) "1
glclipreset=: chkgl2 @: (('"',libjqt,'" glclipreset >',(IFWIN#'+'),' i')&cd bind '') "1
glcmds=: chkgl2 @: (('"',libjqt,'" glcmds >',(IFWIN#'+'),' i *i i') cd (;#)) "1
glcursor=: chkgl2 @: (('"',libjqt,'" glcursor >',(IFWIN#'+'),' i i')&cd) "1
glellipse=: chkgl2 @: (('"',libjqt,'" glellipse >',(IFWIN#'+'),' i *i') cd <@:<.) "1
glfill=: chkgl2 @: (('"',libjqt,'" glfill >',(IFWIN#'+'),' i *i') cd <@:<.) "1
glfont=: chkgl2 @: (('"',libjqt,'" glfont >',(IFWIN#'+'),' i *c') cd <@,) "1
glfont2=: chkgl2 @: (('"',libjqt,'" glfont2 >',(IFWIN#'+'),' i *i i') cd (;#)@:<.) "1
glfontangle=: chkgl2 @: (('"',libjqt,'" glfontangle >',(IFWIN#'+'),' i i')&cd) "1
glfontextent=: chkgl2 @: (('"',libjqt,'" glfontextent >',(IFWIN#'+'),' i *c') cd <@,) "1
gllines=: chkgl2 @: (('"',libjqt,'" gllines >',(IFWIN#'+'),' i *i i') cd (;#)) "1
glnodblbuf=: chkgl2 @: (('"',libjqt,'" glnodblbuf >',(IFWIN#'+'),' i i') cd {.@(,&0)) "1
glpen=: chkgl2 @: (('"',libjqt,'" glpen >',(IFWIN#'+'),' i *i') cd <@:(2 {. (,&1))) "1
glpie=: chkgl2 @: (('"',libjqt,'" glpie >',(IFWIN#'+'),' i *i') cd <) "1
glpixel=: chkgl2 @: (('"',libjqt,'" glpixel >',(IFWIN#'+'),' i *i') cd <) "1
glpixels=: chkgl2 @: (('"',libjqt,'" glpixels >',(IFWIN#'+'),' i *i i') cd (;#)@:<.) "1
glpixelsx=: chkgl2 @: (('"',libjqt,'" glpixelsx >',(IFWIN#'+'),' i *i') cd <@:<.) "1
glpolygon=: chkgl2 @: (('"',libjqt,'" glpolygon >',(IFWIN#'+'),' i *i i') cd (;#)@:<.) "1
glrect=: chkgl2 @: (('"',libjqt,'" glrect >',(IFWIN#'+'),' i *i') cd <) "1
glrgb=: chkgl2 @: (('"',libjqt,'" glrgb >',(IFWIN#'+'),' i *i') cd <@:<.) "1
glrgba=: chkgl2 @: (('"',libjqt,'" glrgba >',(IFWIN#'+'),' i *i') cd <@:<.) "1
glsel1=: chkgl2 @: (('"',libjqt,'" glsel >',(IFWIN#'+'),' i x')&cd) "1
glsel2=: chkgl2 @: (('"',libjqt,'" glsel2 >',(IFWIN#'+'),' i *c') cd <@,) "1
gltext=: chkgl2 @: (('"',libjqt,'" gltext >',(IFWIN#'+'),' i *c') cd <@,) "1
gltextcolor=: chkgl2 @: (('"',libjqt,'" gltextcolor >',(IFWIN#'+'),' i')&cd bind '') "1
gltextxy=: chkgl2 @: (('"',libjqt,'" gltextxy >',(IFWIN#'+'),' i *i') cd <@:<.) "1
glwaitgl=: chkgl2 @: (('"',libjqt,'" glwaitgl >',(IFWIN#'+'),' i')&cd bind '') "1
glwaitnative=: chkgl2 @: (('"',libjqt,'" glwaitnative >',(IFWIN#'+'),' i')&cd bind '') "1
glwindoworg=: chkgl2 @: (('"',libjqt,'" glwindoworg >',(IFWIN#'+'),' i *i') cd <@:<.) "1

glsetlocale=: chkgl2 @: (('"',libjqt,'" glsetlocale >',(IFWIN#'+'),' i *c') cd <@,@>) "1

NB. =========================================================
NB. immediate paint
glpaint=: 3 : 0 "1
('"',libjqt,'" glpaint >',(IFWIN#'+'),' i')&cd ''
0
)

NB. =========================================================
NB. paint
glpaintx=: 3 : 0 "1
('"',libjqt,'" glpaintx >',(IFWIN#'+'),' i')&cd ''
0
)

NB. =========================================================
glqhandles=: 3 : 0"1
hs=. 3#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqhandles  ',(IFWIN#'+'),' i *x') cd <hs
1{::cdrc
)

NB. =========================================================
glqtype=: 3 : 0"1
type=. 1#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqtype  ',(IFWIN#'+'),' i *i') cd <type
1{::cdrc
)

NB. =========================================================
glqwh=: 3 : 0"1
wh=. 2#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqwh  ',(IFWIN#'+'),' i *i') cd <wh
1{::cdrc
)

NB. =========================================================
NB. return matrix of pixels
NB. wh is limited to pixmap size
NB. -1 in w or h means read to end
glqpixelm=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
shape=. 2#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqpixelm  ',(IFWIN#'+'),' i *i *i *i') cd y;shape;pix
(2&{:: $ 3&{::) cdrc
)

NB. =========================================================
NB. result is in opengl form
NB. pixels top to bottom, RGB24
NB. TODO
glqpixels=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqpixels  ',(IFWIN#'+'),' i *i *i') cd y;pix
2{::cdrc
)

NB. =========================================================
NB. TODO
glqextent=: 3 : 0"1
wh=. 2#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqextent  ',(IFWIN#'+'),' i *c *i') cd (,y);wh
2{::cdrc
)

NB. =========================================================
NB. TODO
glqextentw=: 3 : 0"1
y=. y,(LF~:{:y)#LF [ y=. ,y
w=. (+/LF=y)#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqextentw  ',(IFWIN#'+'),' i *c *i') cd y;w
2{::cdrc
)

NB. =========================================================
NB. font information: Height, Ascent, Descent, InternalLeading, ExternalLeading, AverageCharWidth, MaxCharWidth
NB. TODO
glqtextmetrics=: 3 : 0"1
tm=. 7#2-2
chkgl2 cdrc=. ('"',libjqt,'" glqtextmetrics  ',(IFWIN#'+'),' i *i') cd <tm
1{::cdrc
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
glsel=: glsel2@:(":^:(2~:3!:0))

NB. =========================================================
3 : 0''
if. WDCB_jqtide_ do.
  chkgl2=: ]
  glarc=: 11 !: glarc_n
  glbrush=: 11 !: glbrush_n
  glbrushnull=: 11 !: glbrushnull_n
  glcapture=: 11 !: glcapture_n
  glcaret=: 11 !: glcaret_n
  glclear=: 11 !: glclear_n
  glclip=: 11 !: glclip_n
  glclipreset=: 11 !: glclipreset_n
  glcmds=: 11 !: glcmds_n
  glcursor=: 11 !: glcursor_n
  glellipse=: 11 !: glellipse_n
  glfill=: 11 !: glfill_n
  glfont=: 11 !: glfont_n
  glfont2=: 11 !: glfont2_n
  glfontangle=: 11 !: glfontangle_n
  glfontextent=: 11 !: glfontextent_n
  gllines=: 11 !: gllines_n
  glnodblbuf=: 11 !: glnodblbuf_n
  glpen=: 11 !: glpen_n
  glpie=: 11 !: glpie_n
  glpixel=: 11 !: glpixel_n
  glpixels=: 11 !: glpixels_n
  glpixelsx=: 11 !: glpixelsx_n
  glpolygon=: 11 !: glpolygon_n
  glrect=: 11 !: glrect_n
  glrgb=: 11 !: glrgb_n
  glrgba=: 11 !: glrgba_n
  gltext=: 11 !: gltext_n
  gltextcolor=: 11 !: gltextcolor_n
  gltextxy=: 11 !: gltextxy_n
NB.   glwaitgl=: 11 !: glwaitgl_n
NB.   glwaitnative=: 11 !: glwaitnative_n
  glwindoworg=: 11 !: glwindoworg_n
  glsetlocale=: 11 !: glsetlocale_n
  glpaint=: 11 !: glpaint_n
  glpaintx=: 11 !: glpaintx_n
  glqhandles=: 11 !: glqhandles_n
  glqtype=: 11 !: glqtype_n
  glqwh=: 11 !: glqwh_n
  glqpixelm=: 11 !: glqpixelm_n
  glqpixels=: 11 !: glqpixels_n
  glqextent=: 11 !: glqextent_n
  glqextentw=: 11 !: glqextentw_n
  glqtextmetrics=: 11 !: glqtextmetrics_n
  glsel=: (11 !: glsel_n)`(11 !: glsel2_n)@.(2=3!:0)
NB. image utility
  glgetimg=: 11 !: glgetimg_n
  glreadimg=: 11 !: glreadimg_n
  glputimg=: 11 !: glputimg_n
  glwriteimg=: 11 !: glwriteimg_n
end.
EMPTY
)
