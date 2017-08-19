NB. svg demo

coclass 'qtdemo'

NB. =========================================================
svgdemo_run=: 3 : 0
wd 'pc svgdemo closeok escclose'
wd 'bin v'
wd 'cc s1 svgview zoom'  NB. show zoom control
wd 'cc s2 svgview'
wd 'bin z'
wd 'set s1 image *',jpath '~addons/ide/qt/demo/default.svg'   NB. file name
wd 'set s2 xml *',fread '~addons/ide/qt/demo/bubbles.svg'     NB. xml data
wd 'pmove 0 0 400 600'
wd 'pshow'
)

svgdemo_run''
