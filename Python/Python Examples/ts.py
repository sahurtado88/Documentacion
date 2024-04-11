from copy import copy, deepcopy

list_1 = [1, 2, [3, 5], 4]

## shallow copy

list_2 = copy(list_1) 

list_2[3] = 7

list_2[2].append(6)

list_2    # output => [1, 2, [3, 5, 6], 7]

list_1    # output => [1, 2, [3, 5, 6], 4]

## deep copy

list_3 = deepcopy(list_1)

list_3[3] = 8

list_3[2].append(7)

list_3    # output => [1, 2, [3, 5, 6, 7], 8]

list_1    # output => [1, 2, [3, 5, 6], 4]