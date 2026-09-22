10/28/21 





Introduction to Computer and Network Security _Silvio Ranise_ [ silvio.ranise@unitn.it or _<u>ranise@fbk.eu</u>_ ] 





- § Basic notions 

- § Authentication I 

- § Cryptography 

- § Applications of cryptography 





<!-- Start of picture text -->
1<br><!-- End of picture text -->

1 

10/28/21 



<!-- Start of picture text -->
2<br><!-- End of picture text -->







<!-- Start of picture text -->
Information based assets stored,<br>transmitted and processed  with<br>the use of ICT techniques<br>Information  Non-information<br>based assets  based assets<br>stored,  vulnerable to<br>transmitted and  threats arising<br>processed  when using ICT<br>without  the use of  techniques<br>Information ICT techniques ICT  Cyber<br>Security Security Security<br>Computer  Network<br>https://www.researchgate.net/publication/2811070 Security Security<br>85_From_Information_Security_to_Cyber_Security_ 3<br>Cultures_Organizations_to_Societies<br><!-- End of picture text -->



<!-- Start of picture text -->
3<br><!-- End of picture text -->

2 



<!-- Start of picture text -->
*.. / Theresecurity, is noonly such varying thing as perfectlevelssecurity, is noonly such varying thing as perfectlevels is noonly such varying thing as perfectlevels noonly such varying thing as perfectlevelsonly such varying thing as perfectlevels such varying thing as perfectlevels varying thing as perfectlevels thing as perfectlevelslevels of<br>+ be y insecurity.<br>CP<br><!-- End of picture text -->



