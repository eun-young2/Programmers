def solution(strArr):
    answer = []
    for i, val in enumerate(strArr):
        if i % 2 != 1:
            answer.append(val.lower())
        else : 
            answer.append(val.upper())
    return answer