NB. read the wiki write example

P=: jpath '~temp/t1.xlsx'
<;._2 wd 'xl openfile ',P
wd 'xl opensheet MySheet1'
fixexcel_jqtide_ wd 'xl read 1 1 -1 -1'
