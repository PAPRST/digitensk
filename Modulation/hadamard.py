#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 30 23:00:17 2021

@author: nats
"""

# Walshemy

import numpy as np
import matplotlib as mp
import matplotlib.pyplot as pyplt
import math

def had_sylv_matrix(order):
    # First Hadamard matrix
    # 1 1
    # 1 -1
    h2 = np.array([[1, 1],[1, -1]])
    ht = h2
    if order == 1:
        return h2
    for i in range(3, order+1):
        ht = np.kron(h2,ht)
        
    return ht

def check_corr(hm):
    nbseq = hm.shape[0]
    corr_stat = np.zeros((nbseq, 2))
    for i in range(0,nbseq):
        acorr = np.correlate(hm[i], hm[i], "same")
        first_ind = np.argmax(acorr)
        first_max = acorr[first_ind]
        acorr[first_ind] = 0
        second_max = acorr[np.argmax(acorr)]
        corr_stat[i][0] = first_max
        corr_stat[i][1] = first_max - second_max
        
    return corr_stat

if __name__ == "__main__":
    a = had_sylv_matrix(12)
    b = check_corr(a)