NB. webengine
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the QWebEngine
NB. cmd so far:
NB.  set c url url
NB.  set c baseurl url
NB.  set c html text

coclass 'qtdemo'

NB. =========================================================
webengine=: 3 : 0
wd 'pc webengine'
wd 'cc e edit'
wd 'splitv 1 1 250 250'
wd 'cc w1 webengine'
wd 'splitsep'
wd 'cc w2 webengine'
wd 'splitend'
wd 'set e text *http://news.yahoo.com'
wd 'set w1 url *http://news.yahoo.com'
wd 'set w2 baseurl *http://www.jsoftware.com'
wd 'set w2 html *<html><body><img src=''./zippy.gif'' /></body></html>'
wd 'pshow'
)

NB. =========================================================
webengine_e_button=: 3 : 0
smoutput e
wd 'set w1 url *',e
)

NB. =========================================================
webengine_w1_curl=: 3 : 0
wd 'set e text *',w1_curl
)

NB. =========================================================
webengine_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
webengine''
