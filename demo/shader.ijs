require 'api/gles'
coinsert 'jgles'

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
if. p=. glGetString GL_VERSION do. smoutput 'GL_VERSION: ', memr 0 _1 2,~ p end.
if. p=. glGetString GL_SHADING_LANGUAGE_VERSION do. smoutput 'GL_SHADING_LANGUAGE_VERSION: ', memr 0 _1 2,~ p end.
wglPROC''
sprog=: 0
'err program'=. gl_makeprogram vsrc;fsrc
if. #err do. smoutput err return. end.

vertexAttr=: glGetAttribLocation program;'vertex'
assert. _1~: vertexAttr
colorAttr=: glGetAttribLocation program;'color'
assert. _1~: colorAttr
xfUni=: glGetUniformLocation program;'xf'
assert. _1~: xfUni

sprog=: program

glClearColor 0; 0; 1; 0

)

a_g_paint=: 3 : 0
if. 0=sprog do. return. end.

wh=. gl_qwh''
glClearColor 1 1 1 0
glClear GL_COLOR_BUFFER_BIT + GL_DEPTH_BUFFER_BIT

glUseProgram sprog

tx=. 0.5 0.5 0
angle=. 90

NB. matrix convention: current matrix on the left

NB. first translate then rotate
xf=: (gl_Translate tx) (+/ . *) gl_Rotate angle, 0 0 1
NB. or use dyad form
NB. xf=: (gl_Translate tx) gl_Rotate angle, 0 0 1

glGenBuffers 2;vbo=. 2#_1
glBindBuffer GL_ARRAY_BUFFER; {.vbo
glBufferData GL_ARRAY_BUFFER; (#vertexData); (<symdat <'vertexData'); GL_STATIC_DRAW
glBindBuffer GL_ARRAY_BUFFER; {:vbo
glBufferData GL_ARRAY_BUFFER; (#colorData); (<symdat <'colorData'); GL_STATIC_DRAW
glBindBuffer GL_ARRAY_BUFFER; 0

glUniformMatrix4fv xfUni; 1; GL_FALSE; xf

glBindBuffer GL_ARRAY_BUFFER; {.vbo
glEnableVertexAttribArray vertexAttr
glVertexAttribPointer vertexAttr; 3; GL_FLOAT; 0; 0; <<0

glBindBuffer GL_ARRAY_BUFFER; {:vbo
glEnableVertexAttribArray colorAttr
glVertexAttribPointer colorAttr; 3; GL_FLOAT; 0; 0; <<0

glDrawArrays GL_TRIANGLES; 0; 3

glBindBuffer GL_ARRAY_BUFFER; 0
glDisableVertexAttribArray colorAttr
glDisableVertexAttribArray vertexAttr

glUseProgram 0

)

a_cancel=: a_close

a_close=: 3 : 0
glDeleteProgram sprog
wd 'pclose'
)

vertexData=: 1&fc , 0&".@(-.&',') ;._2 [ 0 : 0
 0.0,  0.5, 0.0
-0.5, -0.5, 0.0
 0.5, -0.5, 0.0
)
 
NB. rgb for each vertex
colorData=: 1&fc ,  0&".@(-.&',') ;._2 [ 0 : 0
1 0 0
0 1 0
0 0 1
)

NB. =========================================================
vsrc=: 0 : 0
attribute highp vec3 vertex;
attribute lowp vec3 color;
varying lowp vec4 v_color;
uniform mat4 xf;
void main(void)
{
  gl_Position = xf * vec4(vertex,1.0);
  v_color = vec4(color,1.0);
}
)

fsrc=: 0 : 0
varying lowp vec4 v_color;
void main(void)
{
  gl_FragColor = v_color;
}
)

NB. =========================================================
a_run''
