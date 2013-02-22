NB. tabdemo
NB.
NB. this is the controls demo in 3 tabs
NB.
NB. cc id tab        start a tabs control
NB. tabnew id        start a single tab 
NB. ...
NB. tabend           end tabs control

NB. =========================================================
Tabdemo=: 0 : 0
pc tabdemo escclose;

rem cc static button;

cc prefs tab;

tabnew View;
cc linear radiobutton;
cn "view linear";
cc boxed radiobutton group;
cn "view boxed";
cc tree radiobutton group;
cn "view tree";
bin s1;

tabnew Editor;
cc gross radiobutton;
cc net radiobutton group;
cc paid checkbox;
bin z s1 z;
cc names combobox;

tabnew Notes;
cc list listbox;
cc entry edit;
cc ted editm;

tabend;

bin h s2;
cc ok button;cn "Push Me";
cc cancel button;cn "Cancel";

set boxed 1;
set net 1;
set names Bressoud Frye Rosen Wagon;
setselect names 2;
set entry 盛大 abc 巨嘴鸟;
set list one "two turtle doves" three "four colly birds" five six seven;

)

NB. =========================================================
tabdemo_run=: 3 : 0
wd Tabdemo
wd 'set ted *How grand to be a Toucan',LF,'Just think what Toucan do.'
wd 'pmovex 400 10 400 200'
wd 'pshow'
)

NB. =========================================================
tabdemo_close=: 3 : 0
wd 'pclose'
)

showevents_jqtide_ 2
tabdemo_run''
