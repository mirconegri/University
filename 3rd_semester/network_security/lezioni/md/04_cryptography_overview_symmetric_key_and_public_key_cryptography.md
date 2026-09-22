10/7/21 







<!-- Start of picture text -->
Introduction to Computer and  Network Security<br>Silvio Ranise  [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or  ranise@fbk.eu ]<br><!-- End of picture text -->

Introduction to Computer and  Network Security _Silvio Ranise_ [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or _<u>ranise@fbk.eu</u>_ ] 





- § Introduction to cryptography § A bit of history § Basic notions § The role of key management 

- § Substitution and transposition 

- § Modern encryption techniques § Symmetric key encryption § Data Encryption Standard (DES) § Advanced Encryption Standard (AES) 

- § Asymmetric key encryption § One-way functions § RSA § Diffie-Hellman 

- S. Ranise - Security & Trust (FBK) **1** 





<!-- Start of picture text -->
1<br><!-- End of picture text -->

1 

I 



Those who are charged with the highest affairs know by experience how important it is to have a very trustworthy person with whom to reveal projects and decisions of the most secret nature, without ever having reasons to regret it.' This is rare, because men so often tend to perfidy, and so secure systems called ciphers have been devised, which would be useful, except for those who manage, through art and ingenuity, to read and interpret them. 1 admit that those in power may be served by those who are expert in such operations, if by their means the schemes and machinations of enemies can be revealed, but in my opinion, it is even more advantageous to be able to communicate our intentions to another, no matter how far away, in a way that no other mortal except the intended recipient of the missive is able to read them. 

This present booklet of mine is a thorough treatment of both aspects of the question, paving the way for and directing the investigation into other people’s secrets, as well as how, as we shall see, to protect secrets of your own. 

The present circumstances persuaded me to send these notes of mine to you. Many friends who are devoted to you exhorted me to do so. I will be delighted if this work pleases you.’ 







<!-- Start of picture text -->
a<br>oa<br><!-- End of picture text -->



<!-- Start of picture text -->
P Ws ; he y<br>toe© 68,8 a<br><!-- End of picture text -->

10/7/21 



- § Cryptography is the science and study of secret writing 

- § Cryptanalysis is the science and study of methods of breaking ciphers 

- § Cryptology: cryptography and cryptanalysis 

- § Today: Cryptography is the study of mathematical techniques related to aspects of information security, such as 

   - § **confidentiality** 

   - § data **integrity** 

   - § entity authentication 

   - § data origin authentication 



<!-- Start of picture text -->
4<br><!-- End of picture text -->

> S. Ranise - Security & Trust (FBK) **4** 



### § Security services provided by cryptographic mechanisms: 

- § Data confidentiality: encryption algorithms hide the content of messages; 

- § Data integrity: integrity check functions provide the means to detect whether a document has been changed; 

- § Data origin authentication: message authentication codes or digital signature algorithms provide the means to verify the source and integrity of a message 



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
5<br><!-- End of picture text -->

3 

10/7/21 



- § A _cryptosystem_ is a 5-tuple ( _E_ , _D_ , _M_ , _K_ , _C_ ) where 

   - § **E** is an _encryption_ algorithm 

   - § **D** is a _decryption_ algorithm 

   - § Kerckhoffs’ principle: do not rely on the secrecy of algorithms; the **key should be the only secret that needs protection** 

- § **M** is the set of _plaintexts_ 

- § **K** is the set of _keys_ 

- § **C** is the set of _ciphertexts_ 

      - § Key management issues: 

         - § Where are keys generated? 

         - § How are keys generated? 

- § Abstractly, E and D can be characterized as functions: 

   - § _E_ : _M_ × _K_ → _C_ **D(E(m,k),k)=m** 

   - § _D_ : _C_ × _K_ → _M_ 

- § Where are keys stored? 

- § How do they get there? 

- § Where are the keys actually used? 

- § How are keys revoked and replaced? 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
6<br><!-- End of picture text -->



<!-- Start of picture text -->
§<br><!-- End of picture text -->

