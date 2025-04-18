def solution(number):
    answer = 0
    sumn=0
    for i in range(len(number)):
        sumn += int(number[i])
    
    answer = sumn % 9 
        
    return answer