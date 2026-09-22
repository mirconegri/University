9/29/21 







<!-- Start of picture text -->
Introduction to Computer and Network Security<br>Silvio Ranise  [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or  ranise@fbk.eu ]<br><!-- End of picture text -->

Introduction to Computer and Network Security _Silvio Ranise_ [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or _<u>ranise@fbk.eu</u>_ ] 





- § An introduction to passwords 

   - § History of passwords and lessons learnt 

- § User authentication and digital identity lifecycle 

   - § Enrollment and identity assurance levels 

- § Passwords: attacks and mitigations 

   - § Protecting the password file: hashing & salting 

- § Extensions of passwords 

- § Outsourcing identity management 





<!-- Start of picture text -->
1<br><!-- End of picture text -->

> S. Ranise - Security & Trust (FBK) **1** 

1 

9/29/21 

**2** 



S. Ranise - Security & Trust (FBK) 



- § Passwords dominated human computer authentication for half a century 

- § Despite this, rising consensus that a **more** 

   - § **secure** and 

   - § **user friendly** 

- A secure system might have to track the identities of the users requesting its services 

   - The user **identity** is recorded when **logging** security relevant events in an audit trail 

   - The user **identity** is a parameter in **access control** decisions 

- **Authentication** : process of verifying a user’s identity 



<!-- Start of picture text -->
alternative  should be found<br><!-- End of picture text -->

##### **Example** 

- § Duality between security 

   - § **researchers** focusing on authentication processes 

   - § **practitioners** aiming to protect user accounts and sensitive data 



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

- researchers recommend strict password composition policies 

- • in practice, little evidence that such policies are effective in reducing security issues 



<!-- Start of picture text -->
3<br><!-- End of picture text -->

2 



