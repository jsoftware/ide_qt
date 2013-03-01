NB. parent styles demo
NB. 

coclass 'qtdemo'

NB. =========================================================
PSdemo=: 0 : 0
pc psdemo escclose;
cc lab static;
bin p8hv;
cc dialog checkbox;
cc popup checkbox;
cc ptop checkbox;
bin s1 zv;
cc minbutton checkbox;
cc maxbutton checkbox;
cc closebutton checkbox;
bin s1 zv;
cc ok button;cn "Create Form";
bin s z;
)

NB. =========================================================
psdemo_run=: 3 : 0
wd PSdemo
msg=. '<p>Select one or more form styles, then<br/>create the form.</p>'
msg=. msg,'<p>Styles dialog and popup are alternatives.<br/>'
msg=. msg,'Others are independent.</p>'


wd 'set lab ',msg
wd 'pmovex 50 50 0 0'
wd 'pshow'
)

NB. =========================================================
psdemo_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
psdemo_dialog_button=: 3 : 0
if. 0 ". dialog do.
  wd 'set popup 0'
end.
)

NB. =========================================================
psdemo_ok_button=: 3 : 0
r=. 'pc stylesdemo escclose'
m=. 0 ".&> dialog;popup;ptop;minbutton;maxbutton;closebutton
r=. r,;' ',each m#;:'dialog popup ptop minbutton maxbutton closebutton'
wd r
wd 'cc ted editm'
wd 'set ted *How grand to be a Toucan',LF,'Just think what Toucan do.'
wd 'cc close button;pmovex 400 10 300 200;pshow'
)

NB. =========================================================
psdemo_popup_button=: 3 : 0
if. 0 ". popup do.
  wd 'set dialog 0'
end.
)

NB. =========================================================
stylesdemo_close_button=: 3 : 0
wd 'pclose'
)

NB. =========================================================
psdemo_run''
