import numpy as np
from libc.math cimport sin, cos, sqrt, acos, sinh, cosh

def LCDMmetricsq (double[:] x, double[:] y):
    #cdef double res = 0
    return (x[0])**2+(y[0])**2-2.0*x[0]*y[0]*(sin(x[2])*sin(y[2])+cos(x[2])*cos(y[2])*cos(x[1]-y[1]))
    #return res

