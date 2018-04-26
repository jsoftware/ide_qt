NB. =========================================================
NB. utilites for running jqt under jconsole

NB. y ignored
qapplication=: 3 : 0
if. (UNAME-:'Linux') *. (0;'') e.~ <2!:5 'DISPLAY' do. _1 return. end.
if. ((<UNAME)e.'Darwin';'Win') *. 0-:2!:5 'QT_PLUGIN_PATH' do. _1 return. end.
('hjdll pjst')=. _2{. ('"',libjqt,'" state_run  ',(IFWIN#'+'),' i i x *c i i x x *x *x')&cd`0:@.IFQT 0;0;'';FHS;0;0;0;(,_1);(,_1)
0[IFQTC_z_=: 1
)

NB. ensure state_run run at most once
3 : 0''
IFQTC=. (IFQTC"_)^:(0=4!:0<'IFQTC') (0)
(qapplication ::0:)^:(IFQT+:IFQTC) 0
EMPTY
)
