NB. websocket client
NB.

cocurrent 'z'

'JWS_ONOPEN JWS_ONCLOSE JWS_ONMESSAGE JWS_ONERROR JWS_ONSTATECHANGE'=: i.5

coclass 'qtdemo'

wscln_handler=: 3 : 0
'evt sk'=. y
if. evt = JWS_ONMESSAGE do.
  wd 'psel ',hwndwsc
  wscbuffer=: wscbuffer, wsc0_jrx_
  wd 'set m text *', wscbuffer
end.
EMPTY
)

wsserver=: ''

NB. =========================================================
websocketclient=: 3 : 0
wd 'pc websocketclient'
wd 'bin vh'
wd 'cc ipaddr edit'
wd 'cc connect button'
wd 'cc disconnect button'
wd 'bin zh'
wd 'cc e edit'
wd 'cc send button'
wd 'cc clear button'
wd 'bin z'
wd 'cc m editm readonly'
wd 'bin z'
wd 'pshow'
hwndwsc=: wd 'qhwndp'
wscbuffer=: ''
wd 'set ipaddr text ws://echo.websocket.org 80'
wd 'set e text *hello world'
)

NB. =========================================================
websocketclient_connect_button=: 3 : 0
wd 'wscdis ', wsserver
wsserver=: ''
wsserver=: wd 'wsc *', ipaddr
)

websocketclient_disconnect_button=: 3 : 0
wd 'wscdis ', wsserver
wsserver=: ''
)
websocketclient_clear_button=: 3 : 0
wscbuffer=: ''
wd 'set m text *'
)

websocketclient_send_button=: 3 : 0
wd 'wscw ',wsserver, ' *',e
)

websocketclient_e_button=: websocketclient_send_button

NB. =========================================================
websocketclient_close=: 3 : 0
wd 'wscdis ', wsserver
wsserver=: ''
wd 'pclose'
)

wscln_handler_z_=: wscln_handler_qtdemo_

NB. =========================================================
websocketclient''