<!-- Start of picture text -->
[users | [| User 4 |<br><!-- End of picture text -->



<!-- Start of picture text -->
[users | [| User 4 |<br>€<br><!-- End of picture text -->



<!-- Start of picture text -->
A BIT OF HISTORY<br><!-- End of picture text -->





<!-- Start of picture text -->
SITUATION<br><!-- End of picture text -->



<!-- Start of picture text -->
CURRENT<br><!-- End of picture text -->

CURRENT SITUATION 



<!-- Start of picture text -->
€<br><!-- End of picture text -->

9/29/21 



<!-- Start of picture text -->
6<br><!-- End of picture text -->





S. Ranise - Security & Trust (FBK) 



- § In the sixties, passwords were originally added to time sharing operating systems to protect against jokes or **abuse of resources** 

- § Security issues were immediately reported 

   - § cases of guessing passwords 

   - § leak of the master password file stored in clear 

- § In the seventies, passwords were used to protect both resources and sensitive data 

   - § passwords were protected by using **hash** functions (more on this later) 

   - § afterwards, not only hashing but also **salting** was used (again more on this later) 

   - § For a historical overview, refer to the following paper 

https://rist.tech.cornell.edu/6431papers/MorrisThompson1979.pdf 

S. Ranise - Security & Trust (FBK) 

**7** 

4 















<!-- Start of picture text -->
poot:5691UU7prkaswE711ZK§$ 1d?Mgz4XP6FASHQbDOBXOGOb2Er . YhoycvwPgqCCXEhFkQvbJymabyOye<br>root# localhost it<br>C[root@localhost ~1# reserved<br>[root@loca =<br>= ne [root@locafhostpass hash ~1# _ last pass change min day warn |<br>max day inactive |day y<br>expire day<br><!-- End of picture text -->



<!-- Start of picture text -->
 (2)<br><!-- End of picture text -->

AFTER MORRIS WORM (2) 



<!-- Start of picture text -->
AFTER<br><!-- End of picture text -->





<!-- Start of picture text -->
C )<br><!-- End of picture text -->



<!-- Start of picture text -->
sees<br><!-- End of picture text -->

PASSWORDS AND THE WEB sees 





<!-- Start of picture text -->
C )<br><!-- End of picture text -->

9/29/21 



- § Several attempts to make a business out of authentication in the consumer space without too much success 

- § Hardware tokens used as second factor authentication were never widely adopted because of their cost 

- § Smartphones may change this as they may run applications capable of computing or receiving one time passwords as second factors for authentication without the need of buying dedicated hardware 

- § National digital identity infrastructures sponsored by many Member States in Europe obtained different levels of success because of the not always clear business models for identity providers 

   - § An example of this is the _Sistema Pubblico di Identità Digitale (SPID)_ in Italy that was more widely adopted only after the pandemics 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
12<br>https://www.spid.gov.it/en/<br><!-- End of picture text -->



<!-- Start of picture text -->
13<br><!-- End of picture text -->



S. Ranise - Security & Trust (FBK) 

7 







<!-- Start of picture text -->
Something you know Something you own Something you are<br>Password Mobile phone Facial features<br>Passphrase Wearable device Fingerprint<br>Pin Smart card Voice patterns<br>Sequence Token Iris format<br>Secret fact Badge DNA signature<br><!-- End of picture text -->





<!-- Start of picture text -->
ii<br><!-- End of picture text -->







<!-- Start of picture text -->
Applicant<br>-—_—-— Core attributes -——_——<br>and evidence *<br>: collected =<br>—_—_— Individual uniquely<br>» distinguishedgiven population amongor a<br>context<br>><br>e aayvidence i=|2 1 ee<br>Authenticity, validity, and validated [=Q<br>_ accuracy of identity Linkage between claimed<br>information determined ~~ identity and real-life existence of<br>and related to a real-life subject presenting evidence<br>subject Pee confirmed and established Subscriber<br>~<br>Evidence<br>verified B 3G — ~ S<br>=~) arS<br><!-- End of picture text -->





<!-- Start of picture text -->
Individual uniquely<br>~ distinguishedgiven population amongor a<br>context<br>Authenticity, validity, and<br>informationaccuracy determinedof identity »-<br>and related to a real-life<br>subject<br><!-- End of picture text -->







<!-- Start of picture text -->
IDENTITY PROOFING<br><!-- End of picture text -->

IDENTITY PROOFING & ENROLLMENT (3) | eigen | 26ee6 pm an ENROLLMENT: IDENTITY ASSURANCE LEVELS 



© 



















<!-- Start of picture text -->
c<br>Unlocking the value of the digital economy globally N<br>Today, digital identity is seen as an opportunity to drive<br>transformational change for citizens, businesses and -<br>public administrations<br>.<br>The adoption of mobile technology for digital identity *%<br>solutions across governments support and enhance A<br>government performance and delivery and promote a<br>more connected society both at national and cross-border<br>level<br>tustedaigitalEnabled by SHON Seryetyz0 PY H$522ZbM bersicsy soi<br>Through<br>digital nd ation 2 OOM zisisinmsue = ©<br><!-- End of picture text -->

9/29/21 



<!-- Start of picture text -->
• A possible solution to the problem of<br>providing 1 billion people in the<br>world without a legal identity?<br>• What is the impact of not having a<br>legal identity?<br>• Difficulties in accessing basic<br>services such as those of the<br>public administration or<br>financial/banking services<br>https://www.mckinsey.com/business-<br>functions/mckinsey-digital/our-insights/digital-<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) identification-a-key-to-inclusive-growth 22<br><!-- End of picture text -->



<!-- Start of picture text -->
23<br><!-- End of picture text -->





<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

12 



<!-- Start of picture text -->
Combination Combinations per Example Password Space<br>character<br>Lower case only 26 pass 456,976<br>Lower case only 26 password 208,827,064,576<br>_Lowertupper_Lowertupper casecase + digits 6252 PaSSwOrdPassword 218,340,105,584,896$3,459,728,531,456|<br>Lowertupper case + digits + symbols 92 (approx.) PaSSwOrd _5,132,188,731,375,616<br><!-- End of picture text -->



<!-- Start of picture text -->
TechByTom cal<br>@techbytom<br>| did some math.<br>Using AWS p.3 instances to calculate cost, and assuming the<br>attacker has $25:<br>Your 8 character password will probably be cracked in 12<br>minutes or less.<br>4:39 PM - Feb 14, 2019 @<br>© 40 © 33 people are Tweeting about this<br><!-- End of picture text -->



|#|Numbers|Lowercase|MixedCase|Mixed Case+ Numbers|Mixed Case +Numbers + Special|
|---|---|---|---|---|---|
|1|0$|0$|o$|o$|o$|
|2|0$|0$|o$|0$|0$|
|3|0$|0$|O$|o$|O$|
|4|0$|0$|o$|0$|O$|
|5|0$|0$|o$|o$|o$|
|6|0$|0$|O$|0$|0$|
|7|0$|0$|o$|2$|10$|
|8|0$|0$|6$|155 $|965 $|
|9|0$|1$|315 $|12,118 $|94,536$|
|10|0$|16$|16,391 $|945,165 $|9.3 M$|
|11|0$|416$|852,312 $|73.7 M$|907.9 M$|
|12|0$|10,820 $|44.3 M$|6 BS|89 BS|
|13|.1$|281,330 $|2BS|449 BS|8.7 T$|
|14|11$|7.3M$|120 BS|34 TS|854 TS|
|15|113$|190.2 M$|6.2 TS|-|-|
|16|1,134$|5 BS|324 T$|-|-|
|17|11,339$|129 BS|&|+|=|
|18|113,387$|33T$|-|-|-|
|19|1,1 M$|86 TS|-|-|-|
|20|11.3M$|-|-|-|-|











<!-- Start of picture text -->
DICTIONARY:F] AN EXAMPLE =aaaae =eae =aoe eee<br>root xc3511 admin1 password<br>root vizxv administrator 1234<br>root admin 666666 666666<br>admin admin 888888 888888<br>root 888888 ubnt ubnt<br>root xmhdipc root k1v1234<br>root default root Zte521<br>root juantech root hi3518<br>root 123456 root jvbzd<br>root 54321 root anko<br>support support root z1xx.<br>root (none) root JujMko@vizxv<br>admin password root 7JujMko@admin<br>root root root system<br>root 12345 root ikwb<br>user user root dreambox<br>admin (none) root user<br>root pass root realtek<br>admin admini234 root eeee999e<br>root 1111 admin 1111111<br>admin smcadmin admin 1234<br>admin 1111 admin 12345<br>root 666666 admin 54321<br>root password admin 123456<br>root 1234 admin 7ujMko@admin<br>root k1v123 admin 1234<br>Administrator admin admin pass<br>OO service service admin meinsm<br>supervisor supervisor tech tech<br>guest guest mother fucker<br>a guestguest 1234512345 )<br>—<br><!-- End of picture text -->

