NB. owner form
NB.

coclass 'qtdemo'

NB. =========================================================
owner=: 3 : 0
wd 'pc form1'
wd 'wh 150 20'
wd 'cc e edit'
wd 'cc b button'
wd 'pshow'
wd 'set e free'
)

NB. =========================================================
form1_b_button=: 3 : 0
wd 'pc form2 owner'
wd 'wh 150 20'
wd 'cc e edit'
wd 'pshow'
wd 'set e owner'
)

NB. =========================================================
form1_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
form2_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
owner''
