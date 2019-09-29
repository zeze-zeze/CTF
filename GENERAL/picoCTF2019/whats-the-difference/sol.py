#coding=utf-8

cat = open('./cattos.jpg').read()
kit = open('./kitters.jpg').read()

finish = True
diff = []
# 49733 87662 162649
for i in range(len(cat)):
  if cat[i] != kit[i]:
    if finish:
      start = i
      finish = False
  else:
    if not finish:
      end = i
      diff += [[start, end]]
      finish = True

flag = ''
for d in diff:
  for i in range(d[0], d[1]):
    flag += cat[i]
print flag
