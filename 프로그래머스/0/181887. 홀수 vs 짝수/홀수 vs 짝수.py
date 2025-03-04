def solution(num_list):
    a = 0
    b = 0
    for i in range(len(num_list)):
        if i % 2 != 0:
            a+= num_list[i]
        elif i % 2 == 0 :
            b+= num_list[i]
    if a>b:
        return a
    elif a<= b :
        return b