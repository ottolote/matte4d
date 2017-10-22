from math import cos

s = 0

# 100000 iterations is overkill and way more than sufficient
for i in range(100000):
    s = cos(s)

# print with two significant digits
print('%.2f' % s)


