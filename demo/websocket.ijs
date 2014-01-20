NB. websocket
NB.
cocurrent 'z'

'WS_NEWCONNECTION WS_DISCONNECTED WS_FRAMERECEIVED WS_PONG WS_SSLERRORS'=: i.5

websocket_handler=: 3 : 0
'evt sk'=. y
if. evt = WS_NEWCONNECTION do.
  smoutput 'connected ',":sk
elseif. evt = WS_DISCONNECTED do.
  smoutput 'disconnected ',":sk
  ws0_jrx_=: |.ws0_jrx_
elseif. evt = WS_FRAMERECEIVED do.
  ws0_jrx_=: |.ws0_jrx_
end.
EMPTY
)

coclass 'qtdemo'

NB. =========================================================
smoutput 0 : 0
use browser to open http://www.websocket.org/echo.html

enter ws://localhost:3000 in the "Location" box
push the "Connect" button, then the "Send" button

also try type in J Term
  wd 'wsw 0 hello'

push the "Disconnect" button when finished
)

wd 'wss 3000'
