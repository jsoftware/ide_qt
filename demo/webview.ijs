NB. webview
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the QWebView
NB. cmd so far:
NB.  set c url
NB.  setp c baseurl url
NB.  setp c html text

NB. =========================================================
webview=: 3 : 0
wd 'pc webview'
wd 'cc e edit'
wd 'splitv 1 1 250 250'
wd 'cc w1 webview'
wd 'splitsep'
wd 'cc w2 webview'
wd 'splitend'
wd 'pshow'
wd 'set e *http://www.yahoo.com'
wd 'set w1 *http://www.yahoo.com'
wd 'setp w2 baseurl *http://www.jsoftware.com'
wd 'setp w2 html *<html><body><img src=''./zippy.gif'' /></body></html>'
)

NB. =========================================================
webview_e_button=: 3 : 0
smoutput e
wd 'set w1 *',e
)

NB. =========================================================
webview_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
webview''
