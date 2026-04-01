for i in range(1,10): #定义行的循环
    for j in range(1,i+1): #定义列的循环,注意每一个你想是i的话，要写i+1
        print(f"{j}*{i}={i*j}",end=" ") #f 字符串格式化语法 {} 把数值转换成字符串 end=" " 空格结尾不换行
    print() #每一行结束换行