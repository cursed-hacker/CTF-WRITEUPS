---------------------------
---------------------------

# Either or Neither nor

### Description
> Made by MetaCTF

> Oh no! I was working on this challenge and totally forgot to save a backup of the `decryption key!` Do you think you could take a look and see if you can recover it for me?

> NOTE: The flag format is MetaCTF{}

### About this challange

> We get a file named "**blind.txt**"

> The file contains following data

```python
#! /usr/bin/env python

flag = "XXXXXXXXXXXXXXXXXXXXX"
enc_flag = [91,241,101,166,85,192,87,188,110,164,99,152,98,252,34,152,117,164,99,162,107]

key = [0, 0, 0, 0]
KEY_LEN = 4

# Encrypt the flag
for idx, c in enumerate(flag):
    enc_flag = ord(c) ^ key[idx % len(key)]
```

> We have a partial flag in description `flag = "MetaCTFXXXXXXXXXXXXX}"` , the code becomes

```python
#! /usr/bin/env python

flag = "MetaCTFXXXXXXXXXXXXX}"
enc_flag = [91,241,101,166,85,192,87,188,110,164,99,152,98,252,34,152,117,164,99,162,107]

key = [0, 0, 0, 0]
KEY_LEN = 4

# Encrypt the flag
for idx, c in enumerate(flag):
    enc_flag = ord(c) ^ key[idx % len(key)]
```
> If we read the code we have to find the values of `key = [0, 0, 0, 0]`

> If we see this part in code `enc_flag = ord(c) ^ key[idx % len(key)]`, it is performing `xor` of `ASCII value of character in flag` & `key[idx % 4]`

> 1 Lets do first iteration, `ord("M") ^ key[0 ^ 4]` 