<!-- Start of picture text -->
*.. / Theresecurity, is noonly such varying thing as perfectlevelssecurity, is noonly such varying thing as perfectlevels is noonly such varying thing as perfectlevels noonly such varying thing as perfectlevelsonly such varying thing as perfectlevels such varying thing as perfectlevels varying thing as perfectlevels thing as perfectlevelslevels of<br>+ be y insecurity.<br>CP<br>(\ i fs tj : AZQUOQTES<br>(Nr~\>r~\>\> . Highly Negligible | MarginalSeverity| Seri us o f Impact | Critical | Catastrophic<br>is @>~ Risk Probabl anal<br>os Probable ae<br>Vullnegavilit ia ia _Probeble<br>Improbable i<br>= %<br>.<br>s 6. 2<br>Information Hackers S<br>security<br>Denial<br><!-- End of picture text -->



<!-- Start of picture text -->
(\<br>(Nr~\>r~\>\> .<br>is @>~ Risk<br>os<br>Vullnegavilit ia ia<br><!-- End of picture text -->



10/28/21 



# § Security **policy** 

§ The rules and requirements established by an organization that governs the acceptable use of its information and services, and the level and means for protecting the confidentiality, integrity, and availability of its information 

https://csrc.nist.gov/Glossary/?term=1268#AlphaIndexDiv 

# § Security **mechanism** 

§ A device or function designed to provide one or more security services usually rated in terms of strength of service and assurance of the design. 

§ Implementation of a security policy 

https://csrc.nist.gov/Glossary/?term=1262#AlphaIndexDiv 

# § Security **service** 

§ A capability that supports one, or more, of the security requirements (Confidentiality, Integrity, Availability). Examples of security services are key management, access control, and authentication. 

https://csrc.nist.gov/Glossary/?term=1268#AlphaIndexDiv 

**6** 



# § Define the following notions 

- § Information security 

- § Computer security 

- § Network security 

- § Cyber security 

# § Define 

- § Confidentiality 

- § Integrity 

- § Availability 

   - § Authenticity 

   - § Non-repudiation 

# § What is the difference between 

- § Cyber security 

- § Cyber security readiness/posture 

# § What is the difference between 

# § Give examples for 

   - § Confidentiality § Integrity § Availability 

- § Security 

- § Reliability 

**7** 

4 

10/28/21 



- § Define the notions of § Vulnerability 



<!-- Start of picture text -->
§ Define the notion of risk<br><!-- End of picture text -->



<!-- Start of picture text -->
§ Threat<br><!-- End of picture text -->

- § Exploit 

   - § Definition the notions of § Likelihood 

      - § Impact 

- § Give examples of § Vulnerability § Threat 



<!-- Start of picture text -->
§ Risk matrix<br><!-- End of picture text -->

- § Define the attribution problem 



<!-- Start of picture text -->
8<br><!-- End of picture text -->



- § What is a security policy? 

- § What is a security mechanism? 

- § What is a security service? 

   - § Give examples of § Security policy 

      - § Security mechanism § Security service 

- § How do security policies relate to Confidentiality, Integrity and Availability? 



<!-- Start of picture text -->
9<br><!-- End of picture text -->

5 









<!-- Start of picture text -->
WORST)<br>— cH<br>2016<br>seen a a -eee es F 4<br>RANK PASSWORD Phonon ome<br>es a<br>a Ser<br>5s football 2A an<br>cow =<br>a<br>ona porters<br>A GLEED ay Tus overaahsfpeonteuse one of the 25<br>4er)aabe123 ay ov she<br>° retsepptacesoneSpasoa<br>a eng ereeyene ere<br>7 = ¢ Eee<br>25 passwords ry Morgan Stain, CEO of SplashData<br>: << 3 SIMPLE8  TIPS FOR BETTER PASSWORDSpe<br>=a TL ses<br>12 4<br>pects ememmow , Menborgmnmtna,<br>—— - : —<br>(&) Teamsid)|) (erteamsitcomWorw.teamsid.com |<br><!-- End of picture text -->



<!-- Start of picture text -->
gooconosssoooo0oUNCOMMON |, googgoooo~28 BITSOF ENTROPY | | WASTROUGADOR.IT TROMBONE?AND ONENO,OF<br>BASE WORD _ | " etoso a \ Ng<br>—a ier we ee Mescsm ||\are cn ~<br>Tr@ub4dor &3 100 GuESES sec<br>a ne a 7 ob ( PLAUSIBLE ATTACK ON A WEAK REMOTE<br>CAPS? COMMON | | Beta Pace a ox oor<br>: PUNCTUATION ges ‘ype<br>Cog aoe sear oy,” goog EASY HARD<br>1g ONLY ONE OF A Few COMMON FORMATS)<br>~ 4H BITS OF ENTROPY —— THATSA<br>ooooooo0000 4 pata Oo<br>correct horse batteni] stople noosnenoano iF ,)CORRECT.“ O<br>gogq00 qgocoon aogoos eadeeo) | aoAcodaqnan ian *<br>1000 GUESSES /SEC<br>oN “—FOUR RANDOM; ] ; oat 2'=550 YEARSi  AT (a<br>COMMON WORDS ee bation Td REMEMBER:<br>HARD MEMORIZEO IT<br>THROUGH 720 YEARS<br>EVERYONE TO USE PASSWORDSOF EFFORT, THATWE'VE ARESUCCESSFULLYHARD FOR TRAINEDHUMANS<br>TO REMEMBER, BUT EASY FoR COMPUTERS Tb GUESS.<br><!-- End of picture text -->



<!-- Start of picture text -->
Input Hash sum<br>Hash DFCD3454<br>Thee redred ffox Hash<br>runs across function 52ED879E<br>the ice<br>The red fox<br>walks across free [46042841<br>the ice unction ©<br>Password Hash Salting<br>Hashing<br>User Password Salt Added Algorithm Hashed Password + Salt<br>\<br>yrtZd<br>\ Password Store<br>£53107b3a79cc2£78b9526aa6bd40c34<br>yrtZd<br>om" Wordfence’ wordfence.com/learn @<br><!-- End of picture text -->







<!-- Start of picture text -->
|<br>om@etsl<br>KNOW ARE [=<br>@<br><!-- End of picture text -->



<!-- Start of picture text -->
AUTHENTICATION (1)<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->

10/28/21 



- § Define the notion of hash function and its main properties 

   - § Ease of computation 

   - § Compression 

   - § One-way 

   - § Weak collision resistance 

      - § How do you protect a password file with hashing and salting 

         - § Explain what is salting and why it is needed besides hashing 

         - § Describe the structure of a password file 

            - § Can salts be stored in clear? 

   - § Strong collision resistance 

- § Give an example of a weak and an example of a strong hash function available 

- § Describe a credential stuffing attack 

   - § How organizations can mitigate this attack? 



<!-- Start of picture text -->
16<br><!-- End of picture text -->



- § What is Multi Factor Authentication? 

- § How does Time-Based One-Time Password work? 

   - § What is a Single Sign On Experience? 

   - § What are the pros and cons of Single Sign On? 

- § What is an authenticator? 

- § Describe the three assurance level for authentication 

**17** 

9 

10/28/21 



<!-- Start of picture text -->
18<br><!-- End of picture text -->







<!-- Start of picture text -->
Cryptography<br>Kerchhoff’s principle<br>Plaintext Ciphertext<br>A cryptographic system<br>cipher<br>should be secure even if<br>everything about the system<br>except the encryption key is<br>public knowledge<br>key<br>19<br><!-- End of picture text -->





<!-- Start of picture text -->
19<br><!-- End of picture text -->

10 



<!-- Start of picture text -->
DES | Symmetric Keys<br>TripleDES @ Encryption and decryption use the same key.<br>AESF SkyView: Partners Ti$wPO*Ba'lyUdSL; SkyView Partners<br>Encrypt] J jh*7GVdaydh. Sent<br>RCS<br>—7a Asymmetric@ Encryption andkeysdecryption use different keys, a public key and a private key<br>Elliptic<br>; Curve (EncryptEnciyrt ) FOKT*@UKISS7xdf"tk*(&.uk4789kds0 cu<br>SkyView Partners ce Privateee oePublic SkyView Partners<br>kjk*jd7k% TNw6f7 iit<br>Small Small .<br>random key random key ibb bits all<br>Plaintext<br>Key Encryption<br>(K) algorithm<br>Keystream Keystream<br>(pseudo-random string) (pseudo-random string)<br>Plaintext { { Ciphertext<br>——>( ; oHCiphertextCiphertext + \———_»Plaintext \———_»PlaintextPlaintext —>bb bits<br><!-- End of picture text -->



<!-- Start of picture text -->
Small Small<br>random key random key<br>Keystream Keystream<br>(pseudo-random string) (pseudo-random string)<br>Plaintext { {<br>——>( ; oHCiphertextCiphertext + \———_»Plaintext \———_»PlaintextPlaintext<br><!-- End of picture text -->



<!-- Start of picture text -->
.<br>ibb bits all<br>Plaintext<br>Key Encryption<br>(K) algorithm<br>Ciphertext<br>—>bb bits<br><!-- End of picture text -->













<!-- Start of picture text -->
ASYMMETRIC CIPHERS:: RSA<br><!-- End of picture text -->



<!-- Start of picture text -->
Public/Insecure Channel 2<br>C3 M=M<br>Plaintext Encryption Decryption Plaintext<br>Cc<br>Key Source Key Source<br>(Sender) (e, N) (d. N) (Receiver)<br>(e,d,Nyek<br><!-- End of picture text -->







<!-- Start of picture text -->
a<br>K=B’ mod p K=A® mod p<br>K = (g® mod p)? mod p K = (g? mod p)® mod p<br>i<br><!-- End of picture text -->



10/28/21 



- § What are the properties that cryptography aim to guarantee and how? 

      - § What is the purpose of key management? 

   - § Data confidentiality 

   - § Data integrity 

   - § Data origin authentication 

- § Define the notion of cryptosystem 

   - § Give an example of a substitution cipher 

   - § Give an example of a transposition cipher 

- § Explain the notion of computational difficulty in the context of cryptography 

- § Describe the Kerckhoffs principle 



<!-- Start of picture text -->
24<br><!-- End of picture text -->



- § Define the notion of symmetric key cryptography 

- § Describe two types of symmetric key cryptography: 

   - § Stream ciphers 

      - § Define the notion of asymmetric or public key cryptography (PKC) 

      - § Give two examples of PKC and on which mathematical problems they are based 

   - § Block ciphers 

- § What is DES? What is AES? How are they related? 

- § Describe the Diffie-Hellman key exchange protocol 

- § Describe the Men-In-the-Middle attack to the Diffie-Hellman protocol 



<!-- Start of picture text -->
25<br><!-- End of picture text -->

13 









<!-- Start of picture text -->
Public Key Infrastructure<br>§<br>EP Certificate Public Key ©,<br>Certification= AuthorityY) | Request is OK 2 Verification Authority<br>Certificate Registration Authority<br>ER T &: ; a at| -<br>apenaeveT= dX]<br>Sender Recipient<br><!-- End of picture text -->





<!-- Start of picture text -->
Certificate:<br>Data:<br>Version: 3 (0x2)<br>Serial Number: 1 (0x1)<br>Signature Algorithm: miSWithRSAEncryption<br>Issuec: C=ZA, ST=Westecn Cape, L=Cape Town, O=Thawte Consulting cc,<br>OU=Cervtifcication Services Division,<br>CN=Thawte Server CA/Email=server-certs@thaute-com<br>Validity<br>Not Before: Aug 1 00:00:00 1996 GNT<br>Not After :; Dec 31 23:59:59 2020 GMT<br>Subject: C=ZA, ST=Westerm Cape, L=Canpe Tow, O=Thawre Consulting cc,<br>O0U-Certification Services Division,<br>CN-Thawte Server CA/Email-server-—certs@thavte.com<br>Subject Public Key Info:<br>Public Key AlgorithIm: rsaEncryption<br>RSA Public Key: (1024 bit)<br>Modulus (1024 bit):<br>00:09:09: 50:6e:c0:££:56:6bie6:cf:Sdib6zear0cs<br>66:75: 47:82: aa:c02:da:64:25:Cc:a6:042:47:5lidaz:<br>B5:bS: 20: 74:94:86: le:Of: ?75:c9:e9:082612r5s062<br>6d: 30: 6e:15:19:02:e9:52:c0:62:db: 4d:99:9ese2s<br>6a: 0c: 44:38: cd: fe:be:¢3:64:09: 70:cS:fezsbli6b:<br>29:D6; 2£:49:00:9b:d4:27:04:25:10:9752f5¢723905<br>6d: cO: 26:42:99: 07: 4c:43: de:c3:05:21:6d:54:9L:<br>Sd:cS: SBrel:ecO:e4:09:Sb:bO0:b8:dcer:bd4:?brdt:36:<br>3a: c2:bS:66:22:12:d6:87:0d<br>Exponent: 65537 (0x10001)<br>XS509v73 extensions:<br>ASOSV3S Basic Constraints: critical<br>CA: TRUE<br>Signature Algorithm: miSWithRsaRncryption<br>O07: fa: 4c: 69: Se: fb: 9S:0c¢: 46:¢¢:05:03:4d:21:30:Gercazd9:<br>a0:6£:49; la: ¢6: da: 51:¢3:60:70:6c:04:6lillial:lazc6:46;<br>3e: 59:43: 7d: 40:95: 34:41: 6b:b7:0b:62:96:7a: 75:Ga:dd:66:<br>$e: 4e:9e: 40: db: aS: cc: 32: 74:b9:66f:Od:ch:e3:63:44:0hrag:<br>8a: 6£: 9a: 29: 9b: 99:18:28: 3b: dl:e3:40:28:9a:Sa:Scerd5:bS:<br>b2:e7?: 75:20: 1b:lb: £6:8b: ca: a4:42: f2:cf:c?:ab: 8d:e9:51:d9:e2:4c:2c:S9:a9sdasb9s£2:19:£9:09:be:a3:££:Gar23:2e:<br>no:<br><!-- End of picture text -->



<!-- Start of picture text -->
( )<br><!-- End of picture text -->



<!-- Start of picture text -->
WEB:5 LETS ENCRYPT (i<br><!-- End of picture text -->





<!-- Start of picture text -->
WW 5 ———————<br>2017 2018 2019 2020<br>200M ct ,<br>&@ Let’s Encrypt<br>WEBSITES SERVED<br>IMPACT ON THE WEB 232,083,900<br>150M<br>As of November 2020, Let's Encrypt serves 232 million websites with 144<br>million active certificates. Since 2013, HTTPS page loads have grown<br>from 25% to 84% globally; it’s close to 92% in the United States.<br>100M<br>ACTIVE CERTIFICATES<br>145,199,800<br>50M<br>REGISTERED DOMAINS SERVED<br>67,793,240<br>}'a<br>i,an Sa oN‘<br>Requesting ‘ 1. Client registers, provides public key f CA \<br>Client 2. Client sends certificate order, provides list of<br>identifiers (e.g. domains) to include in certificate<br>-“-—— = = eeFor each identifier in the order.<br>3. CAee generatesee ~<br>5, Cliemt selects the 4, CA sends token and list of chatenges client can random token<br>HTTP challenge, complete to prove ownership of identifier<br>creates file containing <<br>token and hosts it at 6. Client informs CA that challenge complete<br>/well-known/ nnn EERE cael<br>acme-challenge/ 7. CA verifies that file is reachable<br><token> AA i—_<br>eee = ase e ew ew ee ee ee ss<br>When all identifiers verified:<br>8. Client sends PKCS 10 Certificate Signing Request<br>\  —————9. CA issues certificate ee /<br>= - ‘= _/<br><!-- End of picture text -->



<!-- Start of picture text -->
TLS 1.2 New TLS 1.3<br>Client Hello Client Hello,<br>Key Share<br>Ask Server Hello, Server Hello, Key Share,<br>for Certificate Verify Certificate, Finished<br>Client Key Exchange, HTTP Get,<br>Choose Cipher Spec Finished<br>Change Cipher Spec, HTTP Response<br>Finished<br>HTTP Get,<br>Finished<br>HTTP Response @<br><!-- End of picture text -->





10/28/21 



- § Describe the TLS 1.2 handshake protocol by drawing a message sequence chart and giving a brief description of each step 

      - § Give two examples of TLS vulnerabilities 

      - § Describe how TLS 1.2 and TLS 1.3 differ in particular concerning 

- § How does TLS provide 

   - § Authentication 

   - § Handshake 

   - § Cipher suites 

- § Confidentiality 

- § Integrity ? 



<!-- Start of picture text -->
34<br><!-- End of picture text -->



- § Passwords and TLS are crucial pre-requisite in many use case scenarios and in particular in web services and applications 

- § TLS secures the exchange between a client and a server, in addition it authenticates the server to the client but not _vice versa_ 

- § At that point, for the service to authenticate the user, it asks for providing credentials (passwords plus possibly other authentication procedure) and goes through an authentication process 

- § The client enters user name and credentials in the client that sends them (passwords are hashed and salted) to the server over the secure TLS channel 

   - § If a TLS channel is not in place, it would be like not having a password protecting the account 

- § The server gets such an information and uses it as discussed (retrieving the salt and digest with the user name from the database and then comparing them with the received information) 



<!-- Start of picture text -->
35<br><!-- End of picture text -->

18 



<!-- Start of picture text -->
DrieCarey.it!Carey.it!it! iy aA)44<br>be== aS teeBOF:BOF: “htTT<br>Ce ¥ A<br>a v ie *<br>peoAceOoras getAoAceOoras getAceOoras getAOoras getAras getA getAA o,hehe<br>i eT ets: ae<br>Fol tA<br>et oT *<br><!-- End of picture text -->



<!-- Start of picture text -->
DrieCarey.it!Carey.it!it! iy aA)44<br>be== aS teeBOF:BOF: “htTT<br>Ce ¥ A<br>a v ie *<br>peoAceOoras getAoAceOoras getAceOoras getAOoras getAras getA getAA o,hehe<br>i eT ets: ae<br>Fol tA<br>et oT *<br>How does the certificate work?<br>By Thefalsification. EUfalsification. EU EU Digital COVID COVID Certificate contains a QR code with a QR code with QR code with code with with a digital signature signature to protect protect it against against<br>_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_—_———_—_—_—_—_ fe When the certificate the certificate certificate is checked, checked, the QR code QR code code is scanned and scanned and the signature signature verified.<br>Each issuing body (e.g. a hospital, a test centre, a health authority) has its own digital signature key.<br>nae All of these are stored in a secure database in each country.<br>The European Commission has built a gateway through which all certificate signatures can be<br>——— eytee?tee? gateway,verified acrossas acrossasas this theis EU.not theis EU.notis EU.not EU.notnot necessaryThe personal datatoThe personal datato personal datatoto verify ofthe thedigital certificatesignature. holderThe doesEuropean not passCommission through thealso ofthe thedigital certificatesignature. holderThe doesEuropean not passCommission through thealsothe thedigital certificatesignature. holderThe doesEuropean not passCommission through thealso thedigital certificatesignature. holderThe doesEuropean not passCommission through thealsodigital certificatesignature. holderThe doesEuropean not passCommission through thealso certificatesignature. holderThe doesEuropean not passCommission through thealsosignature. holderThe doesEuropean not passCommission through thealso holderThe doesEuropean not passCommission through thealsoThe doesEuropean not passCommission through thealso doesEuropean not passCommission through thealsoEuropean not passCommission through thealso not passCommission through thealso passCommission through thealsoCommission through thealso through thealso thealsoalso<br>helped Member States to develop national software and apps to issue, store and verify certificates<br>a and supported them in the necessary tests to on-board the gateway.<br><!-- End of picture text -->









<!-- Start of picture text -->
How does the certificate work?<br>By Thefalsification. EUfalsification. EU EU Digital COVID COVID Certificate contains a QR code with a QR code with QR code with code with with a digital signature signature to protect protect it against against<br>fe When the certificate the certificate certificate is checked, checked, the QR code QR code code is scanned and scanned and the signature signature verified.<br>Each issuing body (e.g. a hospital, a test centre, a health authority) has its own digital signature key.<br>nae All of these are stored in a secure database in each country.<br>The European Commission has built a gateway through which all certificate signatures can be<br>eytee?tee? verified acrossasgateway,verified acrossas acrossasas this theis EU.not theis EU.notis EU.not EU.notnot necessaryThe personal datatoThe personal datato personal datatoto verify ofthe thedigital certificatesignature. holderThe doesEuropean not passCommission through thealso ofthe thedigital certificatesignature. holderThe doesEuropean not passCommission through thealsothe thedigital certificatesignature. holderThe doesEuropean not passCommission through thealso thedigital certificatesignature. holderThe doesEuropean not passCommission through thealsodigital certificatesignature. holderThe doesEuropean not passCommission through thealso certificatesignature. holderThe doesEuropean not passCommission through thealsosignature. holderThe doesEuropean not passCommission through thealso holderThe doesEuropean not passCommission through thealsoThe doesEuropean not passCommission through thealso doesEuropean not passCommission through thealsoEuropean not passCommission through thealso not passCommission through thealso passCommission through thealsoCommission through thealso through thealso thealsoalso<br>helped Member States to develop national software and apps to issue, store and verify certificates<br>and supported them in the necessary tests to on-board the gateway.<br><!-- End of picture text -->



