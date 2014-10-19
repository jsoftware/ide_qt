NB. webgl

coclass 'qtdemo'

J3DI=: file2url jpath '~addons/ide/qt/js/J3DI.js'
J3DIMath=: file2url jpath '~addons/ide/qt/js/J3DIMath.js'
PICTURE=: file2url jpath '~addons/graphics/bmp/toucan.bmp'

NB. =========================================================
run_webgl=: 3 : 0
wd 'pc webgl;cc w webview'
h=. fread jpath '~addons/ide/qt/demo/webgl.html'
m=. ('J3DI_js';J3DI;'J3DIMath_js';J3DIMath;'PICTURE';PICTURE) stringreplace h
wd 'pshow'
wd 'set w baseurl *', file2url jpath '~Public'
wd 'set w html *',m
)

NB. =========================================================
webgl_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
run_webgl''
