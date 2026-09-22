9/16/21 







<!-- Start of picture text -->
Introduction to Computer and Network Security<br>Silvio Ranise  [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or  ranise@fbk.eu ]<br><!-- End of picture text -->

Introduction to Computer and Network Security _Silvio Ranise_ [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or _<u>ranise@fbk.eu</u>_ ] 







<!-- Start of picture text -->
§<br> *-Security<br>§<br> Remarks on *-security<br>§ The CIA triad<br>§ Risk<br>§<br> Security policies, mechanisms, and services<br>§<br> Wrap-up<br>1<br><!-- End of picture text -->





<!-- Start of picture text -->
1<br><!-- End of picture text -->

1 

9/16/21 



<!-- Start of picture text -->
2<br>Network security?<br><!-- End of picture text -->



# § **Information** security 

- § the practice of preventing unauthorized access, use, disclosure, disruption, modification, inspection, recording or destruction of information. It is a general term that can be used **regardless of the form the data may take** (e.g., electronic, physical). 

https://en.wikipedia.org/wiki/Information_security 

# § **Computer** security 

- § the protection of **computer systems and information** from harm, theft, and unauthorized use. Computer hardware is typically protected by the same means used to protect other valuable or sensitive equipment, namely, serial numbers, doors and locks, and alarms. The protection of information and system access, on the other hand, is achieved through other tactics, some of them quite complex. 

https://www.britannica.com/technology/computer-security 

# § **Network** security 

- § Network Security is the process of taking physical and software preventative measures to protect the underlying **networking infrastructure** from unauthorized access, misuse, malfunction, modification, destruction, or improper disclosure, thereby creating a secure platform for computers, users and programs to perform their permitted critical functions within a secure environment. 

https://www.sans.org/network-security/ 



<!-- Start of picture text -->
3<br><!-- End of picture text -->

2 

9/16/21 





https://csrc.nist.gov/glossary/term/cyber_security 



<!-- Start of picture text -->
Alternative<br>definition of<br>cyberspace<br><!-- End of picture text -->

The ability to protect or defend the use of cyberspace from Alternative definition of <u>cyber attacks</u> cyberspace A global domain within the information environment consisting of the interdependent network of information systems infrastructures including the Internet, telecommunications networks, computer systems, and embedded processors and controllers 

A cyber attack […] targeting an organization’s use of cyberspace for the purpose of disrupting, disabling, destroying, or maliciously controlling a computing environment/infrastructure; or destroying the integrity of the data or stealing controlled information https://csrc.nist.gov/glossary/term/cyber_attack 



<!-- Start of picture text -->
4<br><!-- End of picture text -->





- § Security is characterized by protection **against an adversary** or, possibly, against some other physical or random process 

- § Security typically focuses on **malicious adversaries** 

- § Core to any consideration of security is the **modelling** of malicious adversaries 

   - § motivations (in the past… glory, nowadays… money) 

   - § capabilities (intercept messages, modify messages, read keys pressed, …) 

   - § threats (roughly, negative impact on systems, operations, organization, business, …) 

- § Arguing that a system is secure without referring to an attacker model does not make much sense 

   - § Example: a 0-day attack that exploits a previously unknown hardware, firmware, or software vulnerability (https://csrc.nist.gov/glossary/term/zero_day_attack) 

- § Indeed, absolute security does not exist even for so-called air-gapped system 

   - § Example: https://spectrum.ieee.org/the-real-story-of-stuxnet 

**5** 

3 



<!-- Start of picture text -->
REMARKS<br><!-- End of picture text -->



<!-- Start of picture text -->
Ly<br>ON<br><!-- End of picture text -->

Ly REMARKS ON *-SECURITY (2) 









<!-- Start of picture text -->
MORDAC,OF INFORMATIONTHE PREVENTER| 3]3 INAPERFECT WORLD, Pr|$] To complete the<br>SERVICES. ? NO ONE WOULD BE 5 log-in procedure,<br>SECURITY g| ABLE TO USE ANYTHING. |2 stare directly<br> IS MORE | 5 3 at the sun.<br>IMPORTANT THAN Fy<br>Jele—o aera £E bor |i3 =<br>f Gy 4 eo FO oe<br>ADi a aewewE ' BAHpl St1Bgl<br>ae a0 a 5 < ey uw 3z ____= I<br><!-- End of picture text -->



