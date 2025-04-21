def solution(my_string, index_list):
    answer = ''
    for i in index_list:
        what = my_string.find(my_string[i])
        answer += my_string[what]
    return answer