require 'api/gles'
coinsert 'jgles'

ntri=: 20   NB. num of triangles
sprog=: 0

A=: 0 : 0
pc a;
wh 300 300;cc g opengl;
rem form end;
)

a_run=: 3 : 0
wd A
wd 'pshow'
)

a_g_initialize=: 3 : 0
smoutput memr 0 _1 2,~ glGetString GL_VERSION
wglARB''
sprog=: 0
'err vshader'=. GL_VERTEX_SHADER gl_makeshader vsrc
if. #err do. smoutput err,LF2,vsrc return. end.
'err fshader'=. GL_FRAGMENT_SHADER gl_makeshader fsrc
if. #err do. smoutput err,LF2,fsrc return. end.
'err program'=. gl_makeprogram vshader,fshader
if. #err do. smoutput err return. end.
glDeleteShader"0 vshader,fshader

vertexAttr=: glGetAttribLocation program;'vertex'
assert. 0 <: vertexAttr
colorAttr=: glGetAttribLocation program;'color'
assert. 0 <: colorAttr

sprog=: program

glClearColor 0; 0; 1; 0

)

a_g_paint=: 3 : 0
if. 0=sprog do. return. end.

wh=. gl_qwh''
glClearColor 1 1 1 0
glClear GL_COLOR_BUFFER_BIT + GL_DEPTH_BUFFER_BIT

glUseProgram sprog

glEnableVertexAttribArray vertexAttr
glEnableVertexAttribArray colorAttr

NB. 3 vertices per triangle, 3 coordinates per vertex
vertexData=: 1&fc 2 * _0.5 + ?(9*ntri)#0
NB. vec4 for each vertex
colorData=: 1&fc , 0,.~ _3]\ ?(9*ntri)#0

glVertexAttribPointer vertexAttr; 3; GL_FLOAT; 0; 0; (symdat <'vertexData')
glVertexAttribPointer colorAttr; 4; GL_FLOAT; 0; 0; (symdat <'colorData')

glDrawArrays GL_TRIANGLES; 0; 3*ntri

glDisableVertexAttribArray colorAttr
glDisableVertexAttribArray vertexAttr

glUseProgram 0

)

a_cancel=: a_close

a_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
vsrc=: 0 : 0
attribute vec4 vertex;
attribute vec4 color;
varying vec4 v_color;
void main(void)
{
  gl_Position = vertex;
  v_color = color;
}
)

fsrc=: 0 : 0
varying vec4 v_color;
void main(void)
{
  gl_FragColor = v_color;
}
)

NB. =========================================================
a_run''
