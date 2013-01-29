NB. opengl
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the opengl

require 'gl3'
coinsert 'jgl3'

NB. =========================================================
opengl=: 3 : 0
wd 'pc opengl'
wd 'cc g opengl'
wd 'pmovex 100 10 600 250'
wd 'pshow'
)

NB. =========================================================
opengl_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
opengl_g_paint=: 3 : 0
glClearColor 1;0.5;0;1
glClear GL_COLOR_BUFFER_BIT (23 b.) GL_DEPTH_BUFFER_BIT
glEnable GL_DEPTH_TEST
glDisable GL_DEPTH_TEST
)

NB. =========================================================
opengl''
