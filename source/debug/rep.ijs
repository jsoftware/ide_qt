NB. Boxed representation for Debug window and Stops Manager.

jdb_newboxrep =: <@(4 : 0)"0 1
'rep erep' =. y  NB. rep is representation from 4th column from stack and erep is extended representation from 10th column from stack.
if. x do.  NB. Tacit.
  < SUBTC (I. rep = LF) } rep  NB. Use normal representation.
else.  NB. Explicit.
  jdb_verbrep erep  NB. Use extended representation.
end.
)

NB. =========================================================
NB. Direct definitions {{ ... }} can occur inside verb.
NB. We do not allow setting stops inside such DDs, so we want to treat them as single lines.
NB. Normal representation of verb on stack (4th column) show DDs in multiline form, so we do not know where each of DDs ends (counting {{ is not enough, because of {{)n).
NB. That is why we use extended representation (10th column) which returns internal lines and then it is possible to join corresponding lines to match internal representation with user's code and then convert all (9 : '...') to {{ ... }}.
NB. y is table of boxes (extended representation which is element from 10th column from stack).
NB. Result:
NB. Array of boxes where each box contains string with line of monadic or dyadic part of verb.
jdb_verbrep =: 3 : 0"2
NB. Same idxs iff in the same line in user's code.
idxs =. (0 ; 2)&{::"0@:(1&{"1) y
ilns =. {:"1 y  NB. Internal lines.
NB. Join lines and add add empty lines or with (deleted) comments to match line numbers.
ulns =. (idxs <@:(' '&joinstring)/. ilns) (~. idxs)} a: $~ >: {: idxs  NB. User's lines.
jdb_linerep&.> ulns  NB. Replace (9 : '...') with {{ ... }}.
)

NB. =========================================================
NB. y is string (line of verb).
NB. Result:
NB. String where all (9 : '...') are converted to {{ ... }}.
jdb_linerep =: 3 : 0"1
tokens =. ;: y
NB. idxs9 is table with 5 columns of indices - each (9 : '...') consists of 5 tokens.
idxs9 =. (i. 5)&+"0 I. ((, '(') ; (, '9') ; , ':')&E. tokens
if. 0 = # idxs9 do.
  jdb_joinlinerep tokens
else.
  NB. Column 3 contains '...'.
  idxsTxt =. 3&{"1 idxs9
  NB. Replace each '...' by '{{ ... }}'.
  tokens =. (< '{{ ... }}') idxsTxt} tokens
  NB. Remove ( 9 :  ) and join tokens with spaces.
  jdb_joinlinerep ((i. # tokens) -. , 0 1 2 4 {"1 idxs9) { tokens
end.
)

NB. =========================================================
NB. y is array of tokens (boxes containing strings).
NB. Result:
NB. String where each tokens is delimeted by space and each LF is replaced by space.
NB. Replacement of LF for situations of multiline nouns - {{)n.
NB. If extended representation were also 'pretty printer' then joinstring would be omitted.
jdb_joinlinerep =: [: (LF ; ' ')&stringreplace ' '&joinstring


NB. =========================================================
NB. jdb_curtail     (truncates only)
j=. SHOWWID & {.
jdb_curtail=: ]`(j f.) @. (jdb_vSHOWWID < #)

NB. =========================================================
NB. jdb_curtailed   (also adds dots)
j=. (SHOWWID-3) & {. , '...'"_
jdb_curtailed=: ]`(j f.) @. (jdb_vSHOWWID < #)

NB. =========================================================
NB. jdb_getdrep
NB. Representations of defined verb/adverb/conjunction.
NB. y is name ; locale.
NB. Result:
NB. 3 different representations: 5!:5, 1&(5!:7), 2&(5!:7)
jdb_getdrep=: 3 : 0
'name loc'=. y

if. 0 e. $name do. '' return. end.

bloc=. <loc

if. 1 e. '__' E. }: name do.
  j=. jdb_splitind name
  if. 2 ~: #j do. '' return. end.
  'a b'=. j
  if. 0 ~: nc <b do. '' return. end.
  c=. (b,'_',loc,'_')~
  if. 1 ~: L. c do. '' return. end.
  cocurrent c
  nc=. 4!:0 :: _2: <a
  cocurrent <'jdebug'
  if. -. nc e. 1 2 3 do. '' return. end.
else.
  cocurrent bloc
  nc=. 4!:0 :: _2: <name
  cocurrent <'jdebug'
  if. -. nc e. 1 2 3 do. '' return. end.
end.

cocurrent bloc
rep =. 5!:5 < name
erep0 =. (1) 5!:7 < name
erep1 =. (2) 5!:7 < name
cocurrent <'jdebug'

rep ; (< erep0) , (< erep1)
)

NB. =========================================================
NB. fix the definition of a local name.  x is the name, y is the value
NB. Use LOCALTYPES to define the type of the name, or noun if unknown
jdb_fixlocal=: 4 : 0
if. 0=#x do. '' return. end.  NB. Ignore empty name (happens if there are no names)
if. 0 = #LOCALTYPES do.
  jdb_fixnoun y   NB. If no names known, just assume noun
else.
  class =. (0 ,~  > {: LOCALTYPES) {~ ({. LOCALTYPES) i. <x
  if. 0 = class do. jdb_fixnoun y
  else. class jdb_fixdef y
  end.
end.
)

NB. =========================================================
NB. fix the verb/adverb/conjunction definition (boxed argument)
jdb_fixdef=: 4 : 0
type=. 'acvu' {~ 1 2 3 i. x
type,' ',jdb_subchars y
)

NB. =========================================================
NB. fix the noun representation
jdb_fixnoun=: 3 : 0

shape=. $y
len=. */shape

if. 0 = L. y do.
  y=. jdb_fixopen y

else.

  if. 1 = L. y do.
    if. 1 = len do.
      y=. '<',jdb_fixopen >{.y
    else.
      y=. jdb_curtail ,y
      ben=. */ @ $ S: 0 y
      if. 1000 < +/ ben do.
        y=. '{boxed}'
      else.
        y=. }. ; (',(<'&, @ (,&')')) &.> jdb_fixopen &.> y
      end.
    end.
  else.
    y=. '{boxed}'
  end.
  y=. (jdb_repshape shape), y

end.

r=. jdb_curtailed 'n ',jdb_subchars y

)

NB. =========================================================
NB. fix jdb_open noun
jdb_fixopen=: 3 : 0

shape=. $y
len=. */shape
rsh=. jdb_repshape shape

if. jdb_issparse y do.
  if. 1000 < len do.
    rsh, '{sparse}' return.
  else.
    t=. $. ^:_1 y
  end.
else.
  t=. y
end.

if. 0=#shape do.
  ":t
else.
  t=. jdb_curtail ,t
  jdb_curtailed rsh,jdb_quoteme t
end.
)

NB. =========================================================
NB. get boxed jdb_leaves
jdb_leaves=: ([: ; <@":@, S: 0) ^: (L. > 0:)

NB. =========================================================
NB.*jdb_quote v jdb_quote text
NB. jdb_quote 'Pete''s Place'
a=. ''''
jdb_quote=: (a&,@(,&a))@ (#~ >:@(=&a))

NB. =========================================================
NB. jdb_quoteme   jdb_quote if character
jdb_quoteme=: ":`jdb_quote @. (2&=@(3!:0))

NB. =========================================================
NB. return shape
jdb_repshape=: (0: < #) # ": , '$'"_

NB. =========================================================
NB. substitute terminal control characters:
SUBTC=: 1{a.
jdb_subtc=: SUBTC & (I. @ (e.&(9 10 12 13{a.)) @] })

NB. =========================================================
NB. remove ascii zero:
jdb_remzero=: -. & ({.a.)

NB. =========================================================
NB. jdb_subchars
jdb_subchars=: jdb_remzero @: jdb_subtc

NB. =========================================================
NB. jdb_viewname
jdb_viewname=: 4 : 0
max=. 50000
shape=. $y
scalar=. 0=#shape
type=. jdb_datatype y

dat=. jdb_flatten y
if. max < #dat do.
  dat=. (max {. dat),LF,'...'
end.

tag=. type
tag=. tag, scalar >@{ (' shape ',":shape);' scalar'

if. type -: 'boxed' do.
  tag=. tag, ' depth ',":L. y
end.

dat=. x,LF,LF,tag,LF,LF,dat
s=. 1{a.
jdb_wd 'textview *',s,'view',s,s,dat
)
