---------------------------
---------------------------

# Monke

### Description
> I was playing guitar and then this monkey came and broke all my `strings` 😢

> FLAG FORMAT : grepCTF{...}

### About this challange

> We get a file named "**monke.jpg**"

> As the description says `strings`, if we do

```zsh
$ strings monke.jpg | tail -1
```
> We get

```
Z3JlcENURntyM2ozY3RfaHVtNG4xdHlfZzBfYjRja190MF9tMG5rM30K
```

> Having no clue i went to this site "**https://www.dcode.fr/cipher-identifier**"

> The probiblaties suggest it could be "**Base64 Coding**"
