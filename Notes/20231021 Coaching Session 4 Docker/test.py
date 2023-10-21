import math
import os
import random
import re
import sys



N = input("Input here:")

N = int(N)
print(N)
        
if N % 2 == 1:
    print("Weird")
    
elif N % 2 == 0 and (N >= 2) and (N <= 5): 
    print("Not Weird") 
    
elif N % 2 == 0 and (N >= 6) and (N <= 20): 
    print("Weird") 
    
else: 
    print('here bro')
    print("Not Weird")

