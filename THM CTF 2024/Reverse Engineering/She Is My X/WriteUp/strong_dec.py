encrypted_flag = ['134', '162', '159', '153', '134', '148', '177', '230', '190', '190', '141', '229', '194', '233', '141', '233', '188', '185', '168', '179', '170', '229', '235', '234', '188', '141', '180', '234', '168', '141', '229', '194', '235', '231', '141', '231', '229', '167', '170', '235', '182', '141', '180', '190', '230', '228', '175']

decrypted_flag = []
for shift in range(100):
	for a in range(500):
		for value in encrypted_flag:
				encrypted_value = int(value)
				scissor_decrypted_value = (encrypted_value - shift) % 256
				x_decrypted_value = scissor_decrypted_value ^ a
				print(chr(x_decrypted_value), end="")
		print("\n")