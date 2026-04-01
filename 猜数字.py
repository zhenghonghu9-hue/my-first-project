import random

# 生成1-100的随机整数
target = random.randint(1, 100)
count = 0

print("欢迎来到猜数字游戏！")
print("我已经生成了一个1-100之间的整数，请开始猜吧！")

while True:
    try:
        guess = int(input("请输入你的猜测："))
        count += 1

        if guess > target:
            print("猜大了")
        elif guess < target:
            print("猜小了")
        else:
            print(f"恭喜你猜对了！你一共猜了{count}次")
            break
    except ValueError:
        print("请输入有效的整数！")
