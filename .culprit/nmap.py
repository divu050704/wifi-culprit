file = open('/usr/.culprit/new.txt')
main=file.read()
words=main.split()
final = len(words)
file1 = open('/usr/.culprit/manuf.txt')
main1 = file1.readlines()
final1 = len(main1)
for i in range(final):
    for j in range(final1):
        if words[i] in main1[j]:
            print(main1[j])
        

