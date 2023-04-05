---------------------------
---------------------------

# Blind

### Description
> Blinding.

> FLAG FORMAT : grepCTF{...}

### About this challange

> We get a file named "**blind.txt**"

> The file contains following data

```
⠞⠓⠑⠀⠋⠇⠁⠛⠀⠊⠎⠀⠞⠼⠚⠼⠚_⠃⠇⠼⠁⠝⠙_⠞⠼⠚_⠎⠼⠉⠼⠉
```

> As soon as i saw the data i knew it was "**Braille**"

> And went to this website "**https://www.dcode.fr/braille-alphabet**"

![image](https://user-images.githubusercontent.com/23734041/230128511-f8f7087e-0f68-4e86-b786-b6adb487dec2.png)

> Copied the data and got the flag

![image](https://user-images.githubusercontent.com/23734041/230128769-695440f0-5b25-4610-a752-92e532172430.png)

```diff
+ grepCTF{t00_bl1nd_t0_s33}
```

---------------------------
---------------------------

# Derailed

### Description
> You have pwned a `Railway` website's database. You have the password.txt file which contains the `password of their users in the line corresponding to the user ID`. An Evil Scientist that goes by the name of `Mr. Fence` took `4 rails` to his different labs. You want to find out his password so that you know where he is headed next. You have to find him fast and apprehend him otherwise the whole world `rots`.

> If I tell you `his user ID is the 75th prime number - 1`, Will You be able to save the world?

> FLAG FORMAT : GREP{}

### About this challange

> We get a file named "**password.txt**"

> The file contains lot of random strings, and after reading the description carefully i did the following.

> I went to line number `378` of file `passwords.txt`, which is `75th prime number - 1`

```
278 : T_OF}ENI_NNfqR{rlQcjeCe_B
```
> After that i went to this site "**https://www.dcode.fr/rail-fence-cipher**"

> `Railway` `Mr. Fence` `4 rails` `75th prime number - 1`

![image](https://user-images.githubusercontent.com/23734041/230145661-97ca49ac-b043-456b-8a8d-0e19dac6dee2.png)
![image](https://user-images.githubusercontent.com/23734041/230145935-637c5fe7-6863-477f-b40b-bad9006a523d.png)

```
TERC{N_Irel_ONQ_cNFfjBeq}
```

> After that i went to this site "**https://www.dcode.fr/rot-cipher**"

> `rot`

![image](https://user-images.githubusercontent.com/23734041/230146947-4685be80-5407-4426-8c42-02ed0655ebeb.png)
![image](https://user-images.githubusercontent.com/23734041/230147003-905ff727-51da-4e0f-b31d-8cca7bd710a9.png)

> We got the flag

```diff
+ GREP{A_Very_BAD_pASswOrd}
```

---------------------------
---------------------------

# NOT 13

### Description
> ROT13 isn't the only substitution cipher out there.

> FLAG FORMAT : grepCTF{...}

### About this challange

> We get a file named "**msg.txt**", which contains folowwing data


```PULGY MQDIY HUPUL DMX WYGX, JUBDGJXGXIL WHMQMDJMBA GPMX. YULKM DJGPGLMDSIG, BIPPW TMXWG PIJXID XMBJMHIBX, YM XILQMD TGDXMKIPIY XGPPID, IX JUBAIG XILQMD SIWY SIMD WIAIG. QLUMB IPXLMJMGD PIJXID LMDID, GAGX TWLMID LMDID MBXGLHIY DGH. BIBJ MH XMBJMHIBX MQDIY. XNG RPWA MD MXD BUX WPOWED LUX, MB PUOGL JWDG, OMXN IBHGLDJULGD MBDXGWH UR DQWJGD. RIDJG HMJXIY BIPPW GLWX, XMBJMHIBX XGYQID PGJXID IPXLMJMGD TGP.```

> I had no clue so i went to this site "**https://www.dcode.fr/cipher-identifier**"

> Probability shows the string might be "**Mono-alphabetic Substitution**"

![image](https://user-images.githubusercontent.com/23734041/230149619-84f44772-ef3f-483e-85f2-b1fccabfc821.png)

```diff
+ grepCTF{its_not_always_rot}
```

---------------------------
---------------------------

# CaeX0R

### Description
> I pressed shift key `10` times and lost the flag. Can you find my flag.

> FLAG FORMAT : GREP{...}

### About this challange

> We get a file named "**enc.py**", which contains folowwing data


```python
#enc.py
from random import *
flag="REDACTED"
a=randint(1,1000)
c=[]
for f in flag:
   c.append(str(ord(f)^a))
print(c)
print(a)
#c=['162', '177', '188', '169', '136', '187', '138', '145', '172', '187','138', '145', '172', '190', '152', '156', '187', '195', '177', '142']
#a=REDACTED
```

> After reading the description we are sure that the flag format will be `GREP{...}`

> And if we see `c.append(str(ord(f)^a))` in code, it is simply doing `xor` with random int  `a`

> To find `a` we can do 

> `5th character from Flag` & `5th position element from c[]`

```python
$ ord("{") ^ 136
243
```

> Now that we have the random integer, i wrote this small python code

```python
c=[162,177,188,169,136,187,138,145,172,187,138,145,172,190,152,156,187,195,177,142]
key = [243]
for index, value in enumerate(c):
   print(chr(value ^ key[0]), end= "")
```
```
QBOZ{Hyb_Hyb_MkoH0B}
```
> Name of the challange is `CaeX0R`, `XOR` is done time for `Caesar Cipher`

> I went to this link "**https://www.dcode.fr/caesar-cipher**"

![image](https://user-images.githubusercontent.com/23734041/230167906-496bd8b2-5938-4bba-95e2-13b2c16c937a.png)

```diff
+ GREP{Xor_Xor_CaeX0R}
```

---------------------------
---------------------------

# CaeX0R 2

### Description
>Ooops, i forgot the shift this time. Can you still figure out my flag.

> FLAG FORMAT : GREP{...}

### About this challange

> We get a file named "**enc.py**", which contains folowwing data

```python
#enc.py
from random import *
flag="REDACTED"
a=randint(1,1000)
c=[]
for f in flag:
   c.append(str(ord(f)^a))
print(c)
print(a)

#c=['313', '296', '295', '304', '274', '280', '263', '280', '263', '310', '315', '310', '316', '345', '268', '263', '310', '302', '345', '296', '276']
#a=REDACTED
```

> After reading the description we are sure that the flag format will be `GREP{...}`

> And if we see `c.append(str(ord(f)^a))` in code, it is simply doing `xor` with random int  `a`

> To find `a` we can do 

> `5th character from Flag` & `5th position element from c[]`

```python
$ ord("{") ^ 274
361
```

> Now that we have the random integer, i wrote this small python code

```python
c=[313,296,295,304,274,280,263,280,263,310,315,310,316,345,268,263,310,302,345,296,276]
key = [361]
for index, value in enumerate(c):
   print(chr(value ^ key[0]), end= "")
```
```
PANY{qnqn_R_U0en_G0A}
```

> Name of the challange is `CaeX0R 2`, `XOR` is done time for `Caesar Cipher`

> I went to this link "**https://www.dcode.fr/caesar-cipher**"

![image](https://user-images.githubusercontent.com/23734041/230171174-f86b9913-b1e7-4847-b2a2-9c36fe44ee0c.png)

```diff
+ GREP{hehe_I_L0ve_X0R}
```
