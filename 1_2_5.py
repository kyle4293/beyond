"""
ID: billy421
LANG: PYTHON3
TASK: beads
"""

fin = open ('beads.in', 'r')
fout = open ('beads.out', 'w')

n = int(fin.readline())
beads = fin.readline().rstrip()
maxcnt = 0
for i in range(len(beads)):
    if beads[i]=='w':
        continue
    cnt = 1
    left = i-1
    right = i+1
    while True:
        if left==-1:
            left = len(beads)-1
        if right==len(beads):
            right = 0
        if left==i or right==i or left==right:
            if maxcnt<cnt:
                maxcnt = cnt+1
            break
        if beads[i]!=beads[left] or beads[left]=='w':
            cnt+=1
            left-=1
        elif beads[i]==beads[right] or beads[right]=='w':
            cnt+=1
            right+=1
        elif maxcnt<cnt:
            maxcnt = cnt
            break
        else:
            break

if 'r' not in beads and 'b' not in beads:
    maxcnt = len(beads)
ans = str(maxcnt)

fout.write(ans + '\n')
fout.close()

# 29
# wwwbbrwrbrbrrbrbrwrwwrbwrwrrb