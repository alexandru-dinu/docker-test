import random
import os, sys

x = [random.uniform(0, 10) for _ in range(1000)]

print(f'mean={sum(x)/len(x):.3f}')

print(os.path.realpath('.'))
