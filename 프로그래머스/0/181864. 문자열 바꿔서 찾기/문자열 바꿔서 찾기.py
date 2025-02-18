def solution(myString, pat):
    total = ''
    for i in myString:
        if i == 'A':
            total += 'B'
        else : 
            total += 'A'
    if pat in total :
        return  1
    else : 
        return  0
    