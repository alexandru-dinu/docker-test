import os
import multiprocessing as mp

print(f'main PID: {os.getpid()}')

num_proc = 10

def work(x):
    return os.getpid()

xs = list(range(128))

with mp.Pool(processes=num_proc) as pool:
    ys = pool.map(work, xs)

ys = set(ys)

assert len(ys) == num_proc
assert os.getpid() not in ys

print('workers')
print(ys)
