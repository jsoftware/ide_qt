NB. J qtide

load 'project'

cocurrent 'z'

S=. BINPATH,'/libjqt.so'

wd=: (S,' wd > i *c *c') cd (;18!:5@(''"_))

glpixels=: (S,' glpixels n *i i') cd (;#)

cocurrent 'base'
