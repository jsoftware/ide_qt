NB. mb dialogs demo
NB.
NB. mb font     - get a font
NB. mb open     - get name of file to open
NB. mb dir      - get directory name
NB. mb save     - get name of file to save

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
NB. mb dir title directory filter
NB. note use of ;; in filter
demo3=: 3 : 0
wd 'mb dir "Existing Directory" "',(jpath '~install'),'"'
)

NB. =========================================================
NB. wd 'mb font'
NB. wd 'mb font family size [bold] [italic]'
demo4=: 3 : 0
wd 'mb font monospace 10 bold underline'
)

smoutput demo4''

NB. smoutput demo1''
NB. smoutput demo2''
NB. smoutput demo3''
NB. smoutput demo4''
NB.