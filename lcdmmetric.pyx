import numpy as np
from libc.math cimport sin, cos, sqrt, acos, sinh, cosh

def LCDMmetricsq (double[:] x, double[:] y):
    #cdef int n = x.shape[0]
    cdef double res = 0
    #cdef double resbis = 0
    cdef double s1=x[0] 
    cdef double s2=y[0] 
    cdef double ra1=x[1] 
    cdef double ra2=y[1] 
    cdef double dec1=x[2] 
    cdef double dec2=y[2]
    cdef double costheta=sin(dec1)*sin(dec2)+cos(dec1)*cos(dec2)*cos(ra1-ra2)
    res= s1**2+s2**2-2.0*s1*s2*costheta
    return res

