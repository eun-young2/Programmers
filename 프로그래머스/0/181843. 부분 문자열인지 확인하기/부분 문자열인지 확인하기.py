def solution(my_string, target):
    for i in range(len(my_string)):
        print(i)
        if target in my_string:
            return 1
        else:
            return 0