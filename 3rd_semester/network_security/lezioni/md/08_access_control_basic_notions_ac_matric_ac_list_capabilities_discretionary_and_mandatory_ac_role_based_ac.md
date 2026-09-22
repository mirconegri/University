11/18/21 







<!-- Start of picture text -->
Introduction to Computer and Network Security<br>Silvio Ranise  [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or  ranise@fbk.eu ]<br><!-- End of picture text -->

Introduction to Computer and Network Security _Silvio Ranise_ [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or _<u>ranise@fbk.eu</u>_ ] 





- § What is access control § Architecture, involved entities, Guard (Policy Decision Point, PDP), Auditing 

- § An example: Operating System 



- § Access Control Matrix § Access Control List (ACL) § Capability List 

- § D(iscretionary) and M(andatory) AC 

   - § Groups for DAC 

   - § Multi-level Security or the Bell-La Padula Model 

- § Role Based Access Control (RBAC) § A simple example of RBAC policy for a web app S. Ranise - Security & Trust (FBK) **1** 



<!-- Start of picture text -->
1<br><!-- End of picture text -->

1 





<!-- Start of picture text -->
2 | -Til| a| ir<br>' Ee }:<br>[<br>lJ ’<br><!-- End of picture text -->



<!-- Start of picture text -->
= AS<br>— re<br>~“<br>~~ OF<br><!-- End of picture text -->



<!-- Start of picture text -->
Authentication Authorization<br>Pe a a ee oe<br>| I<br>1 Isolation Boundary ———— I<br>2. Access Control r-- -— |<br>I |<br>3. Policy I Audit Log i!<br>| I | I<br>| ._-Y%_,/!<br>ei<br><!-- End of picture text -->





<!-- Start of picture text -->
ACCESS CONTROL:88 OUR FOCUS<br><!-- End of picture text -->



<!-- Start of picture text -->
CONTROL:88 OUR FOCUS<br>Authentication Authoriz4étion<br>F mn le al ne |<br>rn— -_ 7 GEObject/<br>|I<br>|I<br>1. Isolation Boundary —————J|<br>i—i<br>2. Access Control i I<br>3. Policy Audit Log >| ;<br>II<br>Iee | ]<br>eee i ee Cd<br><!-- End of picture text -->





<!-- Start of picture text -->
ACCESS CONTROL: OUR FOCUS<br><!-- End of picture text -->



<!-- Start of picture text -->
CONTROL: OUR FOCUS<br>a = ‘<br><!-- End of picture text -->





<!-- Start of picture text -->
ACCESS<br><!-- End of picture text -->

ACCESS CONTROL: REMARKS 



<!-- Start of picture text -->
@<br><!-- End of picture text -->

@ 



<!-- Start of picture text -->
AN<br><!-- End of picture text -->



<!-- Start of picture text -->
AN EXAMPLE: OPERATING SYSTEM (1)<br>—<br>a!<br>aaa i<br>Hardware<br>©<br>AN EXAMPLE: 08 (2)<br>tT pet<br>Flo «<br><!-- End of picture text -->



<!-- Start of picture text -->
AN<br><!-- End of picture text -->





<!-- Start of picture text -->
AN EXAMPLE: 08 (3)<br><!-- End of picture text -->



