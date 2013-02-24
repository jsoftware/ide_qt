NB. mb dialogs demo

coclass 'qtdemo'

NB. =========================================================
NB. mb open title directory filter
NB. note use of ;; in filter
demo1=: 3 : 0
p=. 'Scripts (*.ijs);;All Files (*.*)'
wd 'mb open "Open Script" "',(jpath '~system/util'),'" "',p,'"'
)

NB. =========================================================
NB. mb save title directory filter
NB. note use of ;; in filter
demo2=: 3 : 0
p=. 'Scripts (*.ijs);;XML (*.xml);;All Files (*.*)'
wd 'mb save "Save Script" "',(jpath '~install'),'" "',p,'"'
)

NB. =========================================================
NB. wd 'mb font'
NB. wd 'mb font family size [bold] [italic]'
demo3=: 3 : 0
wd 'mb font monospace 10 bold'
)

smoutput demo1''
smoutput demo2''
smoutput demo3''
