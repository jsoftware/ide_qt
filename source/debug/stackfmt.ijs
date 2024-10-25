NB. jdb_stackrep
NB.
NB. format current stack into the 3 parts of the Debug window:
NB.   lines
NB.   stack
NB.   values
NB.
NB. also defines various (UPPERCASE) globals required by Debug

NB. =========================================================
NB.*jdb_stackrep v jdb_stackrep stack
NB.
NB. optional left argument is used by Debug:
NB.    moveline;error message  (default currentline ; J error message)
jdb_stackrep=: 3 : 0
'' jdb_stackrep y
:

if. 0 = #y do. y=. jdb_getstack i. 11 end.
if. 0 = #y do. '' return. end.

NB. ---------------------------------------------------------
NB. define various globals:

NB. split up stack to minimize time used:
LOCALVALS=: 7 {"1 y
STACKLOCALS=: {."1 &.> LOCALVALS

NB. redefine LOCALVALS for current definition only:
LOCALVALS=: {:"1 > {. LOCALVALS  NB. local values
LOCALNAMES=: > {. STACKLOCALS    NB. local names

'NAME ERRNUM CURRENTLINE'=: 3 {. {. y

NB. exit if no-name definition (not initialized)
if. 0 e. #NAME do. '' return. end.

LDEFS=. GDEFS=. ''

NB. ---------------------------------------------------------
NB. line number ; error message:

if. #x do.
  'linenum errmsg'=. x
else.
  linenum=. CURRENTLINE
  errmsg=. (ERRNUM <. <:#ERRORS) >@{ ERRORS
end.

NB. ---------------------------------------------------------
nms=. 0{"1 y  NB. Names.
lns=. linenum , }. ; 2{"1 y  NB. Integer array of line numbers in explicit definitions (0 if tacit).
nmc=. ; 3{"1 y  NB. Integer array of name classes: 1 = adverb, 2 = conjunction, 3 = verb.
rps=. 4{"1 y  NB. Normal representations (used for tacit verbs).
erps=. 10{"1 y  NB. Extended representations (used for explicit verbs).
arglen=. # &> 6{"1 y

NB. ---------------------------------------------------------
NB. get valence of definitions on stack
NB.   0 = monad
NB.   1 = dyad
NB.  _1 = dont know
val=. (#nmc) # _1
if. 1 e. b=. nmc=3 do.
  val=. (<: b # arglen) (I. b)} val
end.

NB. test on presence of x if adverb or conjunction,
NB. and one of m n u v is present
if. 1 e. b=. (nmc~:3) *. (1: e. MNUV&e.) &> STACKLOCALS do.
  sel=. (<'x')&e. &> b # STACKLOCALS
  val=. sel (I. b)} val
end.

NB. ---------------------------------------------------------
NB. fix up dyad nameclass
nmc=. nmc + (nmc=3) *. val=1

NB. tacit if no locals:
tac=. 0 = # &> STACKLOCALS

NB. ---------------------------------------------------------
NB. convert reps into boxed lists:

brp=. tac jdb_newboxrep rps ,. erps
bln=. # &> brp

if. 0=#brp do.
  jdb_info 'Unable to display Debug stack'
  '' return.
end.

if. 0={.bln do.
  jdb_info 'Unable to display top of stack'
  '' return.
end.

if. 0 e. bln do.
  brp=. (<'display not available') (I. bln)} brp
end.

NB. ---------------------------------------------------------
NB. top of stack:
'nam lnm typ'=. (<0;0 2 3) { y

NB. ---------------------------------------------------------
NB. lines:
dep=. 0 >@{ brp
LINES=: jdb_dtb &.> dep

dax=. jdb_indices &.> i.#dep
lines=. dax ,&.> dep

NUMLINES=: #lines
CODELINES=: jdb_codelines dep
VALENCE=: {. val
NMC=: {.nmc

NB. ---------------------------------------------------------
NB. stack:
lns=. lns <. bln
exl=. ;lns ({ ,& (<'{unknown}')) &.> brp
ind=. jdb_indices&.> <"0 lns
stack=. nms ,&.> ind ,&.> exl

st0=. errmsg
if. ERRNUM e. ERRORCODES do.
  erm=. <;._2 ERM_j_
  if. (3=#erm) *. linenum=CURRENTLINE do.
    st0=. st0,LF,NAME,'[',(":linenum),'] ',jdb_dlb }.1 >@{ erm
    stack=. }.stack
  end.
end.

stack=. st0 ; stack

NB. ---------------------------------------------------------
NB. values:
wat=. jdb_cutopen WATCH
dfs=. jdb_getdefs 0 >@{ exl
dfs=. dfs -. MNUVXY
dfs=. ~. wat, ((MNUVXY e. LOCALNAMES)#MNUVXY), dfs
ndx=. LOCALNAMES i. dfs
msk=. ndx = #LOCALNAMES
lcs=. LOCALNAMES jdb_fixlocal &.>&(((-.msk)#ndx)&{) LOCALVALS
glb=. LOCALE jdb_showglobals msk#dfs
vls=. (/:/:msk) { lcs,glb
values=. dfs ,&.> ' ' ,&.> vls

NB. ---------------------------------------------------------
lines;stack;<values
)
