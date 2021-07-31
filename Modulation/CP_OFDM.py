#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul 27 21:44:46 2021

@author: nats
"""

import numpy as np
from numpy.fft import fft, ifft

import matplotlib.pyplot as plt

def circ_corr(x, y):
    return ifft(fft(x) * fft(y).conj()).real

sym1 = np.random.rand(10, 1).flatten()
sym2 = np.random.rand(10, 1).flatten()

lin_corr = np.correlate(sym1, sym2, 'same')
cir_corr = circ_corr(sym1, sym2)

fig,ax = plt.subplots()
line1 = ax.plot(lin_corr, label="Linear TD corr")
line2 = ax.plot(cir_corr, label="Circular FFT corr")

ax.legend()
plt.show()

a = np.hstack((sym1[0:], sym1))
cir2_corr = np.correlate(a, sym2, 'valid')

fig,ax = plt.subplots()
line1 = ax.plot(cir2_corr, label="Circular TD corr")
line2 = ax.plot(cir_corr, label="Circular FFT corr")
line3 = ax.plot(np.pad(cir_corr, [(0, len(cir2_corr) - len(cir_corr))],  mode='constant') - cir2_corr, label="Difference")

ax.legend()
ax.grid()
plt.show()