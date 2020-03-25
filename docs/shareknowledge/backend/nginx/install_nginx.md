# Install Nginx with Openssl, Pcre & Zlib

Install Nginx with Openssl, Pcre & Zlib

## Nginx 1.9.11
Nginx 1.9.11 with Openssl-1.1.1d
```shell
wget http://nginx.org/download/nginx-1.9.11.tar.gz
```

Extract
```shell
tar -zxvf nginx-1.9.11.tar.gz
cd nginx-1.9.11
```

Make
```shell
./configure --prefix=/usr/local/webserver/nginx 
            --with-http_stub_status_module 
            --with-http_ssl_module 
            --with-http_v2_module 
            --with-pcre=/usr/local/src/pcre-8.41 
            --with-openssl=/usr/local/src/openssl-1.1.1d
            --with-zlib=/usr/local/src/zlib-1.2.11
```

## Nginx 1.16.1
Nginx 1.16.1 with Openssl-1.0.2t
```shell
wget http://nginx.org/download/nginx-1.16.1.tar.gz
```

Extract
```shell
tar -zxvf nginx-1.16.1.tar.gz
cd nginx-1.16.1
```

Make
```shell
./configure --prefix=/root/webserver/nginx 
            --with-http_stub_status_module 
            --with-http_ssl_module 
            --with-http_v2_module 
            --with-pcre=/usr/local/src/pcre-8.41 
            --with-openssl=/usr/local/src/openssl-1.0.2t 
            --with-zlib=/usr/local/src/zlib-1.2.11
```