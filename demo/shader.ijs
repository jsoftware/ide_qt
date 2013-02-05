require 'api/gles'
coinsert 'jgles'

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
if. #err do. assert. 0[smoutput err end.
'err fshader'=. GL_FRAGMENT_SHADER gl_makeshader fsrc
if. #err do. assert. 0[smoutput err end.
'err program'=. gl_makeprogram vshader,fshader
if. #err do. assert. 0[smoutput err end.
glDeleteShader"0 vshader,fshader
sprog=: program

vertexAttr=: glGetAttribLocation program;'vertex'
assert. 0 <: vertexAttr

glClearColor 0; 0; 1; 0

)

a_g_paint=: 3 : 0
wh=. gl_qwh''
glClearColor 0 0 0.5 0
glClear GL_COLOR_BUFFER_BIT + GL_DEPTH_BUFFER_BIT

if. 0=sprog do. return. end.
glUseProgram sprog

glGenBuffers 1; vbo=. ,_1
glBindBuffer GL_ARRAY_BUFFER; {.vbo
glBufferData GL_ARRAY_BUFFER; (#vertexData); (symdat <'vertexData'); GL_STATIC_DRAW

glEnableVertexAttribArray vertexAttr
glVertexAttribPointer vertexAttr; 3; GL_FLOAT; 0; 0; 0

glDrawArrays GL_TRIANGLES; 0; 6

glDisableVertexAttribArray vertexAttr
glBindBuffer GL_ARRAY_BUFFER; 0

glUseProgram 0

)

vsrc=: 0 : 0
attribute vec4 vertex;
void main(void)
{
  gl_Position = vertex;
}
)

fsrc=: 0 : 0
void main(void)
{
  gl_FragColor = vec4(0.0, 1.0, 1.0, 1.0);
}
)

vertexData=: 1&fc 0.5 0.5 0.5 0.5 _0.5 0.5 _0.5 0.5 0.5 _0.5 _0.5 0.5 _0.5 0.5 0.5 0.5 _0.5 0.5 * ?18#0

a_close=: 3 : 0
wd 'pclose'
)

a_cancel=: a_close

a_run''