9/29/21 



### § Set a password _!_ 

- § if there is no password, the attacker does not even have to guess it 

### § Change default passwords _!_ 

- § Often passwords for system accounts have a default value (e.g., admin) 

### § Avoid guessable passwords: 

- § Prescribe a minimal password length 

- § Password format: mix upper and lower case, include numerical and other nonalphabetical symbols 

- § Today **on-line dictionaries** for almost every language exist 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
28<br><!-- End of picture text -->



### § Set a password _!_ 

- § if there is no password, the attacker does not even have to guess it 

### § Change default passwords _!_ 

- § Often passwords for system accounts have a default value (e.g., admin) 

### § Avoid guessable passwords: 

- § Prescribe a minimal password length § Password format: mix upper and lower case, include numerical and other non- <mark>OUTDATED!!!</mark> alphabetical symbols 

- § Today on-line dictionaries for almost every language exist 

S. Ranise - Security & Trust (FBK) 

**29** 

15 



<!-- Start of picture text -->
seuigs 7 a = ~28 BITSOF ENTROPY | | WAS IT TROMBONE? NO,<br>(Nov-GieseRsH)dis ORDER googonoosesenssn 8 || TETROUBADOR. Os wasA ZERO?AND ONE OF<br> ile ex pan 2 | o-ere was<br>2"<br>TrQv b4dor &4 1000 =GUESSES/sec3 DAYS AT SOME SYMBOL... “<br>ooo . .<br>ao” SupentuTons — |MEERAL ceerae ie Roane<br>ereI$ ONLY ONE OF Ane Fewearners.CoMmon FORMATS) PUNCTUATIONgoog ICULTYEASYTO GUESS: FF HARDREMEMBER:<br>~4UY BITS OF ENTROPY 7 THATS Al<br>ooooooooOo0o00 - aul Oo<br>correct horse battery staple }} 28°999999 MF AS | comaurd®<br>jeattes Vest ooocoonondo - O<br>aa Ca a mT mney 2 =550 YEARS AT a |<br>COMMON WORDS DIFFICULTY To GUESS: besa TO REMEMBER:<br>HARD MEMORIZED IT<br>THROUGHEVERYONE2010 YEARSUSE PASSWOOF EFFO R T,DS WE'VE SUCCESSFULLYTHAT ARE HARD FOR TRAINEDHUMANS<br>To REMEMBER, BuT EASY FoR COMPUTERS To GUESS.<br>paieeek al ye /<br>WIE what’ eee Ms 6<br>A-HED<br>The Man Who Wrote Those Password Rules Has a New Tip:<br>N3v$r M1d!<br>Bill Burr's 2003 report recommended using numbers, obscure characters and capital letters and updating regularly—he<br>regrets the error<br>By Robert McMillan<br>Aug. 7, 2017 12:41 p.m. ET<br>The man who wrote the book on password management has a confession to make: He<br>blew it.<br><!-- End of picture text -->



