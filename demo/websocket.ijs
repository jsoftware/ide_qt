NB. websocket
NB.
cocurrent 'z'

coclass 'qtdemo'

wssvr_handler=: 3 : 0
'evt sk'=. y
if. evt = JWS_ONMESSAGE do.
  r=. 0 ". wd 'ws send ',(":sk),' *', , LF&, "1 ": ".wss0_jrx_
  assert. _1 ~: r
end.
EMPTY
)

wssvr_handler_z_=: wssvr_handler_qtdemo_

NB. =========================================================
smoutput 0 : 0
also try type in J Term
  wd 'ws send 0 hello'
  wd 'ws send 1 "i.2 2"'
)

NB. in case file2url is not yet defined in base library
file2url=: 3 : 0
y=. (' ';'%20';'\';'/') stringreplace y -. '"'
if. IFWIN do.
  if. ':'~:{:2{.y do. ((' ';'%20';'\';'/') stringreplace 1!:43''),'/',y end.
  'file:///', y
else.
  if. '/'~:{.y do. ((' ';'%20') stringreplace 1!:43''),'/',y end.
  'file://', y
end.
)

NB. start websocket server
wd 'ws listen 3000'

browse_j_ file2url jpath '~addons/ide/qt/demo/websocket.htm'
