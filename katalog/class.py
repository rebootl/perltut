#!/usr/bin/python
#
#




class B:
    pass



class Artikel:
    def __init__(self):
        self.bez = "Testart. 1"

    def load(self, type):
        mein_b_1 = type()



mein_artikel_1 = Artikel()
print(mein_artikel_1.bez)

mein_artikel_1.load(B)
