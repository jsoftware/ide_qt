NB. controls demos

controls=: 3 : 0
NB. wd 'pc controls closeok'
NB. wd 'pc controls escclose'
wd 'pc controls'
wd 'cc list listbox'
wd 'set list one "two turtle doves" three "four colly birds" five six seven'
wd 'pmovex 700 10 300 300'
wd 'cc entry edit'
wd 'set entry 盛大 abc 巨嘴鸟'
wd 'cc ted editm'
wd 'set ted *How grand to be a Toucan',LF,'Just think what Toucan do.'
wd 'cc ok button;cn "Push Me"'
wd 'cc cancel button;cn "Cancel"'
wd 'pshow'
)

NB. =========================================================
controls_close=: 3 : 0
wd 'pclose'
)

showevents_jqtide_ 2
controls''