9/29/21 



- § Forbid commonly used passwords 

- § Don't use password hints or knowledge-based authentication 

- § Limit the number of password attempts 



<!-- Start of picture text -->
32<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 32<br><!-- End of picture text -->



- § Websites and apps offer to create randomly generated password 

   - § Based on **pseudo random** number **generators** (e.g., linear congruential generators) to create a random string of symbols often of **length between 10 and 16** characters 

- § If only generators are used, then burden of remembering passwords is on user 

   - § Notice that generated passwords are **typically longer than 8 characters** because it is becoming cheaper and cheaper to brute passwords of up to that length… 

   - § … this makes the task of remembering them even more difficult 

- § If managers are used, then they may be vulnerable to attacks especially if they are on-line 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
33<br><!-- End of picture text -->

17 

9/29/21 



- § Identification and authentication through username and password provide unilateral authentication 

- § Computer verifies the user’s identity but  the **user has no guarantees about the identity of the party that has received the password** 

- § In phishing and spoofing attacks a party voluntarily sends the password over a channel, but is **misled about the end point of the channel** 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
34<br><!-- End of picture text -->



§ **Attacker starts a program that presents a fake login screen** and leaves the computer 

- § If the next user coming to this machine enters username and password on the fake login screen, these values are captured by the program 

   - § Login is then typically aborted with a (fake) error message and the spoofing program terminates 

   - § Control returned to operating system, which now prompts the user with a genuine login request 

S. Ranise - Security & Trust (FBK) 

**35** 

18 



<!-- Start of picture text -->
COUNTERMEASURES<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
PHISHING<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->

9/29/21 



- § Operating system maintains a file with user names and passwords 

- § Attacker could try to compromise the confidentiality / integrity of password file 

- § Options for protecting the password file: 

   - § cryptographic protection 

   - § access control enforced by the operating system 

   - § combination of cryptographic protection and access control, possibly with further measures to slow down dictionary attacks 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
39<br><!-- End of picture text -->





<!-- Start of picture text -->
38<br><!-- End of picture text -->

Secure storage of login and password 

S. Ranise - Security & Trust (FBK) 

20 

9/29/21 



- § Cryptographic hash functions 

- § A 1-way function _f_ is a function that is **relatively easy to compute but hard to reverse** , i.e. 

   - § Given an input _x_ it is easy to compute _f_ ( _x_ ), but given an output _y_ it is hard to find _x_ so that _y_ = _f_ ( _x_ ) 

- § Instead of the password _x_ , the value _f_ ( _x_ ) is stored in the password file; when a user logs in entering a password _x’_ , the system applies the one-way function _f_ and compares _f_ ( _x’_ ) with the expected value _f_ ( _x_ ) 

S. Ranise - Security & Trust (FBK) 



### § Requirements on a hash function _h_ 



<!-- Start of picture text -->
40<br><!-- End of picture text -->

- § Ease of computation: given _x_ , it is easy to compute _h_ ( _x_ ) 

- § Compression: _h_ maps inputs _x_ of arbitrary bit-length to outputs _h_ ( _x_ ) of a **fixed bit-length** _n_ 

- § One-way: given a value _y_ , it is computationally infeasible to find an input _x_ so that _h_ ( _x_ ) _= y_ 

- § Weak collision resistance: given an input _x_ and _h_ ( _x_ ), it is computationally infeasible to find another input _x_ ’, _x ≠x_ ’, with _h_ ( _x_ ) _= h_ ( _x_ ’) 

- § Strong collision resistance: it is computationally infeasible to find any two inputs _x_ and _x_ ’, _x ≠x_ ’, with _h_ ( _x_ ) _= h_ ( _x_ ’) 

