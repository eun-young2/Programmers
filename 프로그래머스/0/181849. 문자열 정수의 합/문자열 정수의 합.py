def solution(num_str):
    new = str(num_str)
    add = 0
    for i in range(len(new)):
        add += int(new[i])
    return add
    