- § A key is an input to a cryptographic algorithm used to obtain confidentiality, integrity, authenticity or other property over some data 

   - § The security of the cryptosystem often **depends on keeping the key secret** to some parties 

   - § The _keyspace_ is the set of all possible keys 

   - For most cryptographic systems the 

   - § _Entropy_ is a measure of the variance in keys cryptographic **keys should be as** § typically measured in bits **random as possible** 

- In other words, the keys should exhibit high **entropy** , i.e. 

- § Keys are often stored in some secure place: the **randomness** collected by an § passwords, on disk keyrings, ... operating system or application for § TPM, secure co-processor, smartcards, ... use in cryptography • Intuitively, randomness is the 

- § ... and sometimes not, e.g., certificates apparent or actual lack of pattern or predictability in events 

- bitmap representations 

- S. Ranise - Security & Trust (FBK) of different keys… **7** 





<!-- Start of picture text -->
7<br><!-- End of picture text -->

4 

10/7/21 



- § The two parties to an exchange must share the same key, and that key must be protected from access by others 

- § Frequent key changes are usually desirable to limit the amount of data compromised if an attacker learns the key 

- § **The strength of any cryptographic system rests with the key distribution technique** 

- § Example approaches for entities A and B: 

   1. A key could be selected by A and physically delivered to B 

   2. A third party could select the key and physically deliver it to A and B 

   3. If A and B have previously and recently used a key, one party could transmit the new key to the other, encrypted using the old key 

   4. If A and B each have an encrypted connection to a third party C, C could deliver a key on the encrypted links to A and B 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
8<br><!-- End of picture text -->



- § An encryption scheme is **computationally secure** if the ciphertext generated by the scheme meets one or both of the following criteria: 

   - § The cost of breaking the cipher exceeds the value of the encrypted information 

   - § The time required to break the cipher exceeds the useful lifetime of the information 

- § Very difficult to estimate the amount of effort required to cryptanalyze ciphertext successfully 

- § Assuming there are no inherent mathematical weaknesses in the algorithm, then a **brute-force approach** is indicated, and so one can make some reasonable estimates about costs and time 

- § **Brute-force approach** = trying every possible key until an intelligible translation of the ciphertext into plaintext is obtained 

   - § _On average, half of all possible keys must be tried to achieve success_ 

S. Ranise - Security & Trust (FBK) 

**9** 

5 



“COMPUTATIONALLY SECURE” IN SHORT 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



CRYPTOGRAPHY IS NO SILVER BULLET 



<!-- Start of picture text -->
@<br><!-- End of picture text -->

10/7/21 



§ Algorithm used to make content unreadable by all but the intended receivers 

- § **E(key,plaintext) = ciphertext** 

- § **D(key,ciphertext) = plaintext** 

- § **Algorithm is public, key is private** 

- § Block vs. Stream Ciphers 

   - § Block: input is fixed blocks of same length 

   - § Stream: stream of bits 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
12<br><!-- End of picture text -->



§ Two types of transformations 

   - § **Substitution** : each element in the plaintext (bit, letter, group of bits or letters) is mapped into another element 

      - § In other words, letters are replaced by other letters 

   - § **Transposition** : elements in the plaintext are rearranged 

      - § In other words, same letters but arranged in a different order 

- § Fundamental requirement: no information shall be lost (i.e., all operations be reversible) 

- § Most encryption systems use multiple stages of substitutions and transpositions 

S. Ranise - Security & Trust (FBK) 

**13** 

7 

10/7/21 





### § In brief 

   - § Substitutes one symbol for another 

   - § The key is the substitution 

- § Longer explanation § A **substitution cipher** is a method of encrypting by which units of plaintext are replaced with ciphertext, according to a fixed system 

   - § The "units" may be single letters (the most common), pairs of letters, triplets of letters, mixtures of the above, and so forth 

   - § The receiver deciphers the text by performing the inverse substitution 

S. Ranise - Security & Trust (FBK) 



### § Substitution cipher 



<!-- Start of picture text -->
B/A A<br>L/N N<br><!-- End of picture text -->



<!-- Start of picture text -->
U U/Z<br>E E/O<br><!-- End of picture text -->



<!-- Start of picture text -->
U/Z Z<br>E/O O<br><!-- End of picture text -->





