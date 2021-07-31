#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 30 23:00:17 2021

@author: nats
"""

# Walshemy

import numpy as np
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
    
if __name__ == "__main__":
    a = had_sylv_matrix(8)