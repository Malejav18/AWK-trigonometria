import time

def factorial (x):
    n=1
    for i in range(1,x+1):
        n*=i
    return n

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
tiempo de ejecucion (5):  3.814697265625e-06
tiempo de ejecucion (50):  5.9604644775390625e-06
tiempo de ejecucion (500):  0.00010395050048828125

Windows
tiempo de ejecucion (5):  5.0067901611328125e-06
tiempo de ejecucion (50):  2.4557113647460938e-05
tiempo de ejecucion (500):  0.00023031234741210938
'''