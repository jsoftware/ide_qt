NB. websocket client
NB.

cocurrent 'z'

'JWS_ONOPEN JWS_ONCLOSE JWS_ONMESSAGE JWS_ONERROR JWS_ONSTATECHANGE'=: i.5

wscln_handler=: 3 : 0
'evt sk'=. y
if. evt = JWS_ONMESSAGE do.
  wd 'set m *', wsc0_jrx_
end.
EMPTY
)

coclass 'qtdemo'

wsserver=: ''

NB. =========================================================
websocketclient=: 3 : 0
wd 'pc websocketclient'
wd 'bin h'
wd 'cc ipaddr edit'
wd 'cc connect button'
wd 'cc disconnect button'
wd 'bin z'
wd 'cc e edit'
wd 'cc send button'
wd 'cc clear button'
wd 'bin z'
wd 'cc m editm readonly'
wd 'pshow'
wd 'set e text *ws://echo.websock.org/'
)

NB. =========================================================
websocketclient_connect_button=: 3 : 0
wsserver=: wd 'wsc *', ipaddr
)

websocketclient_disconnect_button=: 3 : 0
wd 'wscdis *', wsserver
)
websocketclient_clear_button=: 3 : 0
wd 'set m*'
)

websocketclient_send_button=: 3 : 0
wd 'wscw *', e
)

websocketclient_e_button=: websocketclient_send_button

NB. =========================================================
websocketclient_close=: 3 : 0
wd ::0: 'wscd *', wsserver
wd 'pclose'
)

NB. =========================================================
websocketclient''