<!-- Start of picture text -->
14<br><!-- End of picture text -->

§ Every character is replaced with the character, e.g., three slots to the right 



<!-- Start of picture text -->
A B C D E F G H I J K L M N O P Q R S T U V W X Y Z<br>D E F G H I J K L M N O P Q R S T U V W X Y Z A B C<br>§ The key is the  number of characters to shift the cipher alphabet<br><!-- End of picture text -->

- § In the case above three 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
15<br><!-- End of picture text -->

8 

10/7/21 





- § Substitution cipher 



<!-- Start of picture text -->
§ Every character is replaced with the character, e.g., three slots to the right<br>A B C D E F G H I J K L M N O P Q R S T U V W X Y Z<br>D E F G H I J K L M N O P Q R S T U V W X Y Z A B C<br>§ The key is the  number of characters to shift the cipher alphabet Also called<br>§ In the case above three ROTk<br>for ROTATE by k<br>S. Ranise - Security & Trust (FBK) 16<br><!-- End of picture text -->



<!-- Start of picture text -->
16<br><!-- End of picture text -->



## k 

- § Translate all of our characters to numbers: § 'a’ -> 0 'b’->1 'c’->2, ... , 'z’->25 



- § Represent the ROTk encryption function, e(x), where x is the character we are encrypting, as: 

where k is the key (the shift) applied to each letter 

- § After applying this function the result is a number which must then be translated back into a letter 

- § Decryption function 



<!-- Start of picture text -->
d<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
17<br><!-- End of picture text -->

9 

10/7/21 





<!-- Start of picture text -->
“orgursbeprjvgulbh”<br><!-- End of picture text -->



<!-- Start of picture text -->
What is a key in<br>Caesar cipher?<br>Hint : try a brute-force approach<br>1. Consider a new key<br>2. Apply decryption<br>3. Is the obtained cleartext<br>meaningful?<br>4. If not, go back to step 1<br>S. Ranise - Security & Trust (FBK) 18<br><!-- End of picture text -->



<!-- Start of picture text -->
18<br><!-- End of picture text -->





## k 

- § ROTk cipher is probably the easiest of all ciphers to break 

- § Since the shift has to be a number between 1 and 25 (0 or 26 would result in an unchanged plaintext), one can simply try each possibility and see which one results in a piece of readable text 

   - § Brute-force attack 

- § More principled approach 

   - § Calculate the frequency distribution of the letters in the cipher text, i.e. count how many times each letter appears 

   - § **English text has a very distinct distribution that can be used help crack codes** 

      - § ‘e’ is the most common letter (appears almost 13% of times) 

      - § ‘z’ is the least frequent letter (appears only 1% of times) 

   - § Find the shift (i.e. the key) that causes the ciphertext frequencies to match up closely with the natural English frequencies, then decrypt the text using that shift (key) 

S. Ranise - Security & Trust (FBK) 

**19** 

10 

10/7/21 







<!-- Start of picture text -->
1 st column 2 nd column<br>• A associated to 0 • T associated to 19<br>• L associated to 11 • E associated to 4<br>• 0+11 mod 26 = 11  • 19+4 mod 26 = 23<br>associated to L associated to X<br><!-- End of picture text -->

- § It can be seen as a generalization of the Caesar cipher whereby several Caesar ciphers in sequence with different shift values are used 

- § As for the Caesar cipher, assume to associate the letters a, b, c, …, z with the numbers 0, 1, 2, …, 25 



<!-- Start of picture text -->
§ First, select a keyword is selected<br><!-- End of picture text -->

- § Then, write out the keyword repeatedly underneath the plaintext until every plaintext letter has a keyword letter beneath it 

- § Finally, encrypt each plaintext letter using a Caesar Cipher, whose key is the number associated with the keyword letter written beneath it 



<!-- Start of picture text -->
§ Example<br>A T T A C K A T D A W N plaintext<br>L E M O N L E M O N L E keyword repeated to match plaintext length<br>S. Ranise - Security & Trust (FBK)L X F O P V E F R N H R ciphertext 20<br><!-- End of picture text -->



