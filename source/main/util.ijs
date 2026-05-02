NB. util

NB. websocket event
'jws_onOpen jws_onClose jws_onMessage jws_onError jws_onSslError jws_onStateChange'=: i.6

NB. =========================================================
NB. convert strings with J box chars to utf8
NB. rank < 2
boxj2utf8=: 3 : 0
if. 1 < #$y do. y return. end.
b=. (16+i.11) { a.
if. -. 1 e. b e. y do. y return. end.
y=. ucp y
a=. ucp '┌┬┐├┼┤└┴┘│─'
x=. I. y e. b
utf8 (a {~ b i. x { y) x } y
)

NB. =========================================================
clipread=: wd@('clippaste'"_)

NB. =========================================================
clipwrite=: 3 : 0
txt=. boxj2utf8 flatten ":y
wd 'clipcopy *',txt
#txt
)

NB. =========================================================
NB.*dbjqt v turn debugging window on/off
dbjqt=: 3 : 0
if. y do.
  if. _1 = 4!:0 <'jdb_open_jdebug_' do.
    0!:0 <jpath '~addons/ide/qt/debugs.ijs'
  end.
  jdb_open_jdebug_''
else.
  jdb_close_jdebug_ :: ] ''
end.
)

NB. =========================================================
NB.*fixexcel
NB. fix read of excel file
NB. convert numeric strings to numbers
NB. reshape the data
fixexcel=: 3 : 0
dat=. <;._2 y
'shape type'=. 2 {. dat
dat=. 2 }. dat
ndx=. I. type='1'
dat=. (0 ". each ndx{dat) ndx} dat
(0 ". shape) $ dat
)

NB. =========================================================
NB.*flatten v flatten array to a character string
NB. flattens array to a character string with same display
flatten=: 3 : 0
dat=. ": y
select. # $ dat
case. 1 do.
case. 2 do.
  }. , LF ,. dat
case. do.
  dat=. 1 1}. _1 _1}. ": < dat
  }: (,|."1 [ 1,.-. *./\"1 |."1 dat=' ')#,dat,.LF
end.
)

NB. =========================================================
NB. for isigrid control
gridindex=: 3 : 0
'rws cls sel ndx shp'=. y
d=. (sel,rws,cls) |: i.shp
r=. (sel{shp),(*/rws{shp),*/cls{shp
,(<ndx) { r ($,) d
)

NB. =========================================================
NB. show wd events
NB. 0=none
NB. 1=sysevent
NB. 2=wdq
NB. 3=sysevent except mmove
NB. 4=wdq except mmove
showevents=: 3 : 0
select. {. y,1
case. 0 do.
  4!:55 <'wdhandler_debug_z_'
case. 1 do.
  wdhandler_debug_z_=: 3 : 'smoutput sysevent'
case. 2 do.
  wdhandler_debug_z_=: 3 : 'smoutput wdq'
case. 3 do.
  wdhandler_debug_z_=: 3 : 'if. -. ''_mmove''-:_6{.sysevent do. smoutput sysevent end.'
case. 4 do.
  wdhandler_debug_z_=: 3 : 'if. -. ''_mmove''-:_6{.sysevent do. smoutput wdq end.'
end.
EMPTY
)

NB. =========================================================
NB. view data, checking for argument of title;caption;text
textview=: 3 : 0
p=. boxopen y
title=. caption=. ''
text=. p
if. 1=#$p do.
  if. *./ (2=#p), (2 = 3!:0) 0 pick p do.
    'title text'=. p
  elseif. *./ (3=#p), (2 = 3!:0) &> 2 {. p do.
    'title caption text'=. p
  end.
end.
wd 'textview *;',(,":title),';',(,":caption),';',flatten text
)

NB. =========================================================
NB. override default echo to invoke jqt's message pump
echo_z_=: wd ::empty@'msgs'^:2 [ 1!:2&2

NB. =========================================================
NB. qDebug()
logcat_z_=: (wd ::empty)@('logcat ' , }.@:;@:(LF&,"1)@:":)

NB. =========================================================
NB. echo and logcat
echol_z_=: (wd ::empty@'msgs'^:2 [ 1!:2&2) [ (wd ::empty)@('logcat ' , }.@:;@:(LF&,"1)@:":)
