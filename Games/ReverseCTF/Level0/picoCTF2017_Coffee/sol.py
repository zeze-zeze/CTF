import base64

var1 = 'eux_Z]\\ayiqlog`s^hvnmwr[cpftbkjd'
var2 = 'Zf91XhR7fa=ZVH2H=QlbvdHJx5omN2xc'
var5 = ''
i = 0
for v1, v2 in zip(var1, var2):
    var5 += var2[ord(var1[i]) - 90]
    i += 1

print(base64.b64decode(var5))