<!-- Start of picture text -->
High probability<br>> Low impact<br>x<br>aere a<br>Low probability<br>TRIP Tht&URGRAF REETLow impact<br>RISK Low'probabiligy<br>High impact ;<br>S<br>RAE ae<br>qbae<br>\ s<br>&Ce RISK o<br>ro) HighHigh Impactprobability<br>a Re&<br>leila | lel lll<br>SiSBO ee -<br><!-- End of picture text -->

9/16/21 





# § The role of **trust** in software 

§ **Dependability** = ability to avoid failures that are more frequent and severe than is acceptable 

- § **Failure =** an event that occurs when the delivered service deviates from correct service 

§ **Trust =** accepted dependence 

§ For a complete discussion on dependability, trust, and security see 

https://drum.lib.umd.edu/bitstream/handle/1903/6459/TR_2004-47.pdf 

# § Example: _SolarWinds attack_ 

- § The attack compromises the infrastructure of SolarWinds, a company that produces a network and applications monitoring platform called Orion, and then uses that access to produce and distribute **trojanized updates** to the software's users (an instance of a supply chain attack) 

   - § A trojan is any malware (i.e. a software intentionally designed to cause damage) that misleads users of its true intent 

- § Impact on 425 of the US Fortune 500, the top ten US telecommunications companies, the top five US accounting firms, all branches of the US Military, the Pentagon, the State Department, and hundreds of universities and colleges worldwide 

https://www.csoonline.com/article/3601508/solarwinds-supply-chain-attack-explained-whyorganizations-were-not-prepared.html 



<!-- Start of picture text -->
8<br><!-- End of picture text -->







Thompson’s Turing Award Lecture in 1984 entitled “Reflections on Trusting Trust”: 

_To what extent should one trust a statement that a program is free of Trojan horses? Perhaps it is more important to trust the people who wrote the software._ 



<!-- Start of picture text -->
Custom software<br>product<br>3 rd<br>APIs<br>party<br>Edge<br>Mobile<br>Cloud 9<br><!-- End of picture text -->

5 

9/16/21 





- § Security controls are human artifacts that 

   - § can mitigate the impact of an attack but in many cases **do not avoid it completely** 

   - § **can contain vulnerabilities** that can be exploited to mount attacks 

- § In other words, we are left with a (non-null) **residual risk** , i.e. the amount of danger associated with an attack after risks have been mitigated by security controls 

- § Example: automotive seat-belts 

   - § Use of seat-belts reduces the the risk of injury although it does not cancel it as 

      - § accidents may be quite serious and seat-belts can only mitigate consequences 

      - § installation of set-belts may be defective and mitigation of risk is reduced 



<!-- Start of picture text -->
10<br><!-- End of picture text -->





# _“Exploiting vulnerabilities allows attackers to violate security”_ 

- § At first reading, this may seem obvious but is it really so? 

- § What does it mean exactly to “violate security”? 

- § There many possibly answers to the question above including 

   - § A security violation can be the unauthorized sharing of sensitive information such as personal data of patients in a healthcare system 

   - § A security violation can be the unauthorized modification of the content of a resource such as modifying the balance of bank account 

   - § A security violation can be the unauthorized withholding of the content of a resource or service such as the unavailability of network services 

- § The three answers correspond to three crucial properties characterizing three possible dimensions of security 

   - § They are collectively known as … 

**11** 

6 

9/16/21 



<!-- Start of picture text -->
12<br>Characterizing security or guiding the selection and use of security controls<br><!-- End of picture text -->





<!-- Start of picture text -->
The CIA triad<br>§ Confidentiality<br>§ prevent un-authorised disclosure of information<br>§ permit authorized sharing of information<br><!-- End of picture text -->



# § Integrity 



<!-- Start of picture text -->
§ prevent un-authorised modification of information<br>§ permit authorized modification of information<br><!-- End of picture text -->

# § Availability 

§ prevent un-authorised withholding of information or services § readily permit authorized access to information or services 

**13** 

7 

9/16/21 







- § Preserving authorized restrictions on information access and disclosure, including means for protecting personal privacy and proprietary information. 

- § The property that sensitive information is not disclosed to unauthorized individuals, entities, or processes. 

- § The security goal that generates the requirement for protection from intentional or accidental attempts to perform unauthorized data reads. Confidentiality covers data in storage, during processing, and while in transit. 

