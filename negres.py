# -*- coding: utf-8 -*-
#!/bin/python
"""
P=VI
I=P/V

I=V/R
RI=V
R=V/I

R=V/(P/V)
R=V**2/P
"""
from fractions import Fraction as f
import sys

if __name__ == '__main__':
    p = f(sys.argv[1])
    print "%.0fW:" % p
    for vin in range(3, 13):
        i = p/vin
        r = vin/i
        assert r == vin/(p/vin) == (vin**2)/p
        print u"%dV %.2fA %.1fΩ" % (vin, i, r)