<!-- Start of picture text -->
20<br><!-- End of picture text -->





**A T T A C K A T D A W N** L E M O N L E M O N L E L X F O P V E F R N H R 

- § Notice that the same letter A is encrypted with 4 different letters, namely L, O, E, and N depending on the position of A in the plaintext 

- § Notice that letter T occurs 3 times but it is mapped to 2 different letters 

- § This makes frequency analysis more difficult on this cipher than with Caesar cipher 

- § Since the key is the keyword, its length _l_ determines the size of the key space, namely _l^26_ 

- § For increasing length _l_ of the keyword, brute forcing becomes increasingly complex until it becomes impossible… 

- § … **when the length of the keyword is the same as the length of the plaintext** , a separate Caesar Cipher is used to encrypt each plaintext letter, which makes it impossible to determine the correct plaintext without the key 

   - § In this case, the Vigenère cipher cannot be broken, if additionally the key is used only once 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
21<br><!-- End of picture text -->

11 

10/7/21 





<!-- Start of picture text -->
§<br><!-- End of picture text -->





### § In brief 



<!-- Start of picture text -->
U<br><!-- End of picture text -->



<!-- Start of picture text -->
B U<br>L B<br>U L<br>E E<br><!-- End of picture text -->

- § Scrambles the symbols to produce output 

- § The key is the permutation of symbols 

### § Longer explanation 

- § In a transposition cipher, **the units of the plaintext are rearranged in a different and usually quite complex order** , but the units themselves are left unchanged 

- § Several variants possible 



<!-- Start of picture text -->
E<br><!-- End of picture text -->



<!-- Start of picture text -->
E<br><!-- End of picture text -->

- § Comparison with substitution ciphers 

   - § In a substitution cipher, the units of the plaintext are retained in the same sequence in the ciphertext, but the units themselves are altered 



<!-- Start of picture text -->
22<br><!-- End of picture text -->

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
Nulls for filling up the last<br>row to the exact length of 6<br>(not part of the message,<br>can be randomly selected)<br>Example<br>Plain text : WE ARE DISCOVERED. FLEE AT ONCE<br>Keyword :  Z E B R A S<br>(lenght6)<br>6 3 2 4 1 5<br>Toward the ciphertext using<br>a grid (with 6 columns)<br>Ciphertext :<br>EVLNE ACDTK ESEAQ ROFOJ DEECU WIREE<br><!-- End of picture text -->





- § In a columnar transposition, the **message is written out in rows of a fixed length, and then read out again column by column** , and the columns are chosen in some scrambled order 

- § Both **the width of the rows and the permutation of the columns are usually defined by a keyword** 

- § For example, the keyword ZEBRAS is of length 6 (so the rows are of length 6), and the permutation is defined by the alphabetical order of the letters in the keyword. In this case, the order would be "6 3 2 4 1 5". 



<!-- Start of picture text -->
23<br><!-- End of picture text -->

S. Ranise - Security & Trust (FBK) 

12 



<!-- Start of picture text -->
FROM<br><!-- End of picture text -->

FROM CLASSIC TO MODERN CRYPTO 



<!-- Start of picture text -->
__<br>oo,<br>@<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
OVERVIEW<br><!-- End of picture text -->

OVERVIEW OF MODERN CRYPTOGRAPHY 







<!-- Start of picture text -->
SYMMETRIC<br><!-- End of picture text -->

SYMMETRIC KEY CRYPTOGRAPHY 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
SYMMETRIC<br><!-- End of picture text -->

SYMMETRIC KEY CRYPTO: TYPES 



<!-- Start of picture text -->
@<br><!-- End of picture text -->

# SOME REMARKS ON SYMMETRIC CRYPTOGAPHY 



<!-- Start of picture text -->
SYMMETRIC<br><!-- End of picture text -->





<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
STREAM CIPHERS (1)<br><!-- End of picture text -->



<!-- Start of picture text -->
STREAM CIPHERS (1)<br>rr<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
STREAM<br><!-- End of picture text -->



<!-- Start of picture text -->
STREAM CIPHERS (2)<br>(y»)<br>(>)<br>Bluetooth OO<br>.<br>BLOCK CIPHERS<br><!-- End of picture text -->



