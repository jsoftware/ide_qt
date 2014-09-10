NB. image demo

coclass 'qtdemo'

NB. =========================================================
imdemo_run=: 3 : 0
if. -. checkrequire 'bmp';'graphics/bmp' do. return. end.
require 'bmp'
wd 'pc imdemo closeok escclose'
wd 'cc pic image'
wd 'set pic image *',jpath '~addons/graphics/bmp/toucan.bmp'
wd 'pshow'
)

imdemo_run''
