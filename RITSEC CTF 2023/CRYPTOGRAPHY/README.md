---------------------------
---------------------------

# Either or Neither nor

### Description
> Made by MetaCTF

> Oh no! I was working on this challenge and totally forgot to save a backup of the `decryption key!` Do you think you could take a look and see if you can recover it for me?

> NOTE: The flag format is MetaCTF{}

### About this challange

> We get a file named "**chal.py**"

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

> We have a partial flag in description `flag = "MetaCTF{XXXXXXXXXXXXX}"` , the code becomes

```python
#! /usr/bin/env python

flag = "MetaCTF{XXXXXXXXXXXXX}"
enc_flag = [91,241,101,166,85,192,87,188,110,164,99,152,98,252,34,152,117,164,99,162,107]

key = [0, 0, 0, 0]
KEY_LEN = 4

# Encrypt the flag
for idx, c in enumerate(flag):
    enc_flag = ord(c) ^ key[idx % len(key)]
```
> If we read the code we have to find the values of `key = [?, ?, ?, ?]`

> If we see this part of code `enc_flag = ord(c) ^ key[idx % len(key)]`, it is performing `xor` of `ASCII of character in flag` & `key[idx % 4]`

> 1 : Lets do first iteration
 
> `ord("M") ^ key[0 % 4] = 91` becomes `ord("M") ^ key[0] = 91` to find the key we can do `ord("M") ^ 91 = key[0]` `key[0] = 22`

> 2 : Lets do second iteration
 
> `ord("e") ^ key[1 % 4] = 241` becomes `ord("e") ^ key[1] = 241` to find the key we can do `ord("e") ^ 241 = key[1]` `key[1] = 125`

> 3 : Lets do third iteration
 
> `ord("t") ^ key[2 % 4] = 241` becomes `ord("t") ^ key[2] = 101` to find the key we can do `ord("t") ^ 101 = key[2]` `key[2] = 17`

> 4 : Lets do forth iteration
>
> `ord("a") ^ key[3 % 4] = 166` becomes `ord("a") ^ key[2] = 166` to find the key we can do `ord("a") ^ 166 = key[3]` `key[3] = 199`

> Now we have the key `key = [22, 148, 17, 199]`

> Lets write a python code for this 

```python
enc_flag = [91,241,101,166,85,192,87,188,110,164,99,152,98,252,34,152,117,164,99,162,107]

key = [22, 148, 17, 199]

for idx, c in enumerate(enc_flag):
    flag = chr(c ^ key[idx % len(key)])
    print(flag,end="")
```
```diff
+ MetaCTF{x0r_th3_c0re}
```








