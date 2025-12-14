label_to_dna = {}

with open('Computing-GC-Content/input.txt') as f:
    cur_label = ''
    for line in f:
        cur_str = line.rstrip()
        if cur_str.startswith('>'):
            cur_label = cur_str.strip('>')
            label_to_dna[cur_label] = ''
        else:
            label_to_dna[cur_label] += cur_str

highest_gc_label = ''
highest_gc_content = -1
for label, dna in label_to_dna.items():
    cur_gc_count = 0
    for c in dna:
        if c == 'C' or c == 'G':
            cur_gc_count += 1
    if len(dna) != 0:
        cur_gc_content = cur_gc_count / len(dna)
        if cur_gc_content > highest_gc_content:
            highest_gc_content = cur_gc_content
            highest_gc_label = label

print(highest_gc_label + '\n' + (highest_gc_content * 100).__str__())