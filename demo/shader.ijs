require 'gl3'
coinsert 'jgl3'

A=: 0 : 0
pc a;
xywh 0 0 150 150;cc g opengl;
rem form end;
)

a_run=: 3 : 0
wd A
SPHERE=: 2
wd 'pshow'
)


a_g_initialize=: 3 : 0
glClearColor 0; 0; 1; 0
sl=: glsl vsrc;fsrc
assert. _1~:sl
vertexAttr=: glsl_attributeLocation sl;'vertex'
assert. 0 <: vertexAttr
)

a_g_paint=: 3 : 0
wh=. gl_qwh''
glClearColor 0 0 0.5 0
glClear GL_COLOR_BUFFER_BIT + GL_DEPTH_BUFFER_BIT
r=. glsl_bind sl
assert. 0~:r
glsl_setAttributeArray sl;vertexAttr;(symdat <'vertexData');3;0
glsl_enableAttributeArray sl;vertexAttr
glDrawArrays GL_TRIANGLES; 0; 6
glsl_disableAttributeArray sl;vertexAttr
glsl_release sl
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