S. Ranise - Security & Trust (FBK) 

Collision = the situation in which two inputs _x_ and _x_ ’ map to the same hash, i.e. _h(x) = h(x’)_ 



<!-- Start of picture text -->
41<br><!-- End of picture text -->

21 



<!-- Start of picture text -->
HASHING IN PRACTICE  a<br>@<br>ON COLLISION RESISTANCE<br>A=.<br>@<br><!-- End of picture text -->





<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
ON<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->

9/29/21 





hashing is the mathematical version of briskly stirring a pot containing 0s and 1s 

- § Theoretically, it is indeed **possible** to find **collisions** for any given hash function 

   - § This is obvious as soon as we consider the cardinality of the input set and the output set of a hash function where the former contains potentially unbounded messages and the latter only messages of size _2^n_ for a given number _n_ of bits 

- § The point that makes hash function useful in practice is that the **likelihood** that such a **collision** can **happen** should be **negligible** 

   - § Example 

      - § when n=128, we have 2^128 = 3.4 * 10^38 possible distinct hashes 

      - § **under the assumption that the hash function distributes uniformly the outputs among all possible distinct hashes** , it is more likely that the same person repeatedly wins the lottery… 

      - § For the assumption above to be satisfied, the design of the hash function should be performed in the appropriate way so that its output looks random… 

      - § … this is not always trivial and it was the source of attacks to widely adopted hash functions in the past... 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
44<br><!-- End of picture text -->



- § MD4: weak, it is computationally feasible to find meaningful collisions 

- § MD5: standard choice in Internet protocols, now broken and no longer recommended 

- § Secure Hash Algorithm (SHA-1): designed to operate with the US  Digital Signature Standard (DSA); 160-bit hash value; collision attacks reported 

- § RIPEMD-160: hash function frequently used by European cryptographic service providers 

- § SHA-256: when longer hash values are advisable 

S. Ranise - Security & Trust (FBK) 

**45** 

23 





<!-- Start of picture text -->
dl3ldd02cSebeec4 693d9a0698aff95c 2fcab58712467eab 4004583eb8fb7£89<br>55ad340609f4b302 83e488832571415a 085125e8f7cdc99f d9ldbd£280373c5b<br>d8823e3156348f5b ae6dacd436c919c6 dd53e2b487da03fd 02396306d248cda0<br>e99f33420f577ee8 ce54b67080a80dle c69821bcb6a88393 96f9652b6ff£72a70<br>dl31ldd02c5ebeec4 693d9a0698aff95c 2fcab50712467eab 4004583eb8fb7£89<br>55ad340609£4b302 83e4888325£1415a 085125e8f7cdc99f d9ldbd7280373c5b<br>d8823e3156348f5b aebdacd436c919c6 dd53e23487da03fd 02396306d248cda0<br>e99£33420f577ee8 ce54b67080280dle c69821bcb6a88393 96f965ab6f£72a70<br><!-- End of picture text -->



<!-- Start of picture text -->
79054025255 fbla26e4bc422aef54eb4<br><!-- End of picture text -->







<!-- Start of picture text -->
password<br>(cleartext)<br>password ~~<br>hashed . hash function<br>NN<br>$1 $r6T8SUB9$Qxed IF JyF /3gkPIuvKOQ90<br>CY ><br>password<br>store<br><!-- End of picture text -->



<!-- Start of picture text -->
proposed<br>(cleartext) | “Wrong Password’ password<br>hash function<br>NN<br>| \ |<br>$1$0UI319gn$001HTD JcZDVNxcLeoFhai. $1$r6TS8SUB9$Qxe41F JyF /3gkPluvKOQ90<br>\<br>Do hashes passworhash  d<br>exactly?match _<br>no yes<br><!-- End of picture text -->



<!-- Start of picture text -->
VIOLATION OF ONE WAY PROPERTY<br><!-- End of picture text -->





<!-- Start of picture text -->
a<br><!-- End of picture text -->





<!-- Start of picture text -->
©<br><!-- End of picture text -->



<!-- Start of picture text -->
PROBLEMS<br><!-- End of picture text -->

PROBLEMS WITH HASHED PASSWORDS 

ay .« 



9/29/21 





<!-- Start of picture text -->
Salt  = fixed-length random value<br><!-- End of picture text -->

