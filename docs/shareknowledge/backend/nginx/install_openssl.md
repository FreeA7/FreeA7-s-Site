# Install Openssl for Nginx

Install Openssl for Nginx

## Install & Test Openssl
Openssl-1.1.1d
```shell
wget https://www.openssl.org/source/openssl-1.1.1d.tar.gz
```

Openssl-1.0.2t
```shell
wget https://ftp.openssl.org/source/old/1.0.2/openssl-1.0.2t.tar.gz
```

make & install
```shell
tar -zxvf openssl
cd openssl
make
make test
make install
```

## Link Openssl
Backup old files
```shell
mv /usr/bin/openssl /usr/bin/oldopenssl
```

Openssl-1.1.1d
```shell
ln -s /usr/local/bin/openssl /usr/bin/openssl
```

Openssl-1.0.2t
```shell
ln -sf /usr/local/ssl/bin/openssl /usr/bin/openssl
```

Ln
```shell
ln -s /usr/local/lib64/libssl.so.1.1 /usr/lib64/
ln -s /usr/local/lib64/libcrypto.so.1.1 /usr/lib64/
```

Check version
```shell
openssl version
```

## Possible errors
+ error 1 # Can't locate Module/Load/Conditional.pm in @INC
```shell
yum install -y perl-Module-Load-Conditional
```

+ error 2 # Parse errors: No plan found in TAP output
```shell
yum install -y perl-Test-Simple
```