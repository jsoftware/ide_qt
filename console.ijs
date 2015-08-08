coclass 'jglc'

NB. gl2 on jconsole
NB. no events

rpcinfinity=: 3 : 0
<. 0 (I.(_=y)+.__=y)}y
)

chkgl2=: 13!:8@3:^:(0&<)

NB. =========================================================
glc_arc=: chkgl2 @: (('"',libjqt,'" glc_arc >',(IFWIN#'+'),' i *i') cd <)
glc_brush=: chkgl2 @: (('"',libjqt,'" glc_brush >',(IFWIN#'+'),' i')&cd bind '')
glc_brushnull=: chkgl2 @: (('"',libjqt,'" glc_brushnull >',(IFWIN#'+'),' i')&cd bind '')
glc_capture=: chkgl2 @: (('"',libjqt,'" glc_capture >',(IFWIN#'+'),' i i')&cd)
glc_caret=: chkgl2 @: (('"',libjqt,'" glc_caret >',(IFWIN#'+'),' i *i') cd <)
glc_clear=: ('"',libjqt,'" glc_clear >',(IFWIN#'+'),' i')&cd bind ''
glc_clip=: chkgl2 @: (('"',libjqt,'" glc_clip >',(IFWIN#'+'),' i *i') cd <)
glc_clipreset=: chkgl2 @: (('"',libjqt,'" glc_clipreset >',(IFWIN#'+'),' i')&cd bind '')
glc_cmds=: chkgl2 @: (('"',libjqt,'" glc_cmds >',(IFWIN#'+'),' i *i i') cd (;#)@:rpcinfinity)
glc_cursor=: chkgl2 @: (('"',libjqt,'" glc_cursor >',(IFWIN#'+'),' i i')&cd)
glc_ellipse=: chkgl2 @: (('"',libjqt,'" glc_ellipse >',(IFWIN#'+'),' i *i') cd <@:<.)
glc_fill=: chkgl2 @: (('"',libjqt,'" glc_fill >',(IFWIN#'+'),' i *i') cd <@:<.)
glc_font=: chkgl2 @: (('"',libjqt,'" glc_font >',(IFWIN#'+'),' i *c') cd <@,)
glc_font2=: chkgl2 @: (('"',libjqt,'" glc_font2 >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glc_fontangle=: chkgl2 @: (('"',libjqt,'" glc_fontangle >',(IFWIN#'+'),' i i')&cd)
glc_fontextent=: chkgl2 @: (('"',libjqt,'" glc_fontextent >',(IFWIN#'+'),' i *c') cd <@,)
glc_lines=: chkgl2 @: (('"',libjqt,'" glc_lines >',(IFWIN#'+'),' i *i i') cd (;#))
glc_nodblbuf=: chkgl2 @: (('"',libjqt,'" glc_nodblbuf >',(IFWIN#'+'),' i i') cd {.@(,&0))
glc_pen=: chkgl2 @: (('"',libjqt,'" glc_pen >',(IFWIN#'+'),' i *i') cd <@:(2 {. (,&1)))
glc_pie=: chkgl2 @: (('"',libjqt,'" glc_pie >',(IFWIN#'+'),' i *i') cd <)
glc_pixel=: chkgl2 @: (('"',libjqt,'" glc_pixel >',(IFWIN#'+'),' i *i') cd <)
glc_pixels=: chkgl2 @: (('"',libjqt,'" glc_pixels >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glc_pixelsx=: chkgl2 @: (('"',libjqt,'" glc_pixelsx >',(IFWIN#'+'),' i *i') cd <@:<.)
glc_polygon=: chkgl2 @: (('"',libjqt,'" glc_polygon >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glc_rect=: chkgl2 @: (('"',libjqt,'" glc_rect >',(IFWIN#'+'),' i *i') cd <@:rpcinfinity)
glc_rgb=: chkgl2 @: (('"',libjqt,'" glc_rgb >',(IFWIN#'+'),' i *i') cd <@:<.)
glc_rgba=: chkgl2 @: (('"',libjqt,'" glc_rgba >',(IFWIN#'+'),' i *i') cd <@:<.)
NB. glc_sel=: chkgl2 @: (('"',libjqt,'" glc_sel >',(IFWIN#'+'),' i x')&cd)
NB. glc_sel2=: chkgl2 @: (('"',libjqt,'" glc_sel2 >',(IFWIN#'+'),' i *c') cd <@,)
glc_text=: chkgl2 @: (('"',libjqt,'" glc_text >',(IFWIN#'+'),' i *c') cd <@,)
glc_textcolor=: chkgl2 @: (('"',libjqt,'" glc_textcolor >',(IFWIN#'+'),' i')&cd bind '')
glc_textxy=: chkgl2 @: (('"',libjqt,'" glc_textxy >',(IFWIN#'+'),' i *i') cd <@:<.)
glc_windoworg=: chkgl2 @: (('"',libjqt,'" glc_windoworg >',(IFWIN#'+'),' i *i') cd <@:<.)

glc_init=: chkgl2 @: (('"',libjqt,'" glc_init >',(IFWIN#'+'),' i *i') cd <@:(2&{.))
glc_free=: chkgl2 @: (('"',libjqt,'" glc_free >',(IFWIN#'+'),' i')&cd bind '')
glc_savefile=: chkgl2 @: (('"',libjqt,'" glc_savefile >',(IFWIN#'+'),' i *c') cd <@,)

NB. =========================================================
glc_qwh=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glc_qwh >',(IFWIN#'+'),' i *i') cd <wh
wh
)

NB. =========================================================
NB. return matrix of pixels
NB. wh is limited to pixmap size
NB. -1 in w or h means read to end
glc_qpixelm=: 3 : 0"1
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
glc_qpixels=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
chkgl2 ('"',libjqt,'" glc_qpixels >',(IFWIN#'+'),' i *i *i') cd y;pix
pix
)

NB. =========================================================
NB. TODO
glc_qextent=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glc_qextent >',(IFWIN#'+'),' i *c *i') cd (,y);wh
wh
)

NB. =========================================================
NB. TODO
glc_qextentw=: 3 : 0"1
y=. y,(LF~:{:y)#LF [ y=. ,y
w=. (+/LF=y)#2-2
chkgl2 ('"',libjqt,'" glc_qextentw >',(IFWIN#'+'),' i *c *i') cd y;w
w
)

NB. =========================================================
NB. font information: Height, Ascent, Descent, InternalLeading, ExternalLeading, AverageCharWidth, MaxCharWidth
NB. TODO
glc_qtextmetrics=: 3 : 0"1
tm=. 7#2-2
chkgl2 ('"',libjqt,'" glc_qtextmetrics >',(IFWIN#'+'),' i *i') cd tm
tm
)

NB. =========================================================
glc_setbrush=: glc_brush @ glc_rgb
glc_setpen=: glc_pen @ ((1 1 [ glc_rgb) :((2 {. (,&1)) glc_rgb))
NB. gl2 cover names

glarc_jglc_=: glc_arc_jglc_
glbrush_jglc_=: glc_brush_jglc_
glbrushnull_jglc_=: glc_brushnull_jglc_
glcapture_jglc_=: glc_capture_jglc_
glcaret_jglc_=: glc_caret_jglc_
glclear_jglc_=: glc_clear_jglc_
glclear2_jglc_=: glc_clear2_jglc_
glclip_jglc_=: glc_clip_jglc_
glclipreset_jglc_=: glc_clipreset_jglc_
glcmds_jglc_=: glc_cmds_jglc_
glcursor_jglc_=: glc_cursor_jglc_
glellipse_jglc_=: glc_ellipse_jglc_
glfill_jglc_=: glc_fill_jglc_
glfont_jglc_=: glc_font_jglc_
glfont2_jglc_=: glc_font2_jglc_
glfontangle_jglc_=: glc_fontangle_jglc_
glfontextent_jglc_=: glc_fontextent_jglc_
gllines_jglc_=: glc_lines_jglc_
glnodblbuf_jglc_=: glc_nodblbuf_jglc_
glpaint_jglc_=: glc_paint_jglc_
glpaintx_jglc_=: glc_paintx_jglc_
glpen_jglc_=: glc_pen_jglc_
glpie_jglc_=: glc_pie_jglc_
glpixel_jglc_=: glc_pixel_jglc_
glpixels_jglc_=: glc_pixels_jglc_
glpixelsx_jglc_=: glc_pixelsx_jglc_
glpolygon_jglc_=: glc_polygon_jglc_
glqextent_jglc_=: glc_qextent_jglc_
glqextentw_jglc_=: glc_qextentw_jglc_
glqhandles_jglc_=: glc_qhandles_jglc_
glqpixels_jglc_=: glc_qpixels_jglc_
glqpixelm_jglc_=: glc_qpixelm_jglc_
glqtextmetrics_jglc_=: glc_qtextmetrics_jglc_
glqwh_jglc_=: glc_qwh_jglc_
glrect_jglc_=: glc_rect_jglc_
glrgb_jglc_=: glc_rgb_jglc_
glrgba_jglc_=: glc_rgba_jglc_
NB. glsel_jglc_=: glc_sel_jglc_
NB. glsel2_jglc_=: glc_sel2_jglc_
NB. glsetlocale_jglc_=: glc_setlocale_jglc_
gltext_jglc_=: glc_text_jglc_
gltextcolor_jglc_=: glc_textcolor_jglc_
gltextxy_jglc_=: glc_textxy_jglc_
glwindoworg_jglc_=: glc_windoworg_jglc_

glinit_jglc_=: glc_init_jglc_
glfree_jglc_=: glc_free_jglc_
glsavefile_jglc_=: glc_savefile_jglc_
