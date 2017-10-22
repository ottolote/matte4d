def f(x):
    return x**3 - 7

def f_d(x):
    return 3*x**2

def newton(x_n):
    return x_n - f(x_n)/f_d(x_n)

# start iterating from s = 1
s = 1

s_prev = 0

# Run until s = s_prev
while s != s_prev: 
    s_prev = s
    s = newton(s)

print('%.3f' % s)
