NB. examples of wd 'sm'

NB. get which window is active:
wd 'sm get active'

NB. get text and selection for given window
NB. also file name for edit:
wd 'sm get term'
wd 'sm get edit'

NB. get xywh of windows:
wd 'sm get xywh'

NB. set input focus:
wd 'sm focus term'     NB. same as wd 'sm act'
wd 'sm focus edit'

NB. set term prompt:
wd 'sm prompt *   i.2 3'

NB. set selection in window:
wd 'sm set edit select 29 46'

NB. set text in window - this will replace
NB. any existing text in term:
wd 'sm set term text *How grand to be a Toucan',LF,'Just think what Toucan do.'

NB. set window positions (-1 means leave unchanged):
wd 'sm set term xywh 0 0 500 500'
wd 'sm set term xywh 20 20 -1 -1'
wd 'sm set term xywh -1 -1 -1 600'