<!-- Start of picture text -->
.<br><!-- End of picture text -->



<!-- Start of picture text -->
BLOCK<br><!-- End of picture text -->





<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
SYMMETRIC<br><!-- End of picture text -->

SYMMETRIC KEY CRYPTO: AN EXAMPLE 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
FEISTEL (1973) ei<br>= FE<br><!-- End of picture text -->



<!-- Start of picture text -->
FEISTEL<br><!-- End of picture text -->

10/7/21 





<!-- Start of picture text -->
§<br><!-- End of picture text -->

- § The easiest known way to build a practical DES Cracker is to have it try every key until it finds the right one 

- § EFF DES Cracker consists of an ordinary personal computer with a large array of custom "Deep-Crack" chips 

- § Software parallelize searching for a DES key 

- § A single DES-Cracker chip could find a key by searching for many years 

- § A thousand DES-Cracker chips can solve the same problem in one thousandth of the time 

- § The actual machine EFF built contains about 1,500 chips 

- § **It took** the EFF DES Cracker **<3 days to find a 56-bit key by searching** a total of 

- 17,902,806,669,197,312 keys ( **an average of 88 billion keys per second** ) 

- § **Cost** of the project: **< $250,000** ($80,000 for design, integration, and test; $130,000 for hw) 

- § SW developed in 4-5 weeks; entire project completed within about eighteen months 

S. Ranise - Security & Trust (FBK) 



- § In 1997, NIST initiated a public, 4-1/2 year process to develop a new secure cryptosystem for U.S. government applications (as opposed to the closed process in the adoption of DES 25 years earlier) 



<!-- Start of picture text -->
34<br><!-- End of picture text -->

- § Result was the Advanced Encryption Standard ( **AES** ) that became the official successor to DES in December 2001 

- § AES uses a symmetric key crypto scheme called Rijndael, a block cipher designed by Belgian cryptographers Joan Daemen and Vincent Rijmen 

   - § The algorithm can use a variable block length and key length; the latest specification allowed any combination of keys lengths of 128, 192, or 256 bits and blocks of length 128, 192, or 256 bits 

- § NIST initially selected Rijndael in October 2000 and formal adoption as the AES standard came in December 2001 

S. Ranise - Security & Trust (FBK) 

**35** 

18 



<!-- Start of picture text -->
AES,<br><!-- End of picture text -->



<!-- Start of picture text -->
~ Plasngext<br>7 I = Ciphertext t<br>@<br><!-- End of picture text -->





10/7/21 





### § Also called **Public Key Cryptography (PKC)** 

- § The most significant development in cryptography in the last 300-400 year 

- § First described publicly by Stanford University Prof. Martin Hellman and graduate student Whitfield Diffie in **1976** 

   - § Two-key crypto system in which two parties could engage in a **secure communication over a non-secure communications channel without sharing a secret key** 



<!-- Start of picture text -->
38<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 38<br><!-- End of picture text -->



<!-- Start of picture text -->
§<br><!-- End of picture text -->



- § Main ingredient of PKC: **existence of so-called** **_one-way functions_** , i.e. mathematical _functions_ that are _easy to compute whereas their inverse function is relatively difficult to compute_ 

To be picky, we should be able to quickly invert the function if some additional information becomes § known, e.g. a suitable key.  We call this kind of Examples § _Multiplication vs. factorization_ functions **trapdoor one-way functions** 

   - § Given prime numbers, say 3 and 7, it is easy to calculate the product 

   - § Given number 21 that is a product of two primes, it is not easy to determine the prime factors 

   - § Problem becomes much harder if we start with primes that have, say, 400 digits or so, because the product will have ~800 digits 

- § _Exponentiation vs. logarithms_ 

   - § Take the number 3 to the 6th power; it is relatively easy to calculate 3<sup>6</sup> = 729 

   - § Start with number 729; it is difficult to determine the two integers, _x_ and _y_ s.t. logx 729 = y 

- § **With suitable parameters** , these problems are a basis for many cryptographic algorithms 

- § However, **not all instances of these problems are difficult to solve** 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
39<br><!-- End of picture text -->

