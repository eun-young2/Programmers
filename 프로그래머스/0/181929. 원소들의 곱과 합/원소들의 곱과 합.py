def solution(num_list):
    multi = 1
    add = 0
    for i in num_list:
        multi *= i
        add += i
    if multi < add**2:
        return 1
    else:
        return 0
  