<!-- Start of picture text -->
oo<br>AN EXAMPLE: 0S_(4<br><!-- End of picture text -->





<!-- Start of picture text -->
AN<br><!-- End of picture text -->



11/18/21 



## § The process of 

   - § **mediating requests** to resources and data of a system and 

   - § determining whether a request should be granted or denied 

- § Flow: subject _s_ wants to perform action _a_ on resource _r_ 

   1. Access request ( _s_ , _a_ , _r_ ) is sent to access control module 

   2. The access control module returns **grant** / **deny** 

   3. If answer = grant, then system allows _s_ to perform _a_ on _r. Else s_ is informed that cannot perform _a_ on _r_ 

- § Paramount importance in system security 



<!-- Start of picture text -->
10<br><!-- End of picture text -->



- § **Protecting resources from unauthorized accesses** 

- § This is **very dependent from the context** 

   - § Operating systems, military systems, online banking, smartphones, ... 

- § **How to specify these security requirements** **_?_** 

**11** 

6 

11/18/21 



- § Often, security for a system is defined in terms of a policy 

- § Definition 

   - § **policy = set of rules to implement specific security properties** 

   - § Remember: Confidentiality, Integrity and Availability (CIA) 

- § Alternative definition 

   - § policy = **contract** between the designer/implementor of a system and customers 



<!-- Start of picture text -->
12<br><!-- End of picture text -->



- § **Policy** = rules that control what actions, subjects may perform on resources (or objects) containing information 



<!-- Start of picture text -->
§<br> Policy<br>actions, subjects may perform on<br>resources (or objects) containing  Policy<br>information<br>(how policy are specified)<br>§  Model  = formal (mathematical)  Model<br>representation of the policy and its  (meaning of policies)<br>working<br>Enforcement<br>§  Enforcement  = low level (software or  (implementation of policies)<br>hardware) functions that implement<br>the controls imposed by the policy<br>and formally stated in the model<br>ACCESS CONTROL<br><!-- End of picture text -->



<!-- Start of picture text -->
13<br><!-- End of picture text -->

7 



# STRUCTURED APPROACH: ADVANTAGES 





<!-- Start of picture text -->
ZN<br><!-- End of picture text -->



WHAT CAN GO WRONG WITH ENFORCEMENT: BACK TO THE 0S 





<!-- Start of picture text -->
@<br><!-- End of picture text -->





a ENFORCEMENT: BACK TO THE OS (CONT'D) 



<!-- Start of picture text -->
Higher<br>memory<br>Return address<br>Saved frame ptr | |Buffer fills<br>upwards Shellcode<br>Buffer<br>Lower<br>memory<br>Before After<br>stack smash stack smash @<br><!-- End of picture text -->



<!-- Start of picture text -->
Step |: Operating system invokes main to execute application.<br>int mainO<br>Operating system { ane aeto<br>_ cout << a << " squared: "<br>—— << square( a ) << endl;<br>Return location RI =—— Keren:<br>3<br>Function call stack after Step |<br>Top of stack ———><br>Return location: RI<br>Activation record Automatic variables:<br>for function main a | io Key<br>~_____—— systemLines that executingrepresent instructionsthe operating<br><!-- End of picture text -->



<!-- Start of picture text -->
€<br><!-- End of picture text -->

11/18/21 



<!-- Start of picture text -->
18<br><!-- End of picture text -->



The models we are going to consider have been designed in different application contexts, namely 

- AC Matrix, AC lists, and Capabilities → Operating systems 

- Multi Level Security (Bell La Padula) → Military systems 

- Role Based AC and Attribute Based AC → Enterprise systems 



- § The meaning of policies of the form “ _a subject can perform some actions on an object_ ” can be given in terms of the Access Control Matrix (ACM) 

- § Given all subjects and objects, the ACM enumerates what actions are allowed for each subject/object pair 



**19** 

10 







<!-- Start of picture text -->
fl Pp B JA SS fo<br>coew-ewrite H alee[<br>: «| [ [eee] datas<br>2) a ea a)<br>Capabilities Access Control List<br><!-- End of picture text -->







11/18/21 



§ **<u>A</u>** lice can **<u>r</u>** <u>ead and</u> **<u>w</u>** <u>rite the file</u> **f1** , can **<u>r</u>** ead the file **f2** , and can e **<u>x</u>** <u>ecute the file</u> **f3** . § **<u>B</u>** ob can **<u>r</u>** ead **f1** , can **<u>r</u>** <u>ead and</u> **<u>w</u>** <u>rite</u> **f2** , and _cannot access_ **f3** . 



<!-- Start of picture text -->
f1 f2 f3<br>Alice<br>Bob<br>22<br><!-- End of picture text -->



<!-- Start of picture text -->
22<br><!-- End of picture text -->



§ **<u>A</u>** lice can **<u>r</u>** <u>ead and</u> **<u>w</u>** <u>rite the file</u> **f1** , can **<u>r</u>** ead the file **f2** , and can e **<u>x</u>** <u>ecute the file</u> **f3** . 

§ **<u>B</u>** ob can **<u>r</u>** ead **f1** , can **<u>r</u>** <u>ead and</u> **<u>w</u>** <u>rite</u> **f2** , and _<mark>cannot access</mark>_ **f3** . 

||**f1**|**f2**|**f3**|
|---|---|---|---|
|Alice|r,w|r|x|
|Bob|r|r,w|-<br>Sometimes, x<br>implies also r and w|





<!-- Start of picture text -->
23<br><!-- End of picture text -->

12 



<!-- Start of picture text -->
EXERCISE:<br><!-- End of picture text -->



<!-- Start of picture text -->
EXERCISE: SOLUTION (3)<br>¥ FF FY<br>a ee ee ee<br>——<br>— @<br>EXERCISE: SOLUTION (4)<br>Le  a ee ee ee<br>EE<br>— @<br><!-- End of picture text -->





11/18/21 





<!-- Start of picture text -->
§ Goals<br><!-- End of picture text -->

## § Goals 

- § prevent malicious misuse of the system by users or programs 

- § ensure that each shared resource is used only in accordance with system policies 

## § Principle of protections 

- § **_Principle of least privilege →_** programs, users, and systems shall be given just enough privileges to perform their tasks 

- § Key idea → ensure that failures do the least amount of harm and allow the least of harm to be done 

- § Example of application → each user is given their own account, and has only enough privilege to modify their own files 

   - § The System Administrator should also have an ordinary account, and reserve use of the root account for only those tasks which need the root privileges 

   - § The root account should not be used for normal day to day activities 



<!-- Start of picture text -->
26<br><!-- End of picture text -->



<!-- Start of picture text -->
§<br><!-- End of picture text -->

- § A computer can be viewed as a collection of processes and objects (hardware or software) 

- § **Need to know principle** **_→_** a process should only have access to those objects it needs to accomplish its task and only for the operations for which it needs access and only during the time frame when it needs access 

- § A **domain of protection** is the set of objects and the access rights, i.e. the ability to execute certain operations on selected objects 

   - § Formally, a domain of protection is a set of pairs of the following form 

         - < object, { access right set } > 

- § Domains of protection can be implemented as users, processes, or procedures 

   - § Example 

      - § In Unix/Linux, each user corresponds to a domain 

      - § A domain defines the access rights of a user 

      - § Changing domains involves changing user identifiers 

      - § **Programs running on behalf of a user inherit the user identifier and thus are associated to the same domain of protection** 

      - § **When an executable is given permissions to access certain (e.g., shared) resources that the user executing the program cannot access, then security issues may arise as we will see next…** 

**27** 

14 

ACL VS CAPABILITIES a ACL VS CAPABILITIES (2)a 









11/18/21 





- § The compiler to execute with In as the source file and Bill as the output file needs to perform the following authorization queries 

   - § (Kenny, x, Compiler) 

   - § (Compiler, r, In) 

   - § (Compiler, w, Bill) 

- § Now, only the first two are granted but the third is denied assuming the following capabilities 

   - § Kenny -> [Compiler|x] -> [In|r] 

   - § Compiler -> [Bill|w] 

- § There is no more confusion as **Kenny needs to explicitly pass its capabilities to the Compiler** : 

   - § it can do this for reading the file In but 

   - § it cannot do it for writing to the billing file Bill 

**Confused deputy:** privilege escalation attack where the adversary who does not have direct access to some sensitive resource, indirectly writes the resource by confusing a subject (called deputy) who can access the resource. 



<!-- Start of picture text -->
Standard example:  compiler service<br>In<br>Kenny<br>r<br>x Compiler  w Bill<br>service<br>w<br>Out<br>w<br>30<br><!-- End of picture text -->



<!-- Start of picture text -->
30<br><!-- End of picture text -->



## § Several models exist, e.g. 

   - § **DAC** : subjects can give rights to other subjects (DISCRETIONARY) 

   - § **MAC** : system enforces mandatory rules (MANDATORY) 

- § Can you give an example of DAC policies _?_ And one of MAC policies _?_ 

- § Usually, DAC is too flexible whereas MAC is too restrictive 

## § Search for flexible and expressive models 

- § Role Based Access Control (RBAC) is considered superior to both DAC and MAC 

- § More on RBAC later… 



<!-- Start of picture text -->
31<br><!-- End of picture text -->

16 



<!-- Start of picture text -->
DAC<br><!-- End of picture text -->



<!-- Start of picture text -->
DAC POLICY EXAMPLES<br>ee<br>€<br>DAC AND GROUPS<br>€<br><!-- End of picture text -->



<!-- Start of picture text -->
€<br><!-- End of picture text -->



<!-- Start of picture text -->
DAC AND<br><!-- End of picture text -->



<!-- Start of picture text -->
€<br><!-- End of picture text -->

11/18/21 



## § Pros 

- § **Flexible** - the main reason of its popularity in OSes 

- § Implementation: well understood (e.g., in Unix) 

**Trojan** : any malicious computer program which misleads users of its true intent. They are generally spread by some form of social engineering, for example where a user is duped into executing an e-mail attachment disguised to be unsuspicious 

- § Intuitive 

## § Cons 

- § **Subjective** : rely on owner’s judgement to modify the protection state of a resource 

- § It works if users make no mistakes (impossible): loosing control of the situation is very easy! 

- § Vulnerable to **trojans** ( _information leakage_ ) 

   - § Resource R only readable by Alice 

   - § Bob induces Alice to run a trojan that can read R and copy information to resource R’ readable by Bob 

   - § Bob can read R’ and thus also the information in R 



<!-- Start of picture text -->
34<br><!-- End of picture text -->









<!-- Start of picture text -->
r<br>r<br>R (resource)<br>35<br><!-- End of picture text -->



<!-- Start of picture text -->
35<br><!-- End of picture text -->

18 



<!-- Start of picture text -->
TROJAN(2)<br><!-- End of picture text -->



<!-- Start of picture text -->
TROJAN(2)<br>| _s 7<br>we oy,<br>TROJAN (3), ---= "777m<br>p-« &<br>| _s 7<br>we oy,<br><!-- End of picture text -->





<!-- Start of picture text -->
TROJAN<br><!-- End of picture text -->





<!-- Start of picture text -->
TROJAN (4), ---7 - 7 >~~-,--<br>ts<br>a py.<br>MAC POLICY EXAMPLES<br><!-- End of picture text -->



<!-- Start of picture text -->
TROJAN<br><!-- End of picture text -->





<!-- Start of picture text -->
MAC<br><!-- End of picture text -->





<!-- Start of picture text -->
€<br><!-- End of picture text -->

11/18/21 



- § Early security problem: protection of confidentiality in a military setting 

   - § Given **information at various sensitivity levels** and **users having various degrees of trustworthiness** , how do we control access to information within the system to protect confidentiality? 

   - § Relevant even before computers were invented _!_ 

- § Information with different “sensitivity” levels 

   - § war plan, defense budget, football schedule, cafeteria menu, … 

- § Users with different degrees of trustworthiness: 

   - § generals, privates, colonels, secretaries, janitors) 

- § GOAL: define policy to **prevent the release of sensitive information** (e.g., war plans) **to untrusted users** (e.g., janitors) 



<!-- Start of picture text -->
40<br><!-- End of picture text -->

- **Linear order** : binary relation on a set which satisfies • Antisymmetry • If a>= b & b >= a then a=b 

- • Transitivity 



- If a>=b & b>= c then a>= c 

- • Connex property 

- § How can we **categorize information wrt sensitivity** ? • a>= b or b>=a 

- § Information is compartmentized into separate containers (resources such as documents, folders, or files) labeled according to their _sensitivity label_ **L = (S,N)** 

   - § S takes values over a **linearly ordered set** such as 

      - § Top Secret >= Secret >= Confidential >= Unclassified 

   - § N is a **set of “need-to-know” categories** from an **unordered set** expressing membership within some interest group (e.g., Crypto, Nuclear, Janitorial, Personnel, etc). 

## § Examples 

- § label **(Secret, {Nuclear, Crypto})** indicates a resource containing sensitive information related to the categories “Nuclear” and “Crypto” 

- § label **(TopSecret, {Crypto})** indicates a resource containing very sensitive information related to the category “Crypto” 

**41** 

21 

11/18/21 



- § At creation time, each **resource** is **associated** to a sensitivity **label** by resource originator according to some criteria (not made explicit in the MLS model) 

- § When a document contains both sensitive and non-sensitive information, the **originator needs to use the highest appropriate level** 

- § When some conditions change, e.g. time, it may happen that the associated security label should be downgraded ( **de-classified** ) as the content has become less sensitive 



<!-- Start of picture text -->
42<br><!-- End of picture text -->



- § After associating sensitivity labels to resources, we must establish which users are authorized to access which resources 

- § For this, assign **clearances** (or _authorization levels_ ), which have the same structure of the sensitivity levels associated to resources, i.e. **each user is associated to a clearance C = (S, N )** 

   - § S is a **hierarchical security level** indicating the degree of trustworthiness to which the user has been vetted 

   - § N is a **set of “need-to-know categories”** indicating domains of interest in which the user is authorized to operate 

      - Sensitivity labels (on resources) indicate the sensitivity of the contained information whereas clearances (on users) indicate classes of information that users are authorized to access 

      - Need-to-know categories reflect the _Principle of Least Privilege_ : even within a given security level (such as Top Secret) not everyone needs to know everything 



<!-- Start of picture text -->
43<br><!-- End of picture text -->

22 

11/18/21 



   - (S1,N1) dominates (S2,N2) iff • S1 >= S2 

   - N1 ⊇ N2 

- § Access control policies defined by using sensitivity labels and clearances 

## § _No Read Up Property_ 

- § subject s can read resource r if (Ss, Ns) **dominates** (Sr, Nr) 

- § subject s asking to read the content of a resource r must show that its **clearance dominates the sensitivity label** of the resource 

## § _No Write Down Property_ 

- § subject s can write to resource r if (Sr, Nr) **dominates** (Ss, Ns) 

- § subject s asking to write to a resource must show that its **clearance is dominated by the sensitivity label** of the resource 

Examples: 

- (Secret, {Crypto}) dominates (Confidential, {Crypto}) since 

   - Secret >= Confidential 

- {Crypto} ⊇ {Crypto} 

- • (Secret, {Crypto, Nuclear}) does not dominate (Top Secret, {Crypto}) since 

   - Secret />= Top Secret despite 

   - the fact that {Crypto, Nuclear} ⊇ {Crypto} 



<!-- Start of picture text -->
44<br><!-- End of picture text -->



- § Access control policies defined by using sensitivity labels and clearances 

## § _No Read Up Property_ 

- § subject s can read resource r if (Ss, Ns) **dominates** (Sr, Nr) 

- § subject s asking to read the content of a resource r must show that its **clearance dominates the sensitivity label** of the resource 

## § _No Write Down Property_ 

   - § subject s can write to resource r if (Sr, Nr) **dominates** (Ss, Ns) 

   - § subject s asking to write to a resource must show that its **clearance is dominated by the sensitivity label** of the resource 

- § Notice that the _No Write Down Property_ aims to prevent that a subject with access to a Top Secret file may copy the information into an Unclassified file 

**45** 

23 

11/18/21 



- § Implicit assumption: **Tranquility Principle** prevents the ability to change security labels arbitrarily as this can subvert security 

- § Example 

   - § Subject s1 with highest clearance 

   - § Subject s2 with lowest clearance 

   - § Resource r1 with highest sensitivity label 

   - § Resource r2 with lowest sensitivity label 

   - § After reading the content of r1 (thereby satisfying the _No Read Up Property_ ), s1 change his/her clearance level to lowest and write to resource r2 (thereby satisfying the _No Write Down Property_ ) the content he/she has read from r1 

   - § While both the basic properties of MLS are satisfied, **confidentiality is not preserved** as now s2 (with lowest clearance) can read resource r2 that also contain the information from r1 



<!-- Start of picture text -->
46<br><!-- End of picture text -->



- § Now Read Up, No Write Down and the Tranquility Principle are at the heart of the **Bell-La Padula security model** introduced in **1973** 

- § Despite its age, it is a cornerstone of modern computer security and widely used in military applications 

## § Shortcoming of Bell-La Padula 

- § Can a corporal with no clearance overwrite the war plan (associated to the highest sensitivity level)? 

- § The No Write Down Property does not prevent this but Bell-La Padula is concerned with confidentiality while the question points to an integrity issue (writing to a resource with high sensitivity by a user without enough clearance is likely to make the content of the resource useless) 

- § Use the Biba model, 1977 based on integrity labels (similar mathematical model, different meaning) 

   - § integrity label of a resource characterizes the degree of “trustworthiness” of the information contained in that resource 

   - § integrity label of a subject measures the confidence one places in its ability to produce or handle information 

**47** 

24 

11/18/21 



- § Security levels: Top Secret >= Secret >= Confidential >= Unclassified 

- § Two categories: Nuclear and Army 

- § Four subjects: • Resources 

   - § President with Top Secret clearance for Nuclear and Army 

   - § Colonel has SECRET clearance for Army and Nuclear 

   - § Major has only CONFIDENTIAL clearance for Army 

   - § Soldier has only UNCLASSIFIED clearance for Nuclear 

- Army position at sec lev Secret 

- Number of army units at sec lev Confidential 

- Number of nuclear units at sec lev Confidential 

- Costs of the nuclear program at sec lev Unclassified 

- Costs of the army at sec lev Unclassified 

- • Nuclear code at sec lev Top Secret **48** 



<!-- Start of picture text -->
48<br><!-- End of picture text -->



1. Can the president compute the overall defense costs (army + nuclear)? 

2. Can the major compute the total number of nuclear and army units? 

3. Can the colonel compute the total number of nuclear and army units? 

4. Can the colonel change the army position? 

5. Can the major change the nuclear code? 

6. Can the soldier change the nuclear code? 

7. What problem is raised by previous question? 

**49** 

25 

11/18/21 



- § Security levels: Top Secret >= Secret >= Confidential >= Unclassified 

- § Two categories: Nuclear and Army 

- § Four subjects: 

   - § President with Top Secret clearance for Nuclear and Army 

   - § Colonel has Secret clearance for Army and Nuclear 

   - § Major has only Confidential clearance for Army 

   - President <- (Top Secret, {Nuclear, Army}) 

   - Colonel <- (Secret, {Nuclear, Army}) 

   - Major <- (Confidential, {Army}) 

   - Soldier <- (Unclassified, {Nuclear}) 

- § Soldier has only Unclassified clearance for Nuclear 



<!-- Start of picture text -->
50<br><!-- End of picture text -->



- Resources 

   - Army position at sec lev Secret 

   - Number of army units at sec lev Confidential 

   - Number of nuclear units at sec lev Confidential 

   - Costs of the nuclear program at sec lev Unclassified 

   - Costs of the army at sec lev Unclassified 

   - Army position <- (Secret, {Army}) 

   - Number of army units <- (Confidential, {Army}) 

   - Number of nuclear units <- (Confidential, {Nuclear}) 

   - • Cost of nuclear program <- (Unclassified, {Nuclear}) • Cost of army <- (Unclassified, {Army}) 

   - Nuclear code <- (Top Secret, {Nuclear}) 

- Nuclear code at sec lev Top Secret 

**51** 

26 

- EXERCISE: SOLUTION () QQ MAC: PROS AND CONS <mark>j=</mark> @ 



<!-- Start of picture text -->
EXERCISE:<br><!-- End of picture text -->



11/18/21 







- § A low level subject makes an object _“dummy.obj”_ at its own level 

- § Its high level accomplice either upgrades the security level of _dummy.obj_ to high or leaves it unchanged 

- § Later, the low level subject tries to read _dummy.obj_ . 

   - § Success or failure of this request disclose the action of the high-level subject. 

      - § One bit of information has flown from high to low 

         - § Failure means _dummy.obj_ has be upgraded 

         - § Success means _dummy.obj_ has not been changed 

- § So, _the high level accomplice can send one bit of information to the low level subject_ 

- § If they can repeat this multiple times, _the high level accomplice can send any amount of information to the low level accomplice!_ 



<!-- Start of picture text -->
54<br><!-- End of picture text -->



<!-- Start of picture text -->
54<br>general<br>high clearance subject<br>create<br>soldier dummy.obj 55<br>low clearance subject resource<br>collusion<br>increasing sensitivity/clearance levels<br><!-- End of picture text -->





<!-- Start of picture text -->
55<br><!-- End of picture text -->

28 





A COVERT CHANNEL IN BELL-LA PADULA: FIRST SCENARIO (2) 











<!-- Start of picture text -->
©<br><!-- End of picture text -->





A COVERT CHANNEL IN BELL-LA PADULA: FIRST SCENARIO (3) 













<!-- Start of picture text -->
©<br><!-- End of picture text -->







<!-- Start of picture text -->
A COVERT CHANNEL IN BELL-LA PADULA:<br>SECOND SCENARIO (1)<br>alt<br>|---@<br>~{&—_®<br>@<br>A COVERT CHANNEL IN BELL-LA PADULA:<br>SECOND SCENARIO (2)<br>_.. @<br>@<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->





<!-- Start of picture text -->
@<br><!-- End of picture text -->

11/18/21 









<!-- Start of picture text -->
general<br>high clearance subject<br>• attempt to read, succeed<br>• infer, for instance, that the<br>general wants to transfer a 1 bit<br>soldier dummy.obj 60<br>low clearance subject resource<br>collusion<br>increasing sensitivity/clearance levels<br><!-- End of picture text -->



<!-- Start of picture text -->
60<br><!-- End of picture text -->





<!-- Start of picture text -->
§<br><!-- End of picture text -->

- § Users: Alice, Bob, Charlie, David, Eve, Fred, Greg 

- § Permissions: GrantTenure, AssignGrades, ReceiveBenefits, **UseGym** , Register4Courses 

   - § A **permission** is an abstraction of (action,resource) 

- § Policy rules: 

   - § Alice has permissions: GrantTenure, AssignGrades, _ReceiveBenefits_ , **UseGym** 

   - § Bob and Charlie have permissions: GrantTenure, AssignGrades, **UseGym** 

   - § David has permissions: AssignHWScores, Register4Courses, **UseGym** 

   - § Eve has permissions: _ReceiveBenefits_ , **UseGym** 

   - § Fred has permissions: Register4Courses, **UseGym** 

   - § Greg has permission: **UseGym** 

**61** 

31 

11/18/21 



- Look at the permissions 

- It is possible to group them according to the profile of users or the set of functionalities users need to carry out their work! 



- When a user is promoted or demoted (i.e. changes job and thus changes the set of functions needed to carry out its work)… 

- • ... Administrators need to update the table very carefully for each permission! 



<!-- Start of picture text -->
User Permission<br>Alice GrantTenure<br>Promotion<br>Alice AssignGrades<br>Committee<br>Alice ReceiveBenefits<br>Member<br>Alice UseGym<br>Bob GrantTenure<br>Bob AssignGrades Faculty<br>Bob UseGym Member<br>Charlie GrantTenure<br>Charlie AssignGrades Faculty<br>Member<br>Charlie UseGym<br>David AssignHWScores<br>David Register4Courses Teaching<br>Assistant<br>David UseGym<br>Eve ReceiveBenefits University<br>Eve UseGym Employee<br>Fred Register4Courses Student<br>Fred UseGym<br>Greg UseGym University<br>Member 62<br><!-- End of picture text -->



<!-- Start of picture text -->
62<br><!-- End of picture text -->



<!-- Start of picture text -->
User Permission<br>Alice GrantTenure<br>Promotion<br>Alice AssignGrades<br>Committee<br>Alice ReceiveBenefits<br>Member<br>Alice UseGym<br>Bob GrantTenure<br>Bob AssignGrades Faculty<br>Bob UseGym Member<br>Charlie GrantTenure<br>Charlie AssignGrades Faculty<br>Member<br>Charlie UseGym<br>David AssignHWScores<br>David Register4Courses Teaching<br>Assistant<br>David UseGym<br>Eve ReceiveBenefits University<br>Eve UseGym Employee<br>Fred Register4Courses Student<br>Fred UseGym<br>Greg UseGym University<br>Member 63<br><!-- End of picture text -->



<!-- Start of picture text -->
63<br><!-- End of picture text -->

32 

11/18/21 



1. Alice is a member of the **Promotion Committee** and has permissions GrantTenure, AssignGrades, _ReceiveBenefits_ , **UseGym** 

2. Bob and Charlie are **Faculty Members** and have permissions GrantTenure, AssignGrades, **UseGym** 

3. David is a **Teaching Assistant** and has permissions AssignHWScores, Register4Courses, **UseGym** 

4. Eve is a **University Employee** and has permissions _ReceiveBenefits_ , **UseGym** 

5. Fred is a **Student** and has permissions Register4Courses, **UseGym** 

6. Greg is a **University Member** and has permission **UseGym** 

   - § Words in boldface identify **roles** to which both _users_ and _permissions_ are associated 



<!-- Start of picture text -->
64<br><!-- End of picture text -->



Permission Assignment (PA) **~~Role Permission PCMember~~** ~~GrantTenure~~ **~~PCMember~~** ~~AssignGrades User Assignment (UA)~~ **~~PCMember~~** _~~ReceiveBene~~ fits_ **~~User~~** **~~<u>Role PCMember UseGym</u>~~** ~~Alice~~ **~~PCMember~~** **~~<u>Faculty</u>~~** ~~<u>AssignGrades</u> Bob~~ **~~Faculty Faculty~~** ~~GrantTenure~~ _~~ReceiveBene~~ fits_ ~~Charlie~~ **~~Faculty Faculty UseGym~~** ~~David~~ **~~TA TA~~** ~~AssignHWScores David~~ **~~<u>Student</u> TA~~** ~~Register4Courses Eve~~ **~~<u>UEmployee</u> TA UseGym~~** ~~Fred~~ **~~<u>Student</u> UEmployee~~** _~~ReceiveBenefts~~_ ~~Greg~~ **~~<u>UMember</u> UEmployee UseGym Student~~** ~~Register4Courses~~ **~~Student UseGym UMember UseGym~~** 

User _u_ has permission _<u>p</u>_ iff ~~there exists a role~~ _~~r~~_ <u>s.t. (</u> _<u>u, r</u>_ <u>)</u> _<u>2 UA</u>_ <u>and (</u> _r , p_ ~~)~~ _~~2 PA~~_ 

**65** 

33 

11/18/21 





<!-- Start of picture text -->
User Assignment (UA) Reconsider the s ituation in which Alice<br>User Role resigns from bein g member of the<br>Alice PCMember Promotion Comm ittee and becomes a<br>Bob Faculty Faculty Member<br>Charlie Faculty<br>David TA 1. Delete the a ssociation (Alice,<br>David Student PCMember ) from UA<br>Eve UEmployee 2. Add the ass ociation (Alice,<br>Fred Student Faculty ) to  UA<br>Greg UMember 3. PA is left un changed !<br>Can we do better ?<br>User  u has permission p iff there exists a role  r<br>s.t. ( u, r )  2 UA  and ( r , p )  2 PA<br>66<br><!-- End of picture text -->



<!-- Start of picture text -->
66<br><!-- End of picture text -->



<!-- Start of picture text -->
Permission Assiggnment (PA)<br><!-- End of picture text -->



<!-- Start of picture text -->
Permission Assiggnment (PA)<br>Role Permission<br>PCMember GrantTenure<br>PCMember AssignGrades<br>PCMember ReceiveBenefits<br>PCMember UseGym Set of permissions associated to  PCMember<br>is a superset of<br>Faculty AssignGrades<br>Set of permissions associated to  Faculty<br>Faculty GrantTenure ReceiveBenefits<br>Faculty UseGym<br>TA AssignHWScores<br>TA Register4Courses<br>TA UseGym<br>UEmployee ReceiveBenefts Set of permissions associated to  TA<br>UEmployee UseGym is a superset of<br>Set of permissions associated to  Student<br>Student Register4Courses<br>Student UseGym<br>UMember UseGym There are other relationships, find them out! 67<br><!-- End of picture text -->



<!-- Start of picture text -->
67<br><!-- End of picture text -->

34 

11/18/21 





<!-- Start of picture text -->
User Assignment (UA) Role hierarchy ( ⌫ )<br>User Role P ermission Assignment (PA) Le ast reflexive, antisymmetric, and transitive relation con-<br>Alice PCMember Role Permission taining ( PCMember ,  Faculty ), ( Faculty ,  UEmployee ),<br>Bob Faculty PC Member ReceiveBenef GrantTenure ts ( TA ,  Student ), ( Student ,  UMember ), i.e.<br>Fac ulty AssignGrades<br>Charlie Faculty TA AssignHWScores PCMember TA<br>David TA UEmployee ReceiveBenefts # #<br>David Student Student Register4Courses Faculty Student<br>Eve UEmployee UMember UseGym & .<br>Fred Student FacultPCMembery GrantTenure UMember<br>Greg UMember<br>Hasse diagram of partial order  ⌫<br><!-- End of picture text -->

~~<u>User</u>~~ _~~<u>u</u>~~_ ~~<u>has</u>~~ <u>p</u> ~~ermission~~ _~~<u>p</u>~~_ ~~iff there exist roles~~ _r , r_<sup>_0_</sup> 

~~s.t. (~~ _~~u, r~~_<sup>_~~0~~_</sup> ~~<u>)</u>~~ _~~<u>2 UA</u>~~_ and _r_<sup>_0_</sup> _⌫ r_ and ( _r ,_ _<u>p</u>_ ) _2 PA_ 



<!-- Start of picture text -->
68<br><!-- End of picture text -->



§ What is a binary relation _?_ Let _S_ be a set, _R ✓ S ⇥ S_ is a binary relation over _S_ 

§ What is a reflexive relation _?_ A binary relation _R_ over _S_ is reflexive iff _8e 2 S_ : ( _e, e_ ) _2 R_ 

§ What is an antisymmetric relation _?_ A binary relation _R_ over _S_ is antisymmetric iff _8e, e_<sup>_0_</sup> _2 S_ : if ( _e, e_<sup>_0_</sup> ) _2 R_ and ( _e_<sup>_0_</sup> _, e_ ) _2 R_ then _e_ = _e_<sup>_0_</sup> 

§ What is a transitive relation _?_ 

A binary relation _R_ over _S_ is transitive iff _8e, e_<sup>_0_</sup> _, e_<sup>_00_</sup> _2 S_ : if ( _e, e_<sup>_0_</sup> ) _2 R_ and ( _e_<sup>_0_</sup> _, e_<sup>_00_</sup> ) _2 R_ then ( _e, e_<sup>_00_</sup> ) _2 R_ 



<!-- Start of picture text -->
6 9<br><!-- End of picture text -->

35 

11/18/21 



## § On the university scenario, check that 

1. the access control module based on the first table (user-permission) takes the same decisions as the module based on relations _UA_ and _PA_ 

2. the access control module based on relations _UA_ and _PA_ takes the same decisions as the module based on relations _UA_ , _PA_ , and the role hierarchy 

**3. Note** : is the role hierarchy shown above complete _?_ What about the role **UEmployee** _?_ How does it relate to **UMember** _? (see next slide)_ 



<!-- Start of picture text -->
70<br><!-- End of picture text -->





<!-- Start of picture text -->
User Assignment ( UA) Role hierarchy ( ⌫ )<br>User Role Permission Assignment (PA) Le ast reflexive, antisymmetric, and transitive relatio n con-<br>Alice PCMember Role Permission taining ( PCMe mber ,  Faculty ), ( Faculty ,  UEmpl oyee ),<br>Bob Faculty PCMember ReceiveBenef GrantTenure ts ( TA ,  Student ), ( Student ,  UMember ), i.e.<br>Faculty AssignGrades<br>Charlie Faculty TA AssignHWScores PCMemb er TA<br>David TA UEmployee ReceiveBenefts # #<br>David Student Student Register4Courses Faculty UEmployee Student<br>Eve UEmployee UMember UseGym & # .<br>Fred Student FacultPCMembery GrantTenure UMember<br>Greg UMember UEmployee ReceiveBenefts Hasse diagram of partial order  ⌫<br><!-- End of picture text -->

~~<u>User</u>~~ _~~<u>u</u>~~_ ~~<u>has</u>~~ <u>p</u> ~~ermission~~ _~~<u>p</u>~~_ ~~<u>iff there exist roles</u>~~ _~~r , r~~_<sup>_0_</sup> ~~s.t. (~~ _~~u, r~~_<sup>_~~0~~_</sup> ~~<u>)</u>~~ _~~<u>2 UA</u>~~_ and _r_<sup>_0_</sup> _⌫ r_ and ( _r ,_ _<u>p</u>_ ) _2 PA_ 



<!-- Start of picture text -->
71<br><!-- End of picture text -->

36 



<!-- Start of picture text -->
ROLE HIERARCHY: EXAMPLES<br>Project Supervisor<br>Primary-carePhysician SpecialistPhysician AON<br>Ne Test Engineer Programmer<br>Physician NU<br>_ provider Project Member<br>@<br><!-- End of picture text -->



<!-- Start of picture text -->
ROLE<br><!-- End of picture text -->

# ROLE HIERARCHY: EXAMPLES 



<!-- Start of picture text -->
| |<br>Primary-care Specialist<br>Physician Physician<br>Mo<br>\ Physician /<br>\<br>\ | /<br>af<br>Health-care provider Project Member<br>@<br><!-- End of picture text -->



<!-- Start of picture text -->
ROLE<br><!-- End of picture text -->

ROLE BASED ACCESS CONTROL 



<!-- Start of picture text -->
©<br><!-- End of picture text -->



<!-- Start of picture text -->
ROLE<br><!-- End of picture text -->



<!-- Start of picture text -->
=@=@2=<br><><br><!-- End of picture text -->



11/18/21 



- § Groups are collections of users 

- § A role is § a collection of users and a collection of permissions 

- § Sometimes role defined simply as a collection of permissions 



<!-- Start of picture text -->
76<br><!-- End of picture text -->



- § Users are 

   - § human beings or 

other active agents (as programs, applications, ...) 

- § Each individual should be known as exactly one user 

   - § That’s why authentication is pre-requisite _!_ 

**77** 

39 



<!-- Start of picture text -->
USER-ROLE<br><!-- End of picture text -->





USER-ROLE ASSIGNEMENT (UA RELATION) 



<!-- Start of picture text -->
@<br><!-- End of picture text -->







<!-- Start of picture text -->
(PA<br><!-- End of picture text -->

PERMISSION-ROLE ASSIGNEMENT (PA RELATION) 



<!-- Start of picture text -->
@<br><!-- End of picture text -->











<!-- Start of picture text -->
UA PA<br>Users *——* Roles Operations *—> Objects<br>Permissions<br>user_sessions role_sessions<br>(one-to-many) (many-to-many)<br>Sessions<br><!-- End of picture text -->





<!-- Start of picture text -->
CORE RBAC<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->





<!-- Start of picture text -->
| Object 5 r Ops 5 - User 7<br>_ | Physician |. User 5<br>[ Objet 1 FOr» 1 — User 1<br><!-- End of picture text -->





<!-- Start of picture text -->
——S Cardiol-<br>(eviece1 F Ons User<br>RH<br>(role hierarchy)<br>Permissions<br>user_sessions role sessions<br>(one-to-many) (many-to-many)<br><!-- End of picture text -->

















<!-- Start of picture text -->
~~ Cardiol-) :<br>| Object 5 r Ops 5 User 7<br>; | Physician |+ User 5<br>| Obiect2| on 2 User 3<br>I Resident —— User 2<br>Object 1 Ops 1 User 1<br><!-- End of picture text -->











<!-- Start of picture text -->
~—~{_ Cardiol-<br>| Object 5 [Ors 5 User 7<br>Object 4 Ops 4 User 6<br>Object1 *Ops| User1<br><!-- End of picture text -->



<!-- Start of picture text -->
~—~{_ Cardiol-<br>| Object 5 [Ors 5 User 7<br>Object 4 Ops 4 User 6<br>Object1 /~Ops| User1<br><!-- End of picture text -->









<!-- Start of picture text -->
RBAC<br><!-- End of picture text -->





<!-- Start of picture text -->
(oneste-many) L_ Dinamo<br>~<br><!-- End of picture text -->





<!-- Start of picture text -->
SOD<br><!-- End of picture text -->

CONSTRAINED RBAC: SOD 





<!-- Start of picture text -->
@<br><!-- End of picture text -->

11/18/21 





§ _D. F.  Ferraiolo, R. Sandhu, S. Gavrila, D. R. Kuhn and R. Chandramouli. “_ **_Proposed NIST Standard for Role-Based Access Control_** _.” ACM Transactions on Information and System Security, Volume 4, Number 3, August 2001, pages 224-274._ 



<!-- Start of picture text -->
92<br><!-- End of picture text -->



## § Pros 

- § Easy to grasp the idea of roles 

- § Easy to manage in principle 

   - § Roles decouple digital identities from permissions 

   - § Simply assign roles to a new subject, instead of deciding on access for each resource 

   - § Easy to revoke authorization for a subject by removing roles 

- § Easy to tell through roles which permissions a subject has, and why 

## § Cons 

- § Difficult to decide on the granularity of roles 

   - § Should we create separate roles for modifying client information and for deleting a client, or not? 

   - § Is authorization too broad / still up-to-date for all subjects having this role? 

- § Role meaning is fuzzy 

   - § Employee position in company may be different from RBAC roles 

   - § Source of misunderstanding between admins and managers, for instance who assign them 



<!-- Start of picture text -->
93<br><!-- End of picture text -->

47 

11/18/21 



- § What is access control and what is its basic architecture? 

- § What is an access control matrix? ACLs? Capabilities? 

- § What is DAC? 

- § What is MAC? Define No Read Up and the No Write Down principles. 

- § What are the differences, advantages and disadvantages of DAC and MAC? 

- § What is RBAC? How does it simplify administration? 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
94<br><!-- End of picture text -->



- § Define the Principle of Least Priviledge 

- § What is a confused deputy? 

- § What is a trojan? 

- § What is a covert channel?  How can a covert channel be created in MAC? 

- § How access control can mitigate command injection attacks? 

S. Ranise - Security & Trust (FBK) 

**95** 

48 

