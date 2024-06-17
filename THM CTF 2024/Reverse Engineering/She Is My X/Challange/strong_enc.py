from random import randint

flag = "THMCTF{h3h3_1_l0v3_7hm}"
a = randint(1, 500)
shift = randint(1, 100)
encrypted_flag = []

for char in flag:
    x_encrypted_value = ord(char) ^ a
    scissor_encrypted_value = (x_encrypted_value + shift) % 256
    encrypted_flag.append(str(scissor_encrypted_value))

print(encrypted_flag)

#encrypted_flag = ['134', '162', '159', '153', '134', '148', '177', '230', '190', '190', '141', '229', '194', '233', '141', '233', '188', '185', '168', '179', '170', '229', '235', '234', '188', '141', '180', '234', '168', '141', '229', '194', '235', '231', '141', '231', '229', '167', '170', '235', '182', '141', '180', '190', '230', '228', '175']