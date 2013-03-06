NB. table
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the QTableWidget
NB.
NB. rows, cols are the data size
NB. headers do not include the top left cell
NB.
NB. cell types:
NB.  0   text
NB.  100 checkbox
NB.
NB. cell align:
NB.  0 left
NB.  1 center
NB.  2 right
NB.
NB. set parameters:
NB.   data                 - ravelled data
NB.   hdr                  - column headers
NB.   lab                  - row labels
NB.   cell row col value   - cell value
NB.   block row col rows cols values  - block values
NB.
NB. following are singleton or one per column:
NB.   hdralign  - column header align (make header first)
NB.
NB. following are singleton, one per column, or one per ravelled data:
NB.   align - alignment   (default left)
NB.   edit  - if editable (default 1)
NB.   type  - cell type   (default 0)
NB.
NB. set size parameter - this resets the table:
NB.   size rows cols

coclass 'qtdemo'

NB. =========================================================
Dat=: 0 : 0
0 11 8 19 "USA"
0 6 9 15 "Japan"
1 2 7 9 "Germany"
0 5 12 17 "France"
)

NB. =========================================================
table=: 3 : 0
wd 'pc table'
wd 'cc pac table 4 5'
wd 'set pac hdr Select Hire Lease Total Origin'
wd 'set pac hdralign 1 1 1 1 0'
wd 'set pac type 100 0 0 0 0'
wd 'set pac align 1 2 2 2 0'
wd 'set pac edit 1 1 1 0 0'
wd 'set pac lab Ford Toyota "Mercedes Benz" Peugot'
wd 'set pac data *',Dat
wd 'pmovex 100 10 500 200'
wd 'pshow'
)

NB. =========================================================
table_close=: 3 : 0
wd 'pclose'
showevents_jqtide_ 0
)

NB. =========================================================
showevents_jqtide_ 2
table''
