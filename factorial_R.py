import time

def factorial (x):
    if(x<=1):
        return 1
    else:
        return x*factorial(x-1)

t0=time.time()
x=factorial(5)
t1=time.time()
print("tiempo de ejecucion (5): ", t1-t0)

t0=time.time()
x=factorial(50)
t1=time.time()
print("tiempo de ejecucion (50): ", t1-t0)

t0=time.time()
x=factorial(500)
t1=time.time()
print("tiempo de ejecucion (500): ", t1-t0)

'''
Resultados: 
tiempo de ejecucion (5):  2.86102294921875e-06
tiempo de ejecucion (50):  0.0001361370086669922
tiempo de ejecucion (500):  0.0008399486541748047

Windows:
tiempo de ejecucion (5):  3.5762786865234375e-06
tiempo de ejecucion (50):  3.218650817871094e-05
tiempo de ejecucion (500):  0.0005970001220703125
'''