- § We refer to _f_ ( _x_ ) as the hashed password, i.e. to the hash/digest of _x_ 

- § To slow down dictionary attacks, a salt is appended to the password before hashing and stored with the hashed password 

   - § If two users have the same password, they will now have different entries in the file of hashed passwords 

   - § Ex: Unix uses a 12 bit salt 



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
50<br><!-- End of picture text -->



• A UUID (Universal Unique Identifier) is a 128-bit number used to uniquely identify some object or entity on the Internet • uuid4() creates a random UUID 

#### Again I use _python3_ 

- § >>> import hashlib, uuid 

- § >>> str = "Tyger Tyger, burning bright, In the forests of the night; What immortal hand or eye, Could frame thy fearful symmetry?" 

- § >>> salt = uuid.uuid4() 

- § >>> salt 

   - § UUID('f4c7d2be-59d6-45ea-a34b-81e02c88ebbb') 

- § >>> salt.hex 

   - § 'f4c7d2be59d645eaa34b81e02c88ebbb' 

- § salted_hash = hashlib. **sha512** (str.encode('utf-8') + salt.hex.encode('utf-8')) 

- § >>> salted_hash.hexdigest() 

   - § '96d3e17abc98249c75daadf8ffd96cb4b0719b95fd2e328c151c215b0394b750d195790f068e97a7 983516d75318ba70870f82b376f15954699ff0fe9ade2b3c' 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
51<br><!-- End of picture text -->

26 



__ . SALTING AS A MITIGATION TO DICTIONARY ATTACKS 





<!-- Start of picture text -->
DICTIONARY<br><!-- End of picture text -->



<!-- Start of picture text -->
©<br><!-- End of picture text -->



~~O~~ T 



<!-- Start of picture text -->
.<br><!-- End of picture text -->

. 

_ 

# EXTENSIONS OF PASSWORD BASED AUTHENTICATION 







<!-- Start of picture text -->
MULTI<br><!-- End of picture text -->



<!-- Start of picture text -->
MULTI FACTOR AUTHENTICATION (MFA)<br>to fDoly<br>#<br>@<br>MFA: A A (COMMON) SCENARIO<br>os .<br><!-- End of picture text -->



<!-- Start of picture text -->
to fDoly<br>#<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
MFA: A A<br><!-- End of picture text -->





<!-- Start of picture text -->
MULTI<br><!-- End of picture text -->

MULTI FACTOR AUTHENTICATION (MFA) 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
TIME<br><!-- End of picture text -->

TIME BASED ONE TIME PASSWORD ) 





<!-- Start of picture text -->
TIME<br><!-- End of picture text -->

## TIME BASED ONE TIME PASSWORD (TOTP) 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
ATTACK<br><!-- End of picture text -->

ATTACK TO TOTP: LOCKHEED MARTIN 



<!-- Start of picture text -->
MARTIN<br><!-- End of picture text -->





<!-- Start of picture text -->
@<br><!-- End of picture text -->

@ 

BEYOND TOTP: REVISED PAYMENT SERVICE DIRECTIVE (PSD2) 



<!-- Start of picture text -->
REVISED<br><!-- End of picture text -->





<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
EFFECT<br><!-- End of picture text -->



<!-- Start of picture text -->
TOKEN/<br><!-- End of picture text -->

EFFECT OF PSD2: NO MORE TOTP HW TOKEN/ 





<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
USE OF<br><!-- End of picture text -->

USE OF SMARTPHONES AS PART OF MFA 



<!-- Start of picture text -->
€<br><!-- End of picture text -->



<!-- Start of picture text -->
—<br><!-- End of picture text -->



<!-- Start of picture text -->
.<br><!-- End of picture text -->

9/29/21 



<!-- Start of picture text -->
Authenticator = the means<br>used to confirm the identity of a<br>user, process, or device (e.g.,<br>user password or token)<br><!-- End of picture text -->







#### **Authentication** 



<!-- Start of picture text -->
Memorized secrets<br>such as passwords<br>Cryptographic<br>software and tokens<br>such as apps or<br>tokens<br>Cryptographic<br>hardware such as smartcards<br>66<br><!-- End of picture text -->

1. Provides some assurance that the claimant **controls** the **authenticator** ; requires at least **single-factor authentication** 





