NB. controls demos
NB. pc controls closeok
NB. pc controls escclose

Controls=: 0 : 0
pc controls
bin vhv
cc linear radiobutton
cn "view linear"
cc boxed radiobutton group
cn "view boxed"
cc tree radiobutton group
cn "view tree"
bin vz
cc gross radiobutton
cn "gross"
cc net radiobutton group
cn "net"
cc paid checkbox
cn "paid"
set boxed 1
set net 1
bin zz
cc names combobox
set names Bressoud Frye Rosen Wagon
setselect names 2
cc list listbox
set list one "two turtle doves" three "four colly birds" five six seven
cc entry edit
set entry 盛大 abc 巨嘴鸟
cc ted editm
bin h
cc ok button;cn "Push Me"
cc cancel button;cn "Cancel"
)

NB. =========================================================
controls_run=: 3 : 0
wd Controls
wd 'set ted *How grand to be a Toucan',LF,'Just think what Toucan do.'
wd 'pmovex 400 10 300 300'
wd 'pshow'
)

NB. =========================================================
controls_close=: 3 : 0
wd 'pclose'
)

showevents_jqtide_ 2
controls_run''