20 



<!-- Start of picture text -->
ON<br><!-- End of picture text -->

ON TRAPDOOR ONE WAY FUNCTIONS 





<!-- Start of picture text -->
@<br><!-- End of picture text -->

@ 



<!-- Start of picture text -->
PKC: BASIC IDEA<br><!-- End of picture text -->





<!-- Start of picture text -->
@<br><!-- End of picture text -->

@ 



<!-- Start of picture text -->
PKC:<br><!-- End of picture text -->

PKC: BASIC IDEA (CONT'D) 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
PKC FOR<br><!-- End of picture text -->

PKC FOR DATA CONFIDENTIALITY 





<!-- Start of picture text -->
@<br><!-- End of picture text -->

@ 



<!-- Start of picture text -->
PKC AND<br><!-- End of picture text -->

# PKC AND SIGNATURES 





<!-- Start of picture text -->
PKC<br><!-- End of picture text -->

PKC ALGORITHMS USED TODAY 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
_ @<br><!-- End of picture text -->



<!-- Start of picture text -->
©<br><!-- End of picture text -->



<!-- Start of picture text -->
PKC ALGORITHMS USED TODAY<br><!-- End of picture text -->



<!-- Start of picture text -->
©<br><!-- End of picture text -->

ON PKC AND FACTORISATION 





<!-- Start of picture text -->
©<br><!-- End of picture text -->

ON PKC AND FACTORISATION 





<!-- Start of picture text -->
©<br><!-- End of picture text -->



<!-- Start of picture text -->
ON PKC<br><!-- End of picture text -->



<!-- Start of picture text -->
ON PKC AND FACTORIZATION (CONT'D)<br>Se<br>(<br>_ e<br><!-- End of picture text -->



<!-- Start of picture text -->
e<br><!-- End of picture text -->

10/7/21 



<!-- Start of picture text -->
Recall that<br>“multiplication of two large primes”<br>is  believed  to be a trapdoor one-way function<br>This is so because none has come up with a<br>formal proof but repeated attempts of<br>§ Pick prime numbers  p=11  and  q=3 cryptographers failed to prove the contrary…<br>§ Compute  N=p*q=11*3=33<br>§ Pick  e=3  as it is relatively prime with both  p-1=10  and  q-1=2<br>§ Compute  d  such that  e*d=1 mod ((p-1)*(q-1))<br>§ 3*d = 1 mod (10*2)  a = b mod c  iff<br>§ 3*d = 1 mod 20 there exists  k  such that<br>§ 3*d = 1 + 20*k for some k a=b+c*k<br>§ Find  d  such that  3*d-1  divides 20 or, equivalently,<br>§ By testing  d=1, 2, …,  it is possible to find  d=7  as  3*7-1=20 a-b divides c<br>§ Set  public  key to  (N,e) = (33,3)<br>§ Set  private  key to  d=7<br><!-- End of picture text -->



<!-- Start of picture text -->
50<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 50<br><!-- End of picture text -->





<!-- Start of picture text -->
§ Consider plaintext message  M=7<br>§ Compute the ciphertext  C =  ! " mod N = 7^3 mod 33 = 343 mod 33 = 13<br>§ Check decryption:   M =  # $ mod N = 13^7 mod 33 = 62748517 mod 33 = 7<br>It is possible to avoid the computation of<br>13^7 by exploiting the following equality:<br>a = b*c  mod  n =( b  mod  n )*( c  mod  n ) mod  n<br>S. Ranise - Security & Trust (FBK) 51<br><!-- End of picture text -->



<!-- Start of picture text -->
51<br><!-- End of picture text -->

26 



<!-- Start of picture text -->
RON RIVEST, ADI SHAMIR & LEN ADLEMAN a<br>N<br>RSA TR”) ae<br>public“keye ote x<br>@<br>RON RIVEST, ADI SHAMIR & LEN ADLEMAN a<br>Or & Ory -<br>RSA public-key er ote ; x<br>@<br><!-- End of picture text -->







<!-- Start of picture text -->
The usage domains affected by the vulnerable library<br>Identity documents Trusted Platform Modules<br>(elD, eHealth cards) (Data encryption, Platform integrity)<br>Cl)<br>a=] we<br>Secure browsing<br>Software signing _ —_— (TLS/HTTPS*)<br>@HJ -_- RSA Library. -_- ——z_<br>~~ 6) = = (@amaly<br>Sao—r“*e _— Affected chip J<br>Authentication tokens Programmable smartcards<br>(S-MIME/PGP) 2<br>KW Messagea protection ™<br>\@ Lava]<br>a:<br>° * only a small number of vulnerable keys found<br><!-- End of picture text -->







