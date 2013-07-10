
18!:4 <'base'
18!:55 <'qtdemo'
coclass 'qtdemo'

sububar=: I. @(e.&'_')@]}
maketitle=: ' '&sububar each @ cutopen ;._2
fexist=: 1:@(1!:4)@boxopen ::0:

TITLES=: maketitle 0 : 0
controls dcontrols
datetime ddatetime
edit dedit
edith dedith
editm deditm
gl2 dgl2
grid dgrid
ide dide
image dimage
mbox dmbox
mbdialog dmbdialog
menu dmenu
msgs dmsgs
plot dplot
printer dprinter
progressbar dprogressbar
pstyles dpstyles
shader dshader
slider dslider
spinbox dspinbox
sphere dsphere
split dsplit
statusbar dstatusbar
table dtable
table2 dtable2
tabs dtabs
timer dtimer
toolbar dtoolbar
toolbarv dtoolbarv
viewmat dviewmat
webd3 dwebd3
webview dwebview
)

TITLES2=: maketitle 0 : 0
controls dcontrols
datetime ddatetime
edit dedit
edith dedith
editm deditm
gl2 dgl2
grid dgrid
ide dide
image dimage
mbox dmbox
mbdialog dmbdialog
menu dmenu
msgs dmsgs
plot dplot
printer dprinter
progressbar dprogressbar
pstyles dpstyles
slider dslider
spinbox dspinbox
split dsplit
statusbar dstatusbar
table dtable
table2 dtable2
tabs dtabs
timer dtimer
toolbar dtoolbar
toolbarv dtoolbarv
viewmat dviewmat
)

NB. =========================================================
QTDEMO=: 0 : 0
pc qtdemo closeok;pn "Demos Select";
bin v;
cc static1 static;cn "static1";
bin h;
minwh 200 400;cc listbox listbox;
bin v;
cc ok button;cn "OK";
cc cancel button;cn "Cancel";
cc view button;cn "View Source";
bin szzz;
rem form end;
)

NB. =========================================================
qtdemo_run=: 3 : 0
if. 's' = {: wd 'version' do.
  TITLES=: TITLES2
end.
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
ddatetime=: load bind (jpath '~addons/ide/qt/demo/datetime.ijs')
dedit=: load bind (jpath '~addons/ide/qt/demo/edit.ijs')
dedith=: load bind (jpath '~addons/ide/qt/demo/edith.ijs')
deditm=: load bind (jpath '~addons/ide/qt/demo/editm.ijs')
dgl2=: load bind (jpath '~addons/ide/qt/demo/gl2.ijs')
dgrid=: load bind (jpath '~addons/ide/qt/demo/grid.ijs')
dide=: load bind (jpath '~addons/ide/qt/demo/ide.ijs') ^:(-.'Android'-:UNAME)
dimage=: load bind (jpath '~addons/ide/qt/demo/image.ijs')
dmbox=: load bind (jpath '~addons/ide/qt/demo/mbox.ijs')
dmbdialog=: load bind (jpath '~addons/ide/qt/demo/mbdialog.ijs')
dmenu=: load bind (jpath '~addons/ide/qt/demo/menu.ijs')
dmsgs=: load bind (jpath '~addons/ide/qt/demo/msgs.ijs')
dplot=: load bind (jpath '~addons/ide/qt/demo/plot.ijs')
dprinter=: load bind (jpath '~addons/ide/qt/demo/printer.ijs') ^:(-.'Android'-:UNAME)
dprogressbar=: load bind (jpath '~addons/ide/qt/demo/progressbar.ijs')
dpstyles=: load bind (jpath '~addons/ide/qt/demo/pstyles.ijs')
dshader=: load bind (jpath '~addons/ide/qt/demo/shader.ijs')
dslider=: load bind (jpath '~addons/ide/qt/demo/slider.ijs')
dspinbox=: load bind (jpath '~addons/ide/qt/demo/spinbox.ijs')
dsphere=: load bind (jpath '~addons/ide/qt/demo/sphere.ijs') ^:(-.'Android'-:UNAME)
dsplit=: load bind (jpath '~addons/ide/qt/demo/split.ijs')
dstatusbar=: load bind (jpath '~addons/ide/qt/demo/statusbar.ijs')
dtable=: load bind (jpath '~addons/ide/qt/demo/table.ijs')
dtable2=: load bind (jpath '~addons/ide/qt/demo/table2.ijs')
dtabs=: load bind (jpath '~addons/ide/qt/demo/tabs.ijs')
dtimer=: load bind (jpath '~addons/ide/qt/demo/timer.ijs') ^:(-.'Android'-:UNAME)
dtoolbar=: load bind (jpath '~addons/ide/qt/demo/toolbar.ijs')
dtoolbarv=: load bind (jpath '~addons/ide/qt/demo/toolbarv.ijs')
dviewmat=: load bind (jpath '~addons/ide/qt/demo/viewmat.ijs')
dwebd3=: load bind (jpath '~addons/ide/qt/demo/webd3.ijs')
dwebview=: load bind (jpath '~addons/ide/qt/demo/webview.ijs')

NB. =========================================================
qtdemo_view_button=: 3 : 0
f=. }. > {: (".listbox_select) { TITLES
open jpath '~addons/ide/qt/demo/',f,'.ijs'
)

NB. =========================================================
qtdemo_run''
