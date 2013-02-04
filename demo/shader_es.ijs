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
wglARB''

shader=. glCreateShader GL_VERTEX_SHADER
glShaderSource shader; 1; (,symdat <'vsrc'); <<0
glCompileShader shader
glGetShaderiv shader; GL_COMPILE_STATUS; st=. ,_1
if. ({.st) = GL_FALSE do.
  glGetShaderiv shader; GL_INFO_LOG_LENGTH; ln=. ,_1
  strInfoLog=. (1+{.ln)#{.a.
  glGetShaderInfoLog shader; ({.ln); (<0); strInfoLog
  smoutput 'Compile failure in shader ', strInfoLog
  smoutput 'Linker failure ', strInfoLog
  assert. 0
end.
shader1=. shader

shader=. glCreateShader GL_FRAGMENT_SHADER
glShaderSource shader; 1; (,symdat <'fsrc'); <<0
glCompileShader shader
glGetShaderiv shader; GL_COMPILE_STATUS; st=. ,_1
if. ({.st) = GL_FALSE do.
  glGetShaderiv shader; GL_INFO_LOG_LENGTH; ln=. ,_1
  strInfoLog=. (1+{.ln)#{.a.
  glGetShaderInfoLog shader; ({.ln); (<0); strInfoLog
  smoutput 'Compile failure in shader ', strInfoLog
  smoutput 'Linker failure ', strInfoLog
  assert. 0
end.
shader2=. shader

program=. glCreateProgram''

glAttachShader program ; shader1
glAttachShader program ; shader2

glLinkProgram program

glGetProgramiv program; GL_LINK_STATUS; st=. ,_1
if. ({.st) = GL_FALSE do.
  glGetProgramiv program; GL_INFO_LOG_LENGTH; ln=. ,_1
  strInfoLog=. (1+{.ln)#{.a.
  glGetProgramInfoLog program; ({.ln); (<0); strInfoLog
  smoutput 'Linker failure ', strInfoLog
  assert. 0
end.
glDetachShader program ; shader1
glDetachShader program ; shader2
sprog=: program

vertexAttr=: glGetAttribLocation program;'vertex'
assert. 0 <: vertexAttr

glClearColor 0; 0; 1; 0

)

a_g_paint=: 3 : 0
wh=. gl_qwh''
glClearColor 0 0 0.5 0
glClear GL_COLOR_BUFFER_BIT + GL_DEPTH_BUFFER_BIT

glUseProgram sprog

glGenBuffers 1; vbo=. ,_1
glBindBuffer GL_ARRAY_BUFFER; {.vbo
glBufferData GL_ARRAY_BUFFER; (#vertexData); (symdat <'vertexData'); GL_STATIC_DRAW
glBindBuffer GL_ARRAY_BUFFER; 0

glBindBuffer GL_ARRAY_BUFFER; {.vbo
glEnableVertexAttribArray vertexAttr
glVertexAttribPointer vertexAttr; 3; GL_FLOAT; 0; 0; 0

glDrawArrays GL_TRIANGLES; 0; 6

glDisableVertexAttribArray vertexAttr

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