<!-- Start of picture text -->
INTEGRITY WITH RSA (1)<br>_<br>@<br>INTEGRITY WITH RSA (2)<br>_ 32 Decision<br>@<br><!-- End of picture text -->

10/7/21 



<!-- Start of picture text -->
§<br><!-- End of picture text -->

#### § _RSA (Rivest, Shamir, Adleman)_ 

- § Used in hundreds of software products and can be used for key exchange, digital signatures, or encryption of small blocks of data 

- § Mathematical "trick" of RSA: relatively easy to compute product compared to computing factorizations 

- § RSA uses a variable size encryption block and a variable size key 

- § Key-pair is derived from a very large number, _n_ , that is the product of two prime numbers chosen according to special rules 

   - § Primes may be 100 or more digits in length each, yielding an _n_ with roughly twice as many digits as the prime factors 

   - § **An attacker cannot determine the prime factors of** **_n_ (and, therefore, the private key) from this information alone and that is what makes the RSA algorithm so secure** 

   - § The ability for computers to factor large numbers, and therefore attack RSA scheme, is rapidly improving and systems today can find the prime factors of numbers with more than 200 digits 

   - § Nevertheless, if a large number is created from two prime factors that are roughly the same size, there is no known factorization algorithm that will solve the problem in a reasonable amount of time; a 2005 test to factor a 200-digit number took 1.5 years and over 50 years of compute time 

#### § _DH (Diffie-Hellman)_ 

- § After the RSA algorithm was published, Diffie and Hellman came up with their own algorithm 

- § DH is used for secret-key key exchange only, not for authentication or digital signatures 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
58<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 59<br><!-- End of picture text -->

30 

10/7/21 



<!-- Start of picture text -->
In the fall of 1974,Whitfield Diffie and Martin Hellman met for what was intended to be a<br>short meeting. What transpired was a rich discussion that lasted long into the night, and<br>the forging of an intellectual partnership that would yield groundbreaking insights on<br>which the modern field of cryptography still rests. In 1976,  Diffie and Hellman<br>published the revolutionary paper  New Directions in Cryptography  in<br>Communication of the ACM , which laid the framework for the concepts of public-<br>key cryptography and digital signatures, which today are the most widely used<br>security protocols on the Internet, protecting trillions of dollars of web-based<br>financial transactions each day<br>S. Ranise - Security & Trust (FBK) 60<br><!-- End of picture text -->



- § Mathematical "trick" of DH: 

   - § Relatively easy to compute exponents compared to computing discrete logarithms 

   - § See next slide about basic mathematical notions 

- § DH allows two parties, say Alice and Bob, to generate a secret key § **Exchange information over an unsecure communications channel to perform calculation but eavesdropper, Eve, cannot determine shared secret key based upon this information** 

- § Flow (see next next slide) 



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

**61** 

31 



<!-- Start of picture text -->
BASIC MATH NOTIONS<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
DH: AN OVERVIEW<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
DH<br><!-- End of picture text -->



<!-- Start of picture text -->
Alice Bob<br>a, J, Pp b<br>A=g*modp B=g'modp<br>K =B*modp K =A’ mod p<br><!-- End of picture text -->



<!-- Start of picture text -->
Alice Bob<br>a, J, Pp b<br>A=g*modp B=g>modp<br>K = B* modp raw K =A’mod p<br><!-- End of picture text -->





10/7/21 



- § Security of DH depends on the difficulty of the DLP 

   - § an attacker able to solve DLP could obtain !" and !# from the public keys of A and B, namely  $" = &<sup>'(</sup> mod _N_ and $# = &<sup>')</sup> mod _N_ 

