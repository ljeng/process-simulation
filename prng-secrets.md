# PRNG Secrets

```python
'''
A demonstration of symmetric-key cryptography using numpy.
Note, numpy random numbers are designed for math, NOT cryptography.
Use a real cryptography module for serious secrets.
'''
import numpy as np
from base64 import b64encode, b64decode 

def encrypt_string_to_cipher_b64(plaintext, secret_key):
    plain_bytes = np.frombuffer(plaintext.encode(), dtype=np.uint8)
    seed = np.frombuffer(secret_key.encode(), dtype=np.uint8)
    prng = np.random.default_rng(seed=seed)
    rand_bytes = prng.integers(0, 255, size=len(plain_bytes), dtype=np.uint8)
    cipher_bytes = np.bitwise_xor(plain_bytes, rand_bytes)
    return b64encode(cipher_bytes)

def decrypt_cipher_b64_to_string(cipher_b64, secret_key):
    cipher_bytes = np.frombuffer(b64decode(cipher_b64), dtype=np.uint8)
    seed = np.frombuffer(secret_key.encode(), dtype=np.uint8)
    prng = np.random.default_rng(seed=seed)
    rand_bytes = prng.integers(0, 255, size=len(cipher_bytes), dtype=np.uint8)
    plain_bytes = np.bitwise_xor(cipher_bytes, rand_bytes)
    plaintext = bytes(plain_bytes).decode()  # back to Unicode
    return plaintext

secret_key = 'mypassword123'
plaintext = "The best defense is not to put it in writing"
ciphertext = encrypt_string_to_cipher_b64(plaintext, secret_key)
print('Ciphertext =', ciphertext)
plaintext2 = decrypt_cipher_b64_to_string(ciphertext, secret_key)
print('Recovered the plaintext?', plaintext == plaintext2)
print('Recovered text:', plaintext2)
```

```
Ciphertext = b'h6NeNTXCXuvJyJLsXliuCyGqY1bSldXZtBK8nSjevYhhZ57w+cNIg211rY0='
Recovered the plaintext? True
Recovered text: The best defense is not to put it in writing
```

```python
'''
A demonstration of symmetric-key cryptography using hashlib.
This is a real cryptographic hash, but my use of it might still be wrong.
Use a real cryptography module for serious secrets.
'''
import numpy as np
from base64 import b64encode, b64decode 
import hashlib

def encrypt_string_to_cipher_b64_hash(plaintext, secret_key, count):
    plain_bytes = np.frombuffer(plaintext.encode(), dtype=np.uint8)
    stretched_key = hashlib.pbkdf2_hmac('sha256', secret_key.encode(), str(count).encode(), 1, dklen=len(plain_bytes))
    rand_bytes = np.frombuffer(stretched_key, dtype=np.uint8)
    cipher_bytes = np.bitwise_xor(plain_bytes, rand_bytes)
    return b64encode(cipher_bytes)

def decrypt_cipher_b64_to_string_hash(cipher_b64, secret_key, count):
    cipher_bytes = np.frombuffer(b64decode(cipher_b64), dtype=np.uint8)
    stretched_key = hashlib.pbkdf2_hmac('sha256', secret_key.encode(), str(count).encode(), 1, dklen=len(cipher_bytes))
    rand_bytes = np.frombuffer(stretched_key, dtype=np.uint8)
    plain_bytes = np.bitwise_xor(cipher_bytes, rand_bytes)
    plaintext = bytes(plain_bytes).decode()  # back to Unicode
    return plaintext

secret_key = 'mypassword123'
plaintext = "The best defense is not to put it in writing"
ciphertext = encrypt_string_to_cipher_b64_hash(plaintext, secret_key, 1)
print('Ciphertext =', ciphertext)
plaintext2 = decrypt_cipher_b64_to_string_hash(ciphertext, secret_key, 1)
print('Recovered the plaintext?', plaintext == plaintext2)
print('Recovered text:', plaintext2)
```

```
Ciphertext = b'g3SQmu2hKC1lDmmv5CxjPlIMyCj9E/vQMWAKw7MoPgKexo0AJsEOMcnPbB0='
Recovered the plaintext? True
Recovered text: The best defense is not to put it in writing
```