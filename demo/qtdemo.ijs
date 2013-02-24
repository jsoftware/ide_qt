
18!:55 <'qtdemo'
coclass 'qtdemo'

sububar=: I. @(e.&'_')@]}
maketitle=: ' '&sububar each @ cutopen ;._2
fexist=: 1:@(1!:4)@boxopen ::0:

TITLES=: maketitle 0 : 0
controls dcontrols
gl2 dgl2
menu dmenu
plot dplot
shader dshader
sphere dsphere
split dsplit
table dtable
timer dtimer
viewmat dviewmat
webview dwebview
)

NB. =========================================================
QTDEMO=: 0 : 0
pc qtdemo closeok;pn "Demos Select";
bin v;
cc static1 static;cn "static1";
bin h;
wh 200 400;cc listbox listbox;
bin v;
cc ok button;cn "OK";
cc cancel button;cn "Cancel";
bin szzz;
rem form end;
)

NB. =========================================================
qtdemo_run=: 3 : 0
wd QTDEMO
wd 'set static1 *Select a Qt demo from the list below:'
wd 'set listbox ',;DEL,each ({."1 TITLES),each DEL
wd 'setselect listbox 0'
wd 'setfocus listbox'
wd 'pshow;'
)

NB. =========================================================
qtdemo_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
qtdemo_listbox_button=: 3 : 0
fn=. > {: (".listbox_select) { TITLES
fn~0
)

NB. =========================================================
qtdemo_enter=: qtdemo_ok_button=: qtdemo_listbox_button
qtdemo_cancel_button=: qtdemo_close

NB. =========================================================
dcontrols=: load bind (jpath '~addons/ide/qt/demo/controls.ijs')
dgl2=: load bind (jpath '~addons/ide/qt/demo/gl2.ijs')
dmenu=: load bind (jpath '~addons/ide/qt/demo/menu.ijs')
dplot=: load bind (jpath '~addons/ide/qt/demo/plot.ijs')
dshader=: load bind (jpath '~addons/ide/qt/demo/shader.ijs') ^:(-.'Android'-:UNAME)
dsphere=: load bind (jpath '~addons/ide/qt/demo/sphere.ijs') ^:(-.'Android'-:UNAME)
dsplit=: load bind (jpath '~addons/ide/qt/demo/split.ijs')
dtable=: load bind (jpath '~addons/ide/qt/demo/table.ijs')
dtimer=: load bind (jpath '~addons/ide/qt/demo/timer.ijs') ^:(-.'Android'-:UNAME)
dviewmat=: load bind (jpath '~addons/ide/qt/demo/viewmat.ijs')
dwebview=: load bind (jpath '~addons/ide/qt/demo/webview.ijs')

NB. =========================================================
qtdemo_run''