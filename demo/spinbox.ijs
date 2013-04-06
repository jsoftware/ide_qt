NB. spinbox demo
NB.
NB. cc track spinbox [numeric options]
NB.
NB. numeric options are:
NB. minimum
NB. single step
NB. maximum
NB. value

NB.
NB. all numeric options should be integers

coclass 'qtdemo'

NB. =========================================================
SPdemo=: 0 : 0
pc spinboxdemo;
cc track spinbox 0 1 20 7;
)

NB. =========================================================
spinboxdemo_close=: 3 : 0
wd 'pclose'
showevents_jqtide_ 0
)

NB. =========================================================
spinboxdemo_run=: 3 : 0
P=. jpath '~addons/ide/qt/images/'
wd SPdemo
wd 'pmove 700 10 400 200'
wd 'pshow'
)

NB. =========================================================
showevents_jqtide_ 2
spinboxdemo_run''
smoutput 0 : 0
Try:
  wd 'set track value 11'
  wd 'set track max 30'
)
