from random import randint

flag = ""
a = randint(1, ?)
encrypted_flag = []

for char in flag:
    x_encrypted_value = ord(char) ^ a
    encrypted_flag.append(str(x_encrypted_value))

print(encrypted_flag)

#encrypted_flag = ['63960', '63940', '63937', '63951', '63960', '63946', '63991', '63933', '63955', '63930', '63993', '63935', '63929', '63929', '63935', '63976', '63955', '63933', '63931', '63955', '63998', '63933', '63930', '63972', '63931', '63985']