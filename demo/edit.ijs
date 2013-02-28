NB. alignment, password, readonly
NB.

coclass 'qtdemo'

NB. =========================================================
edit=: 3 : 0
wd 'pc edit'
wd 'wh 150 20'
wd 'cc e0 edit'
wd 'cc e1 edit left'
wd 'cc e2 edit center'
wd 'cc e3 edit right'
wd 'cc e4 edit password'
wd 'cc e5 edit readonly'
wd 'cc l1 static left'
wd 'cc l2 static center'
wd 'cc l3 static right'
wd 'pshow'
wd 'setp e0 limit 10'
wd 'set e0 *limit=10'
wd 'set e1 *left'
wd 'set e2 *center'
wd 'set e3 *right'
wd 'set e4 *password'
wd 'set e5 *readonly'
wd 'set l1 *left'
wd 'set l2 *center'
wd 'set l3 *right'
wd 'pstylesheet *QLineEdit{color:blue} QLabel{color:green;background-color:yellow}'
wd 'setp e4 stylesheet *color:red'
wd 'setp e5 stylesheet *background-color:#bbbbbb'
)

NB. =========================================================
edit_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
edit''