- § The property that sensitive information is not disclosed to unauthorized entities. In a general information security context: preserving authorized restrictions on information access and disclosure, including means for preserving personal privacy and proprietary information. 

https://csrc.nist.gov/Glossary/?term=3591 









<!-- Start of picture text -->
14<br><!-- End of picture text -->

- § Guarding against improper information modification or destruction, and includes ensuring information non-repudiation and authenticity. 

- § The property that sensitive data has not been modified or deleted in an unauthorized and undetected manner. 

- § The ability to detect even minute changes in the data. 

- § Ensuring the authenticity of information—that information is not altered, and that the source of the information is genuine. 

- § The security objective that generates the requirement for protection against either intentional or accidental attempts to violate data integrity (the property that data has not been altered in an unauthorized manner) or system integrity (the quality that a system has when it performs its intended function in an unimpaired manner, free from unauthorized manipulation). 

https://csrc.nist.gov/Glossary/?term=4875#AlphaIndexDiv 



<!-- Start of picture text -->
15<br><!-- End of picture text -->

8 

9/16/21 







- § Guarding against improper information • Authenticity• The property of being genuine and being able modification or destruction, and includes ensuring information non-repudiationto be verified and trusted; confidence in the  and authenticity. 

- § The property that sensitive data has not been modified or deleted in an validity of a transmission, a message, or unauthorized and undetected manner. message originator. 

- § The ability to detect even minute changes • Non-repudiation (auditability)in the data. • 

- § Ensuring the authenticity of information—that information is not altered, and that Protection against an individual falsely the source of the information is genuine. denying having performed a particular action. Provides the capability to determine whether 

- § The security objective that generates the requirement for protection against either a given individual took a particular action intentional or accidental attempts to violate such as creating information, sending a data integrity (the property that data has not been altered in an unauthorized manner) or message, approving informa ion, and system in **t** egrity (the quality that a system has when it performs its intended function in an unimpaired manner, receiving a message. free from unauthorized manipulation). https://csrc.nist.gov/Glossary/?term=4875#AlphaIndexDiv **16** 



<!-- Start of picture text -->
16<br><!-- End of picture text -->





- § Ensuring timely and reliable access to and use of information. 

- § Timely, reliable access to data and information services for authorized users. 

- § The ability for authorized users to access systems as needed. 

- § A requirement intended to assure that systems work promptly and service is not denied to authorized users. 

- § The security goal that generates the requirement for protection against intentional or accidental attempts to (1) perform unauthorized deletion of data or (2) otherwise cause a denial of service or data. 

https://csrc.nist.gov/Glossary/?term=3103#AlphaIndexDiv 

**17** 

9 







<!-- Start of picture text -->
There is no such thing as perfect<br>—— =< security, only varying levels of<br>\ oe — | insecurity.<br>Fis \s ti AZ QUOTES<br><!-- End of picture text -->









<!-- Start of picture text -->
Stack somewhere<br>frame of in caller<br>caller<br>Retu address<br>Stack<br>frame of<br>current<br>ere: ——————_—_——_——_—_———_—_——_—_—_—___e buffer<br>Position Password Numberof users Time to crack it Times exposed<br>1.4 123456 After overflow<br>Normal memory layout All red values written by the attacker<br>2% 123456789 Return address now points to shellcode<br>3. picturet<br>4.45. 12345678password €<br><!-- End of picture text -->





9/16/21 



# § Hackers 

   - § Break a password or sniff it off the network 

   - § Use social engineering to get a password 

   - § Taking up resources with irrelevant messages 

      - § **Denial-of-service** attacks aim aims to disrupt a service by either exploiting a vulnerability or by sending a lot of bogus messages to a computer offering a service 

- § Viruses and some worms 

   - § A **virus** is a self-replicating program that requires user action to activate such as clicking on Email, downloading an infected file or inserting an infected floppy, CD,  etc .. 

   - § A **worm** is a self-replicating program that does not require user action to activate. It propagates itself over the network, infects any vulnerable machine it finds and then spreads from it further. 



<!-- Start of picture text -->
22<br><!-- End of picture text -->



- § The probability that a particular security threat will exploit a system vulnerability. 

