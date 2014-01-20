NB. websocket
NB.
cocurrent 'z'

'JWS_ONOPEN JWS_ONCLOSE JWS_ONMESSAGE JWS_ONERROR'=: i.4

websocket_handler=: 3 : 0
'evt sk'=. y
if. evt = JWS_ONMESSAGE do.
  ws0_jrx_=: , LF&, "1 ": ".ws0_jrx_
end.
EMPTY
)

coclass 'qtdemo'

NB. =========================================================
smoutput 0 : 0
also try type in J Term
  wd 'wsw 0 hello'
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
wd 'wss 3000'

browse_j_ file2url jpath '~addons/ide/qt/demo/websocket.htm'