2. Provides high confidence that the claimant **controls authenticators** ; **two different authentication factors** are required; approved cryptographic techniques are required 

3. Provides very high confidence that the claimant **controls** the **authenticator** ; authentication based on **proof of possession** of a key through a cryptographic protocol; requires a “hard” cryptographic authenticator S. Ranise - Security & Trust (FBK) 





<!-- Start of picture text -->
66<br><!-- End of picture text -->



<!-- Start of picture text -->
§<br><!-- End of picture text -->

- § The context (or factors) around a user's login are considered and assessed, to then decide whether the person is who they say they are § If there's a chance they are not, then an appropriate action is taken 

- § Ex: Rich arrives at his San Francisco office every morning and logs in using his desktop computer at about 8am PST. Then Rich takes his first ever business trip to Beijing (China) and he logs in at his hotel via the wifi, from his laptop that he's never used for work before, and at the equivalent of 5pm PST. A simple system might assess the context of Rich's login based on: Location, IP address, Device,  Time § This login would present a high risk score as all factors fall outside of the behavioural profile that has been established for Rich over time. The login would immediately trigger an alert to be sent to Rich to verify his identity and/or the IT administrator at Rich's company to further investigate this potential security breach. When Rich's identity is confirmed this new data will become a part of his user profile, so the system gets smarter and smarter. 



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
67<br><!-- End of picture text -->

34 

9/29/21 

**68** 





<!-- Start of picture text -->
Identity providers: the lazy (and scalable) approach to identity management<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
• Securing all the phases of the identity management<br>lifecycle is far from being trivial<br>• Organizations (especially, small and medium sized<br>ones) lack resources to devote to security and need<br>to focus on their core business…<br><!-- End of picture text -->





<!-- Start of picture text -->
The user receives a credential or authenticator<br>Relationship starts from a  Credential Service Provider  (CSP).<br>Authentication<br>Enrollment/on-boarding<br>The process of verifying the identity of a user,<br>The process through which an applicant applies to  process, or device, often as a prerequisite to<br>become a subscriber of an identity system and the  allowing access to a system’s resources.<br>identity system validates the applicant’s identity.<br>Authorization/Access control<br>Relationship ends<br>Deregistration - Thetoevaluatingaccessprocessa subject’sdata,of checkingtypicallyattributes.user’sautomatedpermissionsby<br><!-- End of picture text -->





<!-- Start of picture text -->
-<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 69<br><!-- End of picture text -->

35 







<!-- Start of picture text -->
User Signs in Forward Authentication<br>To | request<br>Send Authentication Token User Authenticated 3rd Party<br>Mobile/ See Identity<br>Wels islelp SendclorigwithAuthenticationevery recidestTok Provider.<br>Token validated &<br>request processed<br><!-- End of picture text -->











9/29/21 



Single Sign-On (SSO) allows users to access multiple apps through a single authentication act 





<!-- Start of picture text -->
SAML 2.0<br><!-- End of picture text -->









<!-- Start of picture text -->
used for social network<br>(billions of user)<br>S. Ranise - Security & Trust (FBK) 72<br><!-- End of picture text -->



Privacy may also be problematic as the identity provider may link actions of users performed online across different services and applications that trust it 

Single Sign-On (SSO) allows users to access multiple apps through a single authentication act 







<!-- Start of picture text -->
Usability : only a password<br>to remember for several<br>apps<br>Security : more complex<br>passwords<br>Usability : shared sessions<br>Security : Only 1 password to<br>compromise<br><!-- End of picture text -->









SSO + Multi-Factor Authentication solutions S. Ranise - Security & Trust (FBK) 

**73** 

37 

9/29/21 



Authentication can be seen as the front door of an application, service or ICT system… 



- § Authentication amounts to verifying the identity of a user, process, or device, often as a prerequisite to allowing access to resources in an information system § Here we focused on user authentication 

- § Passwords are one of the most widespread and accepted method for user authentication despite their shortcomings 

- § Adequate security mechanisms should be put in place to protect stored passwords § Hashing & salting, access control, … 

- § Authentication is only one phase of the identity management lifecycle 

   - § Also other phases (e.g., identity proofing) may have weaknesses 

- § Given the importance and difficulty of identity management, it is frequently outsourced to trusted third parties with advantages and disadvantages also from the viewpoint of security (and privacy) 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
74<br><!-- End of picture text -->

38 

