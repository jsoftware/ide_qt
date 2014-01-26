NB. websocket
NB.
cocurrent 'z'

coclass 'qtdemo'

wssvr_handler=: 3 : 0
'evt sk'=. y
if. evt = jws_onMessage do.
  r=. 0 ". wd 'ws send ',(":sk),' *', , LF&, "1 ": ".wss0_jrx_
  assert. _1 ~: r
elseif. evt = jws_onOpen do.
  smoutput 'connected'
elseif. evt = jws_onClose do.
  smoutput 'disconnected'
elseif. evt = jws_onError do.
  smoutput wss0_jrx_
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

NB. start websocket server
wd 'ws listen 3000'

browse_j_ file2url jpath '~addons/ide/qt/demo/websocket.htm'
