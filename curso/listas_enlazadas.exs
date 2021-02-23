list = [1, 2, 3, 4, 5]
[head | tail] = list
[head, subhead | tail] = list


lista = [1,2,3,4]
[5 | lista]
#ouput: [5,1,2,3,4]

list1 = [1,2]
list2 = [2,3]
list1 ++ list2
#output [1,2,2,3]

[1,2,3,4] ++ [5]
#output [1,2,3,4, 5]

[1,2,3,4] -- [2,4]
#output [1,3,5]

list1 = [1, 2, 3, 4]
List.first(list1)
#output 1
List.insert_at(list1, 2, "HOLIWI")
#output [1, 2, "HOLIWI", 3, 4]
list1 = [1, 2, 3, 4]
List.delete_at(list1, 2)
#output [1, 2, 4]

length(list1)
#output 4
list = []
length(list)
#output 0
