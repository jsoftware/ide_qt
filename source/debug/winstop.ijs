NB. stop manager
NB.
NB. SMNAMES     current names in stop manager (dynamically updated)
NB. STNAMES     current stack names
NB. SMNDX       selected index into SMNAMES
NB. SMLOCS      current names in locs (static once stopman loaded)
NB. SMLOC       selected locale

CX=: <'Current execution'

NB. =========================================================
jdbstop_dun=: ]

NB. =========================================================
NB. argument is a 0 or more names from current line
jdbstop_ini=: 3 : 0

if. jdb_inactive'' do.
  SMLOC=: <'base'
  0 jdebug_syslocs_button ''
  STNAMES=: i.0 2
  jdb_stoplocaleset SMLOC
else.
  SMLOC=: CX
  0 jdebug_syslocs_button ~. LOCALE, <'base'
  nms=. {."1 STACK
  nms=. ~. (jdb_boxxopen y), nms
  r=. ([:{.(_2&{.@I.@('_'=])))&.>nms
  p=. ;('_'={:)&.>nms
  nms1=. (r+&.>(-.p)*&.>#&.>nms){.&.>nms
  SMNAMES=: nms1 ,. LOCALE(I. -.;p)} ([:}.(}:))&.>r}.&.> nms
  STNAMES=: SMNAMES
  0 jdb_stopswritedef SMNAMES
end.
)

NB. =========================================================
NB. HANDLERS
NB. =========================================================

NB. =========================================================
jdbstop_stopall_button=: 3 : 0
jdb_lxsoff''
ndx=. {. _1,~ 0 ". name_select
if. _1=ndx do. jdb_lxson'' return. end.
nam=. {. ndx { SMNAMES
2 jdb_stoponall nam
jdb_stoprefresh {: 0 ". slines_select
jdb_lxson''
)

NB. =========================================================
jdbstop_stopline_button=: 3 : 0
jdb_lxsoff''
if. -. LF e. slines do.
  jdbstop_stopall_button''
else.
  'bgn end'=. 2{._1 _1,~ 0 ". slines_select
  num=. +/ LF = bgn {. slines
  val=. num > {. SMCOUNT
  line=. num - val * 1 + {.SMCOUNT
  nam=. {. SMNDX { SMNAMES
  NUMLINES=: val { SMCOUNT
  2 jdb_stopsetone nam,val;line
  jdb_stopwrite''
  jdb_stoprefresh end
end.
jdb_lxson''
)

NB. =========================================================
jdbstop_stopname_button=: 3 : 0
jdb_lxsoff''
if. 0 e. $j=. jdbstop_getnameat'' do. jdb_lxson'' return. end.
'pos name fullid'=. j

if. fullid -: jdbstop_getcurrentname'' do.
  jdbstop_stopall_button''
else.
  1 jdb_stoponall name
  jdb_wd 'set slines select ',":pos
  if. SMLOC-:CX do.
    SMNAMES=: ~. SMNAMES, fullid
    jdb_wd 'set name items ',jdb_listboxed {."1 SMNAMES
  end.
end.
jdb_lxson''
)

NB. =========================================================
jdbstop_stopwin_button=: 3 : 0
jdb_lxsoff''
if. 0 e. $j=. jdbstop_getnameat'' do. jdb_lxson'' return. end.

'pos name fullid'=. j

NB. no change:
if. fullid -: SMNDX { SMNAMES do. jdb_lxson'' return. end.

'rep both count'=. jdb_stoprep fullid
if. 0=#rep do.
  jdb_info 'No definition for name:',LF,LF,name
  jdb_lxson'' return.
end.

if. fullid e. SMNAMES do.
  nms=. SMNAMES
  ndx=. SMNAMES i. fullid
else.
  nms=. ~. fullid, SMNAMES
  ndx=. 0
end.

jdb_stopswritedefone rep;both;count;ndx;<nms
jdb_lxson''
)

NB. =========================================================
jdebug_name_select=: 3 : 0
jdb_lxsoff''
ndx=. {. _1,~ 0 ". name_select
if. _1=ndx do. jdb_lxson'' return. end.
NB. The user might have typed into the locale (without pressing ENTER) before he
NB. selected a name.  In that case the value in the 'loc' field does not match
NB. the locale we are going to use (SMLOC), so we reset the locs field to SMLOC
jdb_wd 'set locs select ',": SMLOCS i. SMLOC
if. ndx = #SMNAMES do.
  NB. The user typed in a new name.  Treat it as invalid (perhaps it
  NB. would be better to see if it exists and add the line to SMNAMES if so,
  NB. but we don't do that yet).  But Qt may have added it to the items in
  NB. the name control, so we rewrite the name and selection to expunge the
  NB. mistyped name.
  jdb_wd 'set name items ',jdb_listboxed {."1 SMNAMES
  jdb_wd 'set name select ', ": SMNDX
  jdb_lxson''
  return.
end.
NB. Recalculate content of window even if index (and selected name) has not changed (ndx = SMNDX).
NB. It is done because some names could be deleted with verbs erase or clear.
name =. ndx { SMNAMES
'rep both count'=. jdb_stoprep name

if. 0=#rep do.
  j=. 'Unable to get representation of:', LF, LF
  jdb_info j, 0 >@{ ndx { SMNAMES
  SMNAMES =: (0:`(ndx"_)`($&1@])}~@:# # ]) SMNAMES NB. Delete non-existing the name from SMNAMES.
  SMNDX=: _1
  jdb_wd 'set name items ',jdb_listboxed {."1 SMNAMES NB. Reload items.
  jdb_wd 'set name select ', ": # SMNAMES NB. (# SMNAMES) is out of range, so combobox will be empty.
  jdb_wd 'set slines text *' NB. Put empty code.
else.
  jdb_wd 'set slines text *',jdb_listboxed rep
  SMNDX=: ndx
  NMC=: 4!:0 name
  SMBOTH=: both
  SMCOUNT=: count
end.

jdb_lxson''
)

NB. =========================================================
jdebug_locs_select=: 3 : 0
jdb_lxsoff''
if. SMLOCS -.@e.~ <locs do.
  NB. If the user typed a new locale, ignore it and reset
  NB. the previous value
  jdb_wd 'set locs items ',jdb_toDEL SMLOCS
  jdb_wd 'set locs select ' , ": SMLOCS i. SMLOC
else.
  jdb_stoplocaleset locs
end.
jdb_lxson''
)


NB. =========================================================
SYSTEMLOCALES =: ;: 'z'
SYSTEMPREFIXES =: ;: 'dissect lint j'
NB. If y is not empty, it is locales to move to the front of the list
NB. for initialization.  In any case, SMLOC is moved to the very front, ahead
NB. of locales in y.  All other locales follow, with system locales culled if
NB. syslocs is 0
jdebug_syslocs_button=: 3 : 0
(0 ". syslocs) jdebug_syslocs_button y
:
NB. Repopulate locale list, preserving the current selection.
NB. But if the current selection is not available, revert to base

NB. Get the list of all locales
lc=. (18!:1[0), 18!:1[1
NB. IF we are not to show system locales, remove them from the list.  Remove numbered locales too
if. 0 = x do.
  lc =. (#~   [: -. [: +./ SYSTEMPREFIXES ([ -: #@[ {. ])&>/ ]) lc -. SYSTEMLOCALES
  lc =. (#~   *@#@(-.&'0123456789')@>) lc
end.
NB. Put the privileged locales in y first, followed by the rest.  Save
NB. these as SMLOCS.   Note that the current selection always ends up as
NB. first item
jdb_wd 'set locs items ',jdb_toDEL SMLOCS =: (,   lc -. ]) SMLOC , y
jdb_wd 'set locs select 0'
0 0$0
)

NB. =========================================================
NB. utilities
NB. =========================================================

NB. =========================================================
NB. jdbstop_getcurrentname
NB. returns: name locale
jdbstop_getcurrentname=: 3 : 0
ndx=. 0 ". name_select
ndx { SMNAMES
)

NB. =========================================================
NB. jdbstop_getnameat
jdbstop_getnameat=: 3 : 0

'pos name'=. (0 ". slines_select) jdb_getnameat slines

if. 0 = #name do. '' return. end.
loc=. {: SMNDX { SMNAMES
fullid=. loc jdb_fullname name
pos;name;<fullid
)

NB. =========================================================
jdb_stoplocaleset=: 3 : 0
bloc=. jdb_boxopen y
ndx=. SMLOCS i. bloc
idx=. 0

if. bloc -: CX do.
  idx jdb_stopswritedef STNAMES
else.
  cocurrent bloc
  ids=. 4!:1 [ 1 2 3
  cocurrent <'jdebug'
  idx jdb_stopswritedef ids ,. bloc
end.

jdb_wd 'set locs select ',": ndx
SMLOC=: bloc
)

NB. =========================================================
NB. returns success flag
jdb_stopname=: 3 : 0
if. 0 = #y do. 0 return. end.
jdb_wd 'set locs items;setenable locs 0'
y=. jdb_fullname y
nms=. ~. y,SMNAMES,NAME;LOCALE
if. 0 jdb_stopswritedef nms do.
  STNAMES=: ~. y, SMNAMES
  1
else.
  0
end.
)

NB. =========================================================
NB. jdb_stoprefresh
NB. x is (name;loc) to use; if omitted, use the one selected by name_select
NB. If y is given, it is a line#: select the line and setfocus on stops
NB.   (the call was from a user click).  If y omitted, do no window action
jdb_stoprefresh=: 3 : 0
(jdbstop_getcurrentname'') jdb_stoprefresh y
:
'rep both count'=. jdb_stoprep x
if. #y do.
  srep=. jdb_listboxed rep
  jdb_wd 'set slines text *', srep
  sel=. 2 $ y
  jdb_wd 'set slines select ',":sel, 0
  jdb_wd 'setfocus slines'
end.
SMBOTH=: both
SMCOUNT=: count
)

NB. =========================================================
NB. jdb_isAED
NB. y is result of 5!:5 of verb.
NB. Returns 1 if special case of AED - AT MOST ONE (m : 0)!
NB. Otherwise 0.
NB. Currently unused (better display of AEDs in Stops Manager is removed, because of fixed display of nested {{ ... }}).
jdb_isAED =: 3 : 0
if. (LF , ')') -: _2 {. y do.  NB. multiline definition
  header =. LF taketo y
  if. 3 < # tokens =. ;: header do.  NB. More than just n : 0
    if. 1 = # I. 2 (;:':0')&-:\ tokens do.  NB. Positions of :0 - must be only one
      1 return.
    end.
  end.
end.
0
)

NB. =========================================================
NB. jdb_stoprep
NB. Get representation for given name.
NB. y is name ; locale
NB. Result:
NB. Representation ; both ; count monad , count dyad where
NB. both is 1 if display is as for monad, but both monad and dyad stops are updated.
jdb_stoprep=: 3 : 0
name =. jdb_boxopen y
reps =. jdb_getdrep name
lname =. ; name ,&.> '_'
both =. 0

if. reps -: '' do. '' ; 0 ; 0 0 return. end.

tac =. -. jdb_isexplicit lname
rep0 =. > tac jdb_newboxrep 0 1 { reps  NB. Representation of monad.
rep1 =. > tac jdb_newboxrep 0 2 { reps  NB. Representation of dyad.

if. rep0 -: , a: do. rep0 =. '' end.
if. rep1 -: , a: do. rep1 =. '' end.

if. tac do. NB. If tacit then both = 1.
  both =. 1
  rep1 =. ''
end.

cod0 =. jdb_codelines rep0
cod1 =. jdb_codelines rep1
num0 =. # rep0
num1 =. # rep1

if. num0 do.
  stp0 =. jdb_stopgetone name , 0 ; num0 ; cod0
  r =. stp0 ,&.> jdb_indexit rep0
else.
  r =. ''
end.

if. num1 do.
  stp1=. jdb_stopgetone name , 1 ; num1 ; cod1
  r =. r , < ' [:] ' , 40 # '-'
  r =. r , stp1 ,&.> jdb_indexit rep1
end.

r ; both ; num0, num1
)

NB. =========================================================
NB. index jdb_stopswritedef names
NB. returns success
jdb_stopswritedef=: 4 : 0
NB. empty if no objects in locale...
if. 0 e. #y do.
  jdb_stopswritedefone ''
else.
  NB. Filter out names ending with '>' which are used as internal verbs of AEDs.
  y =. (('>' ~: {:)@>@:({."1) # ]) y
  'rep both count'=. jdb_stoprep x { y
  jdb_stopswritedefone rep;both;count;x;<y
end.
)

NB. =========================================================
jdb_stopswritedefone=: 3 : 0
if. 0 e. #y do.
  jdb_wd 'set name items;set slines text'
  SMNAMES=: i.0 2
  SMNDX=: 0
  SMCOUNT=: 0 0
  0
else.
  'rep both count ndx nms'=. y
  slines_select=: ''
  name_select=: ": SMNDX =: ndx
  SMNAMES =: nms
  jdb_wd 'set name items ',jdb_listboxed {."1 SMNAMES
  jdb_wd 'set name select ', ": SMNDX
  jdb_wd 'set name select ',name_select
  jdb_wd 'set slines text *', jdb_listboxed rep
  jdb_wd 'setenable name 1;setenable slines 1'
  SMBOTH=: both
  SMCOUNT=: count
  *#rep
end.
)

NB. =========================================================
NB. x is locale (boxed), y is name (boxed)
NB. Result is 1 if the name is a multiline definition (i. e. not tacit)
jdebug_ismultiline =: 4 : 0"0
(LF,')') -: _2 {. 5!:5 <(>y),'__x'
)

NB. =========================================================
jdebug_locs_button=: jdebug_locs_select
jdebug_name_button=: jdebug_name_select
jdebug_stopall_button=: jdbstop_stopall_button
jdebug_stopclose_button=: jdebug_mainwin