- § The security of the DH protocol is **not known** to be equivalent to the DLP 

- § DH is a key agreement protocol 

   - § Secrecy: assuming that DHP is difficult, an attacker observing the messages exchanged does not learn the key 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
66<br><!-- End of picture text -->



<!-- Start of picture text -->
§<br><!-- End of picture text -->

- § DH does not provide authentication 

   - § Parties do not know whom they are establishing a key with 

- § An attacker _C_ sitting between _A_ and _B_ can mount a Man-In-The-Middle (MITM) attack: 



<!-- Start of picture text -->
x mod<br>g p u mod<br>g p<br>A g xv mod p C g yu mod p B<br>v mod y mod<br>g p g p<br>S. Ranise - Security & Trust (FBK) 67<br><!-- End of picture text -->



<!-- Start of picture text -->
67<br><!-- End of picture text -->

34 

10/7/21 



<!-- Start of picture text -->
§<br><!-- End of picture text -->

- § Avoid to design your own crypto algorithms § **Amateur designs are usually broken quite easily** 

- § DES should no longer be used § An extension of DES (Triple DES using 3 keys and invokes 3 times DES) still used in the financial sector 

- § Recommended key length for block cypher: at least 80/90 bits § Use AES 

- § No provable security for DES and AES § **Only resistant to known attacks** (aiming to reduce the search space of a brute force attack) 



<!-- Start of picture text -->
§ Don’t forget key management !<br>§ How to share the key?  Answer : key distribution techniques (see next slide)<br>§ How to keep the key secret?  Answer : use access control techniques<br>§ With n participants, n 2  keys are needed<br><!-- End of picture text -->



<!-- Start of picture text -->
68<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 68<br><!-- End of picture text -->







- § PKC ¹ RSA: some specific RSA properties do not hold for any PKC system 

- § Provable security by reduction proofs to open problems: factoring or DLP 

- § **Concrete security depends on the state of the art in solving those problems** 

- § DH: only used for key exchange but problems with authenticity 

   - § Beware of **MITM** attack! 

- § Anthropomorphic metaphors may mislead: **stories about Alice & Bob create the illusion that you talk about persons rather than keys** 

S. Ranise - Security & Trust (FBK) 

**69** 

35 

10/7/21 



- § What is a cryptosystem? 

- § Why key management is crucial for cryptography? 

- § What does it mean for a cryptographic technique to be computationally secure? 

- § What are substitution and transposition ciphers?  Given an example for each one. 

- § What is symmetric cryptography? 

- § What are block and stream ciphers? 

- § Why is DES deprecated?  Why is AES still used? 

S. Ranise - Security & Trust (FBK) 









<!-- Start of picture text -->
70<br><!-- End of picture text -->

- § What is asymmetric (or public key) cryptography? 

- § What are the main advantages and disadvantages of symmetric and asymmetric cruptography? 

- § What is RSA and for what it can be used? 

- § What is Diffie-Hellman and for what it can be used? 

   - § What is a possible attack to Diffie-Hellman? 

- § What is a one-way function? 

   - § What is the one-way function used in RSA? 

   - § What is the one-way function used in Diffie-Hellman? 

S. Ranise - Security & Trust (FBK) 

**71** 

36 





> -__Lenstra/VerheulMatted _|_Dato_|SymmeticNegus Key “Group_ EBC Cure | Hash Lenstra Updated **| 2021 | 8** 6_—*|2 ( **1** 416937 1506)614) 153164 **1** 937416 **| 1** 6463172| 164 **|** ECRYPT __—*| 2018-2028| 128 =| 3072 | 256 _—3072_~| <mark>256</mark> 256 | <mark>NistT_ (| 2019-2030] 112 | 2048 | 2242048 | 224224 |</mark> ANSSI | 2021-2030/ 128 | 2048 | 200 2048 | 256 | 256 | NSA | | 072 | 88 88 | Recs7eg | |Pe Bsi | 2020-2022] 128 | 2000 | 250 2000 | 250 | 256 | 



<!-- Start of picture text -->
All key sizes are provided in bits. These are the minimal sizes for security.<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->

a @ 

