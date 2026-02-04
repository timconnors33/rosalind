with open('Counting-Point-Mutations/input.txt') as f:
    strand_1 = f.readline().strip()
    strand_2 = f.readline().strip()
    
mutations = 0
for i in range(0, len(strand_1)):
    if strand_1[i] is not strand_2[i]:
        mutations += 1

print(mutations.__repr__())