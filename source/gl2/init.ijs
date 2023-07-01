NB. gl2 init

coclass 'jgl2'

WDCB_jqtide_=: (WDCB_jqtide_"_)^:(0=4!:0<'WDCB_jqtide_') (IFIOS*.IFQT)+.(UNAME-:'Wasm')
3 : 0''
if. 0~: 4!:0 <'PROFONT_z_' do. PROFONT=: (('Linux';'FreeBSD';'OpenBSD';'Darwin';'Android';'Win') i. <UNAME){:: 'Sans 10' ; 'Sans 10' ; 'Sans 10' ; '"Lucida Grande" 10' ; (IFQT{::'Sans 10';'"Droid Sans" 10') ; 'Tahoma 10' ; 'Tahoma 10' else. PROFONT=: PROFONT_z_ end.
if. 0~: 4!:0 <'FIXFONT_z_' do. FIXFONT=: (('Linux';'FreeBSD';'OpenBSD';'Darwin';'Android';'Win') i. <UNAME){:: 'mono 10' ; 'mono 10' ; 'mono 10' ; 'Monaco 10' ; (IFQT{::'monospace 10';'"Droid Sans Mono" 10') ; '"Lucida Console" 10' ; '"Lucida Console" 10' else. FIXFONT=: FIXFONT_z_ end.
)

