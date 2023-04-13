# TLS

Transport Layer Security (TLS), formerly known as Secure Sockets Layer (SSL), is a protocol used by applications to communicate securely across a network, preventing tampering with and eavesdropping on email, web browsing, messaging, and other protocols. Both SSL and TLS are client / server protocols that ensure communication privacy by using cryptographic protocols to provide security over a network. 

## symetric encryption

Symmetric encryption uses one key to encrypt and decrypt. If you encrypt a zip file, and then decrypt with the same key, you are using symmetric encryption. Symmetric encryption is also called “secret key” encryption, as the key must be kept secret from third parties.

## Asymetric Encryption

Asymmetric cryptography, also known as public-key cryptography, is a process that uses a pair of related keys -- one public key and one private key -- to encrypt and decrypt a message and protect it from unauthorized access or use.

A public key is a cryptographic key that can be used by any person to encrypt a message so that it can only be decrypted by the intended recipient with their private key. A private key -- also known as a secret key -- is shared only with key's initiator.

ssh keygen genereta two keys id_rsa private key and id_rsa.pub public key (public lock)

![](.\Images\asymmetric.png)


openssl genrsa -out file.key 1024
openssle rsa -in file.key -pubout > file.pem

## Certificate authority (CA)

public key infraestrucutre

*.crm or *.pem certificate(public key) *.key *-key.pem (private key)

