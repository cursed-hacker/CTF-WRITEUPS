---------------------------
---------------------------

# Monke

### Description
> I was playing guitar and then this monkey came and broke all my `strings` 😢

> FLAG FORMAT : grepCTF{...}

### About this challange

> We get a file named "**monke.jpg**"

> As the description says `strings`, if we do

```bash
└─$ strings monke.jpg | tail -1
```
> We get

```
Z3JlcENURntyM2ozY3RfaHVtNG4xdHlfZzBfYjRja190MF9tMG5rM30K
```

> Having no clue i went to this site "**https://www.dcode.fr/cipher-identifier**"

> The probabilities suggests it could be "**Base64 Encoding**"

```bash
└─$ echo Z3JlcENURntyM2ozY3RfaHVtNG4xdHlfZzBfYjRja190MF9tMG5rM30K | base64 --decode
```

> We get

```diff
+ grepCTF{r3j3ct_hum4n1ty_g0_b4ck_t0_m0nk3}
```

---------------------------
---------------------------

# NGGYU

### Description
> FLAG FORMAT : grepCTF{...}

### About this challange

> We get a file named "**nggyu.wav**"

> I opened the audio file in "Sonic Visualiser", added spectrogram from `Pane` tab & few scaling.

![image](https://user-images.githubusercontent.com/23734041/230176866-94752f02-86e0-423d-a308-eae44e4c975e.png)

> We get

```
grepCTF{r1ck_4stl3y_g1v1ng_m3_up}
```

---------------------------
---------------------------

# Royal Steg

### Description
> Then Jesus turned, and seeing them following, said to them, 'what do you SEEK?

> - JOHN 1:38

> FLAG FORMAT : grepCTF{...}

### About this challange

> We get a file named "**steg.jpg**"
