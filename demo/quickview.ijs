NB. quickview
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the QQuickView

coclass 'qtdemo'

NB. =========================================================
quickview=: 3 : 0
wd 'pc quickview'
wd 'cc e edit'
wd 'set e text *', e=. jpath '~addons/ide/qt/demo/',(5=qtmajor){::'quick.qml';'quick2.qml'
wd 'pshow'
)

NB. =========================================================
quickview_e_button=: 3 : 0
wd 'quickview qv "', e ,'"'
)

NB. =========================================================
quickview_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
quickview''
