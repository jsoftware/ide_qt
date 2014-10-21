NB. image demo

coclass 'qtdemo'

NB. =========================================================
imdemo_run=: 3 : 0
if. -. checkrequire 'bmp';'graphics/bmp' do. return. end.
wd 'pc imdemo closeok escclose'
wd 'grid size 2 2'
wd 'cc pic image'
wd 'cc jpg image'
wd 'cc png image'
wd 'cc bmp image'
wd 'set pic image *',jpath '~addons/graphics/bmp/toucan.bmp'
NB. convert to jpg
d=. readimg_jqtide_ jpath '~addons/graphics/bmp/toucan.bmp'
d writeimg_jqtide_ jpath '~temp/toucan.jpg'
wd 'set jpg image *',jpath '~temp/toucan.jpg'
NB. flip and save as png
d1=. |."1 d
d1 writeimg_jqtide_ jpath '~temp/toucan.png'
wd 'set png image *',jpath '~temp/toucan.png'
NB. pure blue
d2=. ($d)$255
d2 writeimg_jqtide_ jpath '~temp/blue.bmp'
wd 'set bmp image *',jpath '~temp/blue.bmp'
wd 'pshow'
)

imdemo_run''
