Essentially Ubuntu 22.04 is utilizing OpenSSL 3 which defaults to plugging a TLS security hole from over a decade ago that some enterprise networks have not addressed. I can confirm that this did the trick for me:

In order to fix the issue with WPA2 Wi-Fi connection make sure to update the following configuration:
```bash
/usr/lib/ssl/openssl.cnf
```

And add the missing ones:
```
openssl_conf = openssl_init

[openssl_init]
ssl_conf = ssl_sect

[ssl_sect]
system_default = system_default_sect

[system_default_sect]
Options = UnsafeLegacyRenegotiation
```