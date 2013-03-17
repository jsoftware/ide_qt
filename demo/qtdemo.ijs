
18!:55 <'qtdemo'
coclass 'qtdemo'

sububar=: I. @(e.&'_')@]}
maketitle=: ' '&sububar each @ cutopen ;._2
fexist=: 1:@(1!:4)@boxopen ::0:

TITLES=: maketitle 0 : 0
controls dcontrols
edit dedit
editm deditm
gl2 dgl2
image dimage
mbox dmbox
mbdialog dmbdialog
menu dmenu
plot dplot
printer dprinter
pstyles dpstyles
shader dshader
slider dslider
sphere dsphere
split dsplit
statusbar dstatusbar
table dtable
tabs dtabs
timer dtimer
toolbar dtoolbar
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
cc view button;cn "View Source";
bin szzz;
rem form end;
)

NB. =========================================================
qtdemo_run=: 3 : 0
wd QTDEMO
wd 'set static1 text *Select a Qt demo from the list below:'
wd 'set listbox items ',;DEL,each ({."1 TITLES),each DEL
wd 'set listbox select 0'
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
dedit=: load bind (jpath '~addons/ide/qt/demo/edit.ijs')
deditm=: load bind (jpath '~addons/ide/qt/demo/editm.ijs')
dgl2=: load bind (jpath '~addons/ide/qt/demo/gl2.ijs')
dimage=: load bind (jpath '~addons/ide/qt/demo/image.ijs')
dmbox=: load bind (jpath '~addons/ide/qt/demo/mbox.ijs')
dmbdialog=: load bind (jpath '~addons/ide/qt/demo/mbdialog.ijs')
dmenu=: load bind (jpath '~addons/ide/qt/demo/menu.ijs')
dplot=: load bind (jpath '~addons/ide/qt/demo/plot.ijs')
dprinter=: load bind (jpath '~addons/ide/qt/demo/printer.ijs') ^:(-.'Android'-:UNAME)
dpstyles=: load bind (jpath '~addons/ide/qt/demo/pstyles.ijs')
dshader=: load bind (jpath '~addons/ide/qt/demo/shader.ijs') ^:(-.'Android'-:UNAME)
dslider=: load bind (jpath '~addons/ide/qt/demo/slider.ijs')
dsphere=: load bind (jpath '~addons/ide/qt/demo/sphere.ijs') ^:(-.'Android'-:UNAME)
dsplit=: load bind (jpath '~addons/ide/qt/demo/split.ijs')
dstatusbar=: load bind (jpath '~addons/ide/qt/demo/statusbar.ijs')
dtable=: load bind (jpath '~addons/ide/qt/demo/table.ijs')
dtabs=: load bind (jpath '~addons/ide/qt/demo/tabs.ijs')
dtimer=: load bind (jpath '~addons/ide/qt/demo/timer.ijs') ^:(-.'Android'-:UNAME)
dtoolbar=: load bind (jpath '~addons/ide/qt/demo/toolbar.ijs')
dviewmat=: load bind (jpath '~addons/ide/qt/demo/viewmat.ijs')
dwebview=: load bind (jpath '~addons/ide/qt/demo/webview.ijs')

NB. =========================================================
QTVIEW=: 0 : 0
pc qtview closeok;pn "View Source";
wh 400 400;cc m editm readonly;
rem form end;
)

NB. =========================================================
qtdemo_view_button=: 3 : 0
if. 0~: 4!:0 <'FIXFONT_z_' do. font=: (('Linux';'Darwin';'Android';'Win') i. <UNAME){:: 'mono 10' ; 'Monaco 10' ; (IFQT{::'monospace 10';'"Droid Sans Mono" 10') ; '"Lucida Console" 10' else. font=: FIXFONT_z_ end.
f=. }. > {: (".listbox_select) { TITLES
wd QTVIEW
wd 'pn ', f
wd 'setfont m ', font
wd 'set m wrap 0'
wd 'set m stylesheet *background-color:#ffefd5'
wd 'set m text *', fread jpath '~addons/ide/qt/demo/',f,'.ijs'
wd 'pshow'
)

NB. =========================================================
qtdemo_run''
