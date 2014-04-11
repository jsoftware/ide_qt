NB. quickwidget
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the QQuickWidgets
NB. cmd so far:
NB.  set c source url
NB.  set c resizemode 0|1

coclass 'qtdemo'

NB. =========================================================
quickwidget=: 3 : 0
wd 'pc quickwidget'
wd 'cc e edit'
wd 'minwh 300 300'
wd 'cc q quickwidget'
wd 'set e text *', e=. jpath '~addons/ide/qt/demo/quick2.qml'
wd 'pshow'
)

NB. =========================================================
quickwidget_e_button=: 3 : 0
wd 'set q source *',e
)

NB. =========================================================
quickwidget_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
quickwidget''
