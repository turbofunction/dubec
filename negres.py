# -*- coding: utf-8 -*-
#!/bin/python
"""
P=VI
I=P/V

I=V/R
RI=V
R=V/I

R=V/(P/V)
"""
import sys

if __name__ == '__main__':
    p = float(sys.argv[1])
    print "%.0fW:" % p
    for vin in range(3, 13):
        i = p/vin
        r = vin/i
        assert r == vin/(p/vin)
        print u"%dV %.2fA %.1fΩ" % (vin, i, r)