- § A measure of the extent to which an entity is threatened by a potential circumstance or event, and typically a function of: (i) the adverse impacts that would arise if the circumstance or event occurs; and (ii) the likelihood of occurrence. 

Note: Information system-related security risks are those risks that arise from the loss of confidentiality, integrity, or availability of information or information systems and reflect the potential adverse impacts to organizational operations (including mission, functions, image, or reputation), organizational assets, individuals, other organizations, and the Nation. Adverse impacts to the Nation include, for example, compromises to information systems that support critical infrastructure applications or are paramount to government continuity of operations as defined by the Department of Homeland Security. 

https://csrc.nist.gov/Glossary/?term=1013#AlphaIndexDiv 



<!-- Start of picture text -->
23<br><!-- End of picture text -->

12 

9/16/21 



- § Risk is the result of **threats exploiting vulnerabilities to obtain, damage, or destroy resources** together with their **impact on** the properties in the **CIA triad** 

- § **Threats** can be characterized as a combination of 

   - § **intent** = propensity to attack 

   - § **capability** = ability to successfully attack 

- § Vulnerabilities are characterized by how easy it is to 

   - § **identify** them 

   - § **exploit** them 

- § Threats and vulnerabilities give the **likelihood** that an adverse event may happen 

- § Impact should be evaluated with respect to each **stakeholder** that has an interest in the system under consideration 

   - § Example: unauthorised disclosure of personal information may have catastrophic consequence for the patients involved in the data breach but can be negligible for the organization offering the healthcare service if the number of patients involved is low 



<!-- Start of picture text -->
24<br><!-- End of picture text -->



<!-- Start of picture text -->
25<br><!-- End of picture text -->



- § Nowadays, computers are everywhere and the impact of attacks can be substantial 

- § Example 

   - § Automotive attacks can lead to important consequences both on the vehicles and the passengers 

   - § For the 2015 attack on a FCA jeep, impact was substantial for all stakeholders 

      - § Manufacturer obliged to recall 1.4 millions vehicles 

      - § Drivers and passengers safety put at risk 



<!-- Start of picture text -->
https://money.cnn.com/2015/07/24/technology/chrysler-hack-recall/index.html?sr=twmoney072415chrysler900story 25<br><!-- End of picture text -->

13 



<!-- Start of picture text -->
| a<br>:<br>Severity of Impact<br>Negligible | Marginal | Serious | Critical | Catastrophic<br>Highly<br>Probable al<br>iccasiona’ 5 "9<br>Remot ia<br>emote 6<br>Improbable on<br><!-- End of picture text -->



<!-- Start of picture text -->
. |<br>3<br>Sg<br><!-- End of picture text -->



<!-- Start of picture text -->
RISK<br><!-- End of picture text -->



<!-- Start of picture text -->
Pe WERE cr sanecaptors<br><!-- End of picture text -->



<!-- Start of picture text -->
;<br><!-- End of picture text -->



<!-- Start of picture text -->
se<br><!-- End of picture text -->



<!-- Start of picture text -->
RISK IN<br><!-- End of picture text -->

RISK IN AUTOMOTIVE:a AGAIN (1 



<!-- Start of picture text -->
ecu @lecu @ecu<br>| | |<br><!-- End of picture text -->







<!-- Start of picture text -->
RISK IN<br><!-- End of picture text -->



<!-- Start of picture text -->
RISK IN AUTOMOTIVE: AGAIN (2)<br>—|<br>| | | WIE)<br>[| rr<br>RISK IN AUTOMOTIVE: AGAIN (3) ¢<br>er<br>i | a0 nat as Ss<br>[| rr )<br><!-- End of picture text -->



<!-- Start of picture text -->
WIE)<br><!-- End of picture text -->







<!-- Start of picture text -->
ry wattage. iu<br><!-- End of picture text -->





<!-- Start of picture text -->
Other Car Car Entertainment<br>Systems Body ‘System<br>¢<br>i i<br>iBrakes~ bsImmobilizer Ss)Engine<br><!-- End of picture text -->



<!-- Start of picture text -->
Fiat Chrysler recalls 1.4 million cars after<br>Jeep hack<br>ee | |<br>NN g-—F<br>securityFiat Chryslerresearchershas issued showeda safetythatrecall one ofaffectingits cars 1.4mcouldvehiclesbe hacked.in the US, after<br><!-- End of picture text -->











9/16/21 



# § Security **policy** 

