NB. excel write example

P=: jpath '~temp/t1.xlsx'
ferase P

wd 'xl new ',P

wd 'xl sheet MySheet1'
wd 'xl block 1 1 1 5'
wd 'xl align 0 1 2 1 0'
wd 'xl color red green blue orange magenta'
wd 'xl colwidth 5 6 10 8 9'
wd 'xl style 0 1 2 3 1'
wd 'xl data name age city salary rating'

wd 'xl sheet NextSheet2'
wd 'xl block 1 1 3 4'
wd 'xl format "0"'
wd 'xl data ',":,i.3 4

wd 'xl sheet MySheet1'
wd 'xl block 2 1 2 5'
wd 'xl format "" "0" "" "#,##0" "#,##0.00"'
wd 'xl data anne 20 paris 25000 3.14 bob 25 "new york" 30000 2.7'

wd 'xl block 5 1 1 3'
wd 'xl data "<b>Hello</b>" "<b>World</b>" "<b>NASA</b>"'

wd 'xl sheet NextSheet2'
wd 'xl block 5 1 1 1'
wd 'xl data "this text occupies 3 cells"'
wd 'xl mergecells 5 1 1 3'

wd 'xl save'
