# Install Pcre and Zlib for Nginx

Install Pcre and Zlib for Nginx

## Pcre
Pcre-8.41
```shell
wget https://sourceforge.net/projects/pcre/files/pcre/8.41/pcre-8.41.tar.gz
```

Extract
```shell
tar -zxvf pcre-8.41.tar.gz
cd pcre-8.41
```

Make
```shell
./configure && make && make install
```

## Zlib
Zlib-8.41
```shell
wget https://www.zlib.net/zlib-1.2.11.tar.gz
```

Extract
```shell
tar -zxvf zlib-1.2.11.tar.gz
cd zlib-1.2.11
```

Make
```shell
./configure && make && make install
```