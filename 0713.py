# updown game
# 1~100 사이 랜덤한 숫자를 맞추는 게임입니다.
# 숫자를 입력해주세요: 65
# Down
# 숫자를 입력해주세요: 63
# Up
# 숫자를 입력해주세요: 64
# 정답입니다!!!

# import random

# 프로그램이 랜덤한 숫자(1~100) 생성
# answer = random.randint(1,100)
# n = int(input())
# cnt=1
# while n!=answer:
#   if n<answer:
#     print('Up!')
#   else:
#     print('Down!')
#   n = int(input())
#   cnt+=1

# print(cnt,'번 만에 정답입니다!')

# 사용자 수를 입력해주세요: 3
# (플레이어1) 이름을 입력해주세요: 최창규
# (플레이어2) 이름을 입력해주세요: 박근우


import random
print('게임을 시작합니다.')
print('플레이어는 1~10 중 숫자를 선택하고, 컴퓨터가 랜덤으로 선택한 숫자와 더해서 일의자리 수가 큰 사람이 승리합니다.')
n = int(input('사용자 수를 입력해주세요: '))
player = []
playerNumber = []
scores = []
for i in range(1,n+1):
  player.append(input(f'(player{i}) 이름을 입력해주세요: '))

for i in range(n):
  playerNumber.append(int(input(f'({player[i]}) 1~10 사이 숫자를 입력해주세요: ')))

computer = random.randint(1,10)
print('(컴퓨터) 랜덤 숫자 :',computer)
for i in range(n):
  score = (playerNumber[i]+computer)%10
  print(f'({player[i]}) {playerNumber[i]}+{computer}={playerNumber[i]+computer}, {score}점을 획득')
  scores.append(score)

winnerIdx = scores.index(max(scores))
loserIdx = scores.index(min(scores))
print(f'축하합니다!!! 우승자는 [{player[winnerIdx]}]')
print(f'벌칙당첨! 꼴찌는 [{player[loserIdx]}]')