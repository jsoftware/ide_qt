NB. mb dialogs demo
NB.
NB. mb color    - get an RGB color
NB. mb font     - get a font
NB. mb open     - get name of file to open
NB. mb save     - get name of file to save
NB. mb dir      - get directory name
NB. mb print    - print with dialog

coclass 'qtdemo'

NB. =========================================================
NB. mb open title directory filter
demo1=: 3 : 0
p=. 'Scripts (*.ijs)|All Files (*.*)'
wd 'mb open "Open Script" "',(jpath '~system/util'),'" "',p,'"'
)

NB. =========================================================
NB. mb save title directory filter
demo2=: 3 : 0
p=. 'Scripts (*.ijs)|XML (*.xml)|All Files (*.*)'
wd 'mb save "Save Script" "',(jpath '~install'),'" "',p,'"'
)

NB. =========================================================
NB. mb dir title directory filter
NB. note use of | in filter
demo3=: 3 : 0
wd 'mb dir "Existing Directory" "',(jpath '~install'),'"'
)

NB. =========================================================
NB. wd 'mb color'
NB. wd 'mb color R G B'  RGB in range 0,255
demo4=: 3 : 0
wd 'mb color 0 128 0'
)

NB. =========================================================
NB. wd 'mb font'
NB. wd 'mb font family size [bold] [italic]'
demo5=: 3 : 0
wd 'mb font monospace 10 bold underline'
)

NB. =========================================================
NB. print with dialog
NB. wd 'mb print filename'
NB. wd 'mb print *',text
demo6=: 3 : 0
wd 'mb print *just testing'
)

demo7=: 3 : 0
wd 'mb print "',(jpath '~install/bin/profile.ijs'),'"'
)

NB. =========================================================
NB. print with no dialog
demo8=: 3 : 0
wd 'mb printx "',(jpath '~install/bin/profile.ijs'),'"'
)

NB. =========================================================
smoutput 0 : 0
Dialog demos:
   smoutput demo1''
   smoutput demo2''
   smoutput demo3''
   smoutput demo4''
   smoutput demo5''

Printing demos:
  demo6''
  demo7''
  demo8''
)