§ The rules and requirements established by an organization that governs the acceptable use of its information and services, and the level and means for protecting the confidentiality, integrity, and availability of its information 

https://csrc.nist.gov/Glossary/?term=1268#AlphaIndexDiv Security **mechanism** § A device or function designed to provide one or more security services usually rated in terms of strength of service and assurance of the design. 

# § Security **mechanism** 

- § Implementation of a security policy https://csrc.nist.gov/Glossary/?term=1262#AlphaIndexDiv 

# § Security **service** 

- § A capability that supports one, or more, of the security requirements (Confidentiality, Integrity, Availability). Examples of security services are key management, access control, and authentication. https://csrc.nist.gov/Glossary/?term=1268#AlphaIndexDiv 



<!-- Start of picture text -->
32<br><!-- End of picture text -->



# § Purpose 

- § <Company X> must protect restricted, **confidential or sensitive data from loss** to avoid reputation damage and to avoid adversely **impacting** customers.  The primary objective is user awareness and to avoid accidental loss scenarios (data leakage prevention) 

# § Scope 

   - § Any employee, contractor or individual with access to <Company X> systems or data. 

   - § Definition of data to be protected 

- Try to answer the question: 

- § Personal data What does it mean for 

- § Financial Company X § Intellectual Property “confidential/sensitive data”? 

- Adapted from https://www.sophos.com/en-us/medialibrary/PDFs/other/sophos-example-data- **33** security-policies-na.pdf?la=en 



<!-- Start of picture text -->
33<br><!-- End of picture text -->

17 

9/16/21 



# § Policy rules 

1. Employees need to complete <Company X>’s security awareness training and agree to uphold the acceptable use policy. 

2. Visitors to <Company X> must be escorted by an authorized employee at all times. If an employee is responsible for escorting visitors, he/she must restrict them to appropriate areas. 

3. Employees must keep a clean desk. To maintain information security, employees need to ensure that all printed in scope data is not left unattended. 

4. Employees need to use a secure password on all <Company X> systems as per the password policy. These credentials must be unique and must not be used on other external systems or services. 

5. Terminated employees will be required to return all records, in any format, containing personal information. 



<!-- Start of picture text -->
34<br><!-- End of picture text -->

Adapted from https://www.sophos.com/en-us/medialibrary/PDFs/other/sophos-example-data- **34** security-policies-na.pdf?la=en 



# § Authentication 

- § Verifying the identity of a user, process, or device, often as a **prerequisite to allowing access** to resources in an information system. 

https://csrc.nist.gov/Glossary/?term=3052#AlphaIndexDiv 

# § Authorization 

- § The granting or denying of access rights to a user, program, or process. 

https://csrc.nist.gov/Glossary/?term=3081#AlphaIndexDiv 

# § Access control 

§ The process of granting or denying specific requests: 1) obtain and use information and related information processing services; and 2) enter specific physical facilities (e.g., Federal buildings, military establishments, border crossing entrances). 

https://csrc.nist.gov/Glossary/?term=2785#AlphaIndexDiv 

**35** 

18 



<!-- Start of picture text -->
WRAP-UP (1)<br>haCONFIDENTIALITY |<br>INTEGRITA.\ AVAILABILITY<br>ys<br><!-- End of picture text -->



<!-- Start of picture text -->
e<br><!-- End of picture text -->



<!-- Start of picture text -->
High probability<br>.<br>\ Low impact<br>~ RISK “<br>Low probability<br>TRIP FT4TRTIRT? ~~ TRGRAT Low impact<br>High impact<br>) (| RISK sha<br>1 hk<br>3. RISK High probability<br>ey High Impact<br>: R<br>Po RISK oe<br>ww<br><!-- End of picture text -->













<!-- Start of picture text -->
Common Types of Cyber-attacks<br>Phishing Cross-Site<br>i / DNSI i<br>\ Computer 2 Ege cme i%, Ene Web '|Web Senvenms\<br>F ’ ™ __DNS2 : J!<br>ny : . '<br>ss Zero-day ‘\ Se wo a re<br>the Middle<br><!-- End of picture text -->





<!-- Start of picture text -->
PERFORMANCE<br>/<br><!-- End of picture text -->



<!-- Start of picture text -->
PERFORMANCE<br>Planning /<br>a<br><!-- End of picture text -->



