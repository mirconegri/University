12/2/21 







<!-- Start of picture text -->
Introduction to Computer and Network Security<br>Silvio Ranise  [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or  ranise@fbk.eu ]<br><!-- End of picture text -->

Introduction to Computer and Network Security _Silvio Ranise_ [ silvio.ranise@unitn.itsilvio.ranise@unitn.it or _<u>ranise@fbk.eu</u>_ ] 





- § Attribute Based AC (ABAC) § Overview § Reference architecture 

- § XACML 

   - § Language for specifying ABAC policies § Request/response protocol 



   - § Reference architecture 

- § OAuth 2.0 

   - § Key ideas 

   - § More details 

      - § Authentication Code Flow 

   - § Relationship to capabilities 



<!-- Start of picture text -->
§ Hints to OpenID Connect<br>S. Ranise - Security & Trust (FBK) 1<br><!-- End of picture text -->



<!-- Start of picture text -->
1<br><!-- End of picture text -->

1 

12/2/21 





<!-- Start of picture text -->
§ Complexity of security administration<br>§ For large number of subjects & objects, the  number of authorizations can become very<br>large<br>§ For dynamic user population, the number of  grant & revoke operations  to be performed<br>can become  very difficult to manage<br>Ali ce B o b C ar l D ave E va<br>Users:<br>Permissions: DB2     WebS p here  Windows  Linux<br>Account Account Account Account<br>S. Ranise - Security & Trust (FBK) 2<br><!-- End of picture text -->



- § Organizations operate based on roles § Roles add a useful level of indirection 

- § RBAC assigns permissions to roles in the organization, rather than directly to users 



<!-- Start of picture text -->
§ With roles, there are fewer relationships to manage<br>§ Possibly from O(m*n) to O(m+n), where m = num. of users and n = num. of permissions<br>Alice Bob Carl Dave Eva<br>Users:<br>Roles: DB Admin Web Admin Software Developer<br>Permissions: DB2 WebSphere Windows Linux<br>Account Account Account Account<br>S. Ranise - Security & Trust (FBK) 3<br><!-- End of picture text -->



<!-- Start of picture text -->
3<br><!-- End of picture text -->

2 

12/2/21 



## § **Roles may not be enough for easily expressing authorization conditions** 

- § What about conditions depending on 

   - § Additional attributes in the profile of a subject? 

   - § Additional attributes of a resource? E.g., meta-data of files 

   - § time and location? More in general environment attributes? 

§ To meet these requirements, RBAC has been extended in several deployments 

## § **What about mixing different patterns of authorization conditions?** 

- § It is possible that a mixture of MLS and RBAC is needed in some situations; their combination is not obvious 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
4<br><!-- End of picture text -->



<!-- Start of picture text -->
5<br><!-- End of picture text -->





<!-- Start of picture text -->
Attribute Based Access Control<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

3 

12/2/21 



§ Define authorizations that express conditions on properties of both the resource and the subject 

§ Each resource has an attribute (e.g., the subject that created it) 

§ A single rule states ownership privileges for the creators 

## § Strengths 

§ Flexibility and expressive power 

§ Possibility to combine different patterns of authorization conditions in a natural way 

§ Possibility to consider authorization conditions depending on environment attributes 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
6<br><!-- End of picture text -->



## § ABAC control access based on 3 different attribute types 

- § user attributes 

- § attributes associated with the resource to be accessed 

- § environmental conditions 

> § Any available attribute can be used by itself or in combination with another to define the right authorization condition for controlling access to a resource 

## § Example 

§ Allowing only users who are type=employees and have department=HR to access the HR/Payroll system and only during business hours within the same time zone as the company 

S. Ranise - Security & Trust (FBK) 

**7** 

4 

12/2/21 







# § **RBAC is for coarse-grain AC and ABAC is for fine-grain AC** 

# § Examples 

§ RBAC 

§ Giving all teachers access to Google 

§ ABAC 

§ Giving teachers access to Google if they are at School X and teach Grade Y 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
8<br><!-- End of picture text -->



<!-- Start of picture text -->
Access Control<br>Policy<br><!-- End of picture text -->







<!-- Start of picture text -->
Environment<br>Conditions<br><!-- End of picture text -->





<!-- Start of picture text -->
2d<br><!-- End of picture text -->



<!-- Start of picture text -->
2a<br><!-- End of picture text -->



<!-- Start of picture text -->
rules<br>Decision Enforce<br>3<br>ABAC<br>Access Control  2c<br>Mechanism<br><!-- End of picture text -->





<!-- Start of picture text -->
Object<br><!-- End of picture text -->



<!-- Start of picture text -->
1<br><!-- End of picture text -->



<!-- Start of picture text -->
Subject<br><!-- End of picture text -->



<!-- Start of picture text -->
2b<br><!-- End of picture text -->



<!-- Start of picture text -->
Name Affiliation<br><!-- End of picture text -->



<!-- Start of picture text -->
Type<br><!-- End of picture text -->



<!-- Start of picture text -->
Subject Attributes<br><!-- End of picture text -->



<!-- Start of picture text -->
Object Attributes<br>1. Subject requests access to object<br>2. Access Control Mechanism evaluates a) Rules, b) Subject Attributes, c) Object Attributes, and<br>d) Environment Conditions to  compute a decision<br>3. Subject is given access to object if authorized<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 9<br><!-- End of picture text -->

5 



<!-- Start of picture text -->
THE ABAC<br><!-- End of picture text -->



<!-- Start of picture text -->
MODEL<br><!-- End of picture text -->

THE ABAC MODEL (CONT'D) 



<!-- Start of picture text -->
@<br><!-- End of picture text -->



<!-- Start of picture text -->
ABAC<br><!-- End of picture text -->



ABAC POLICY 



<!-- Start of picture text -->
@<br><!-- End of picture text -->

12/2/21 



- § MPEG adult movies can only be downloaded by users whose age is greater than 18 

- § **Authorization does not refer to specific user** § Applies to all users whose age is greater than 18 years 



<!-- Start of picture text -->
§ Authorization does not refer to specific resource<br>§ MPEG movies have an attribute that denotes their type<br>§ In this case it is adult movies<br>S. Ranise - Security & Trust (FBK) 12<br><!-- End of picture text -->



<!-- Start of picture text -->
12<br><!-- End of picture text -->



- § A subject is an active entity that causes information to flow among objects or changes the system state 

- § **Attributes define the identity and characteristics of the subject** , e.g., 

   - § Name 

   - § Organization 

   - § Job title 

   - § Role 

   - § … 



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

**13** 

7 

12/2/21 



§ An object (or resource) is a passive information system-related entity containing or receiving information 

- § **Objects have attributes that can be leveraged to make access control decisions** , e.g., 

   - § Title 

   - § Author 

   - § Date of creation 

§ Size § Categories of content 

§ … 

S. Ranise - Security & Trust (FBK) 



- § **Describe the operational, technical, and even situational environment or context in which the information access occurs** , e.g., 



<!-- Start of picture text -->
14<br><!-- End of picture text -->

   - § Current date 

   - § Current virus/hacker activities 

   - § Network security level 

   - § Any feature _not associated with a resource or subject_ 

- § These attributes have been largely ignored in most access control policies 

S. Ranise - Security & Trust (FBK) 

**15** 

8 

12/2/21 



- § ABAC can mimic all previous AC models 

- § To see how this is possible, it is sufficient to observe that it is sufficient to introduce appropriate attributes for subjects and resources (and possibly appropriate function or predicates) so as to be able to express the conditions for granting or denying access of the corresponding AC model 



<!-- Start of picture text -->
§ Example:  ACLs identifier of a resource<br>§ Introduce<br>§ an attribute  sid  for subject identifiers  identifiers of subjects<br>§ an attribute  rid  for resource identifiers<br>§ for a resource identifier  rid1  consider its ACL: rid1-> [sid1 -> {r,w}, sid2 ->{w}, …]<br>§ add the following rules:<br>§§ r.rid = rid1 & s.sid = id1 & (a.id = r | a.id = w)  r.rid = rid1 & s.sid = id2 & a.id = w • & denotes logical AND<br>§ … •• |  denotes logical OR e.a (dot notation) allows for referencing<br>attribute  a  of entity  e<br>S. Ranise - Security & Trust (FBK) 16<br><!-- End of picture text -->



- § Example: **RBAC** 

- § Introduce 

   - § an attribute _role_ for subjects 

   - § an attribute _permission_ for resources 

- § For (u,r) in UA and (r,p) in PA 

- § add the following rule: 

   - § s.sid = u & s.role = r & r.permission = p & r.rid = get-resource(p) & a.id = get-action(p) 

- § We assume that a permission p is a pair (rid, aid) where rid is an identifier of a resource and aid is an identifier of an action. Notice the additional functions that are assumed to be such that 

   - § get-resource((rid,aid)) = rid 

   - § get-action((rid,aid)) = aid 

S. Ranise - Security & Trust (FBK) 

**17** 

9 

12/2/21 



<!-- Start of picture text -->
18<br><!-- End of picture text -->





<!-- Start of picture text -->
e X tensible  A ccess  C ontrol  M arkup  L anguage is an OASIS standard<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->









- § XACML = e **X** tensible **A** ccess **C** ontrol **M** arkup **L** anguage is an OASIS standard 

- § Developed for collaborative environments 

   - § Data sharing across different organizational domains 

- § XACML is extensible and is an XML encoded language 

- § Can specify access control policies, access control requests, and access control decisions and contains **more than policy specification language …** 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
19<br><!-- End of picture text -->

10 

12/2/21 



## **1. XACML policy language** 

- § Specify access control rules 

- § Algorithms for combining policies 

## **2. XACML request/response protocol** 

- § Used to query a decision engine that evaluates user access requests against policies 

## **3. XACML reference architecture** 

- § For deployment of software modules to house policies and attributes and compute and enforce access control decisions 

S. Ranise - Security & Trust (FBK) 



## § **Resource** 

- § Data or system component needing protection 

## § **Subject** 

- § An actor who requests access to specific resources 

## § **Attributes** 

   - § Characteristics of the resource, subject, action, or the environment 

- § **Target** 

   - § Defines conditions that determine whether policy applies to the request 



<!-- Start of picture text -->
20<br><!-- End of picture text -->

- § **Action** 

   - § An operation on a resource 

## § **Environment** 

- § Properties not belonging to resources, subjects, or actions that are important for the authorization decision 

S. Ranise - Security & Trust (FBK) 

**21** 

11 



<!-- Start of picture text -->
XACML<br><!-- End of picture text -->



<!-- Start of picture text -->
XACML REQUESTS<br>€<br><!-- End of picture text -->



<!-- Start of picture text -->
€<br><!-- End of picture text -->



<!-- Start of picture text -->
[=|<br><!-- End of picture text -->













<!-- Start of picture text -->
PolicySet Policy combining<br>algorithm*<br>Target:<br>PolicySet applies if...<br>Policy Rule combining<br>algorithm*<br>Target:<br>Policy applies if...<br>Rule<br>Target:<br>Rule applies if...<br>Effect:<br>Rule returns:<br>{permit, deny}<br>Conditions:<br>Rule is satisfied if... (*) The following rules exist for Policy<br>Combining and Rule Combining algorithms:<br>* Permit-overrides<br>; * First-applicable<br>fi ** Only-one-applicableDeny-overrides<br><!-- End of picture text -->

12/2/21 



- § Rules have a set of Boolean conditions 

- § Rules evaluate to **true** or **false** or **indeterminate** 

- § Policy can have multiple rules 

- § Rules can be combined by **rule combining algorithms** 

- § There are 12 rule combining algorithms available but we will only see 4… 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
26<br><!-- End of picture text -->





- § Four commonly used rule combining algorithm 

   - § Deny overrides 

      - § AND operation on Permit 

   - § Permit overrides 

      - § OR operation on Permit 

   - § First applicable 

      - § Result is the result of the first decision 

   - § Only one applicable 

      - § If more than one decision applies, then the result is Indeterminate 

S. Ranise - Security & Trust (FBK) 

- Notice that rule combining algorithms can be used to solve rule and policy conflicts 

- • Example 

   - rule 1 grants access to a set  S of subjects to a given resource r 

   - rule 2 denies access to the same set  S of subjects to the same resource r 

   - DenyOverrides(rule 1, rule 2) specifies that in case of conflict, we  want to be cautious and deny access possibly causing a bit of problems wrt business continuity 

   - PermitOverrieds(rule 1, rule 2) specifies that in case of conflict, we want to guarantee business continuity and possibly be less secure **27** 



<!-- Start of picture text -->
27<br><!-- End of picture text -->

14 









<!-- Start of picture text -->
02. <Description><br>03. Some optional text that explains the purpose of the rule<br>04. </Description><br>05. <Target><br>06. <Subjects><br>o7. <Subject><br>08. SubjectMatch MatchIid=<br>09. “urn:oasis:names:tc:xacml:2.0:function:string-equal"><br>10. <AttributeValue DataType=<br>1 “http: //www.w3.org/2001/XMLSchema#string"><br>Pe developer<br>13. </AttributeValue><br>14. <SubjectAttributeDesignator><br>15. role<br>16. </SubjectAttributeDesignator><br>17. SubjectMatch><br>18. </Subject><br>19. </Subjects><br>20. </Target><br>21. | </Rule><br><!-- End of picture text -->







<!-- Start of picture text -->
01. KPolicy PolicyId="pol-0001" RuleCombiningAlgid=<br>02. “urn:oasis:names:tce:xacml:1.0:rule-combining-algorithm:deny-overrides"<br>03. <Description.<br>O04. Some optional text that explains the purpose of the policy<br>os. </Description><br>06. <Target><br>o7. <Subjects><br>08. <Subject><br>09. <SubjectMatch MatchId=<br>a "“urn:oasis:names:te:xacml:2.0:function:string-equal"><br>i <AttributeValue DataType=<br>125 “http: //www.w3.org/2001/XMLSchema#string"><br>tae developer<br>14. </AttributeValue><br>is. <SubjectAttributeDesignator><br>16. role<br>17. </SubjectAttributeDesignator><br>18. </SubjectMatch><br>19. </Subject><br>20. </Subjects><br>21. </Target><br>tee </Policy<br><!-- End of picture text -->









<!-- Start of picture text -->
01. <PolicySet PolicySetId="pls-0001" PolicyCombiningAlgId=<br>03. <Description><br>04. Some optional text that explains the purpose of the policy set<br>05. </Description><br>O06. <Target><br>o7. <Subjects><br>os. <Subject><br>09. <SubjectMatch MatchId=<br>10. “urn:oasis:names:tc:xacml:2.0:function:string-equal"><br>i1. <AttributeValue DataType="http: www.w3.org/2001/XMLSchemaf#string"><br>12. developer<br>see </AttributeValue><br>14. <SubjectAttributeDesignator><br>15. role<br>16. </SubjectAttributeDesignator><br>i7. </SubjectMatch><br>18. </Subject><br>19. </Subjects><br>20. </Target><br>21. <PolicyIdReference><br>Zan pol-0001<br>Zae </PolicyIdReference><br>24, <Policy Policyld="pol-0001" RuleCombiningAlgid=<br>25, "“urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:deny-overrides"><br>26. <Target/><br>ate <Rule RuleId="rul-0001" Effect="Permit"/><br>28. </Policy><br>29. </PolicySet><br>@<br><!-- End of picture text -->



<!-- Start of picture text -->
XACML<br><!-- End of picture text -->



<!-- Start of picture text -->
02. <Subject><br>03. <Attribute Attributeld="role"<br>05. developer<br>06. </Attribute><br>07. </Subject><br>os. <Resource><br>09. <ResourceContent><br>10. <le-<br>11. In case the Resource is an XML document, it can be inlined<br>12. here, so that Rules can depend on the contents.<br>13. --><br>14. <example/><br>15. </ResourceContent><br>16. <Attribute DataType="htt www .W 2001/xM. ema#string"<br>18. /some/example.xml<br>19. </Attribute><br>20. </Resource><br>Philo <Action><br>220 <Attribute aType="http: //www.w3.org/2001/XMLSchema#string"<br>24. retrieve.contents<br>25. </Attribute><br>26. </Action><br>27. <Environment><br>28. <Attribute DataType="http: //www.w3.org/2001/XMLSchemaé#dateTime"<br>30. 2010-06-14T11:12:032<br>al </Attribute><br>aza </Environment><br>33. </Request><br><!-- End of picture text -->





<!-- Start of picture text -->
ple <Response><br>02. <Result Resourceld="/some/example.xml"><br>03. <Decision>Permit</Decision><br>04. </Result><br>Os. </Response><br><!-- End of picture text -->







<!-- Start of picture text -->
access obligations<br>—_<br>3. request 12. response<br>4. request<br>notification5. attribute -<br>Pp oP queries contextext 9. resource resour<br>|<10. attributes handler content esource<br>11. response<br>_ _<br>context )<br>6. attributequery 8. attribute<br>( Tc. resource<br>1. policy | PIP 7b. attributesenvironment<br>\ attributes<br>Ta. subject<br>attributes<br>PAP subjects environment | ( )<br>requesteraccess 2. access request —> 13. obligations —_obligationsservice<br>3. request 12. response<br>4. request<br>notification5. attribute -<br>Pp oP queries contextext 9. resource resour<br>|<10. attributes handler content esource<br>11. response<br>_ _<br>context )<br>6. attributequery 8. attribute<br>( Tc. resource<br>1. policy | PIP 7b. attributesenvironment<br>\ attributes<br>Ta. subject<br>attributes<br>PAP subjects environment | ( )<br><!-- End of picture text -->



<!-- Start of picture text -->
)<br><!-- End of picture text -->



<!-- Start of picture text -->
)<br><!-- End of picture text -->







<!-- Start of picture text -->
access obligations<br>3.request 12. response<br>4. request<br>notification<br>5. attribute -<br>por queries 9. resource<br>}<——10. attributes content resource<br>11. response<br>_ _ context<br>6. attributequery 8. attribute<br>Te. resource<br>1. policy PIP 7b. attributesenvironment<br>attributes<br>Ta. subject<br>attributes<br>PAP subjects environment | ( )<br>access obligations<br>3.request 12. response<br>4. request<br>notification5. attribute -<br>10. queriesattributes handlercontextext 9. contentresource resouresource<br>11. response<br>context<br>6. attributequery 8. attribute<br>Te. resource<br>1. policy PIP 7b. attributesenvironment<br>attributes<br>Ta. subject<br>attributes<br>PAP subjects environment | ( )<br><!-- End of picture text -->



<!-- Start of picture text -->
)<br><!-- End of picture text -->



<!-- Start of picture text -->
)<br><!-- End of picture text -->







<!-- Start of picture text -->
access obligations<br>3.request 12. response<br>4. request<br>notification5. attribute -<br>Pp oP queries contextext 9. resource resour<br>|<10. attributes handler content esource<br>11. response<br>_ _ context<br>6. attributequery 8. attribute<br>Te. resource<br>1. policy PIP 7b. attributesenvironment<br>\ attributes<br>Ta. subject<br>attributes<br>subjects environment |<br><!-- End of picture text -->



<!-- Start of picture text -->
access obligations<br>3.request 12. response<br>4. request<br>notification5. attribute -<br>Pp oP queries contextext 9. resource resour<br>|<10. attributes handler content esource<br>11. response<br>_ _ context<br>6. attributequery 8. attribute<br>Te. resource<br>1. policy 7b. attributesenvironment<br>attributes<br>Ta. subject<br>attributes<br>PAP subjects environment |<br><!-- End of picture text -->



<!-- Start of picture text -->
)<br><!-- End of picture text -->



<!-- Start of picture text -->
)<br><!-- End of picture text -->

12/2/21 



<!-- Start of picture text -->
40<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
41<br><!-- End of picture text -->



- § Many cars today come with a **valet key** 

- § It is a special key you give the parking attendant and unlike your regular key, will not allow the car to drive more than a mile or two 

- § Some valet keys will not open the trunk, while others will block access to your onboard cell phone address book 

- § Regardless of what restrictions the valet key imposes, the idea is clear: 

   - § you give someone limited access to your car with a special key, while using your regular key to unlock everything 

S. Ranise - Security & Trust (FBK) 

21 

12/2/21 





<!-- Start of picture text -->
§ Consider a photo lab printing your online<br>photos<br>Identity Server<br>§ Straightforward implementations may  (Facebook, NetIQ Access Manager, etc.)<br>request to provide your username and<br>password to the other site<br>§ When you agree to share your secret  Login & get  Validate token and<br>credentials, not only do you expose your  OAuth token provide access<br>password to someone else, you also give<br>them full access to do as they wish<br>§ They can do anything they want – even<br>change your password and lock you out Send Access<br>§ This is the problem OAuth solves token with token<br>§ It allows you (users) to grant access to your private resources on one site (which is  User Photo printing application Photo Storage (Flickr)<br>called the Service Provider), to another site<br>(called Consumer/Client)<br>S. Ranise - Security & Trust (FBK) 42<br><!-- End of picture text -->



<!-- Start of picture text -->
42<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->





<!-- Start of picture text -->
1<br>§ Step 1: Authentication  (User logs into social site; not part of OAuth 2.0 protocol)<br>§ The focus of OAuth 2 is only authorization and leaves authentication to the application<br>§ OAuth 2 simply requires the user to be authenticated and does not dictate how to do this<br>§ Extensions to Oauth 2 such as Open ID Connect (OIDC) can be useful for authentication<br>2<br>myapp<br>§ Step 2: User Consent  Continue as John Doe<br>§ OAuth 2.0 allows users to decide what can be shared with 3 rd -party apps) OAuth<br>§ An OAuth token will be created based on the rights to which the token user consents token<br>4 3<br>§ Step 3: Get OAuth Token<br>§ The third-party printing app receives an OAuth bearer token from the social site<br>§ This token includes details about the access rights of the token bearer Welcome to<br>§ The application can then use this token to access the photos on behalf of this user  Photo Printing App!<br>§ A token is analogous to a valet key<br>§ Step 4: Access Resource<br>§ The printing app can now access the resource server (Flickr) using the token to get the user’s<br>data (photos)<br>Validate token<br>Photo-sharing site<br>S. Ranise - Security & Trust (FBK) 43<br><!-- End of picture text -->



<!-- Start of picture text -->
43<br><!-- End of picture text -->

22 

12/2/21 



<!-- Start of picture text -->
44<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->





- § The OAuth 2.0 authorization framework enables 

   - § a third-party application to obtain limited access to an HTTP service, 

   - § either on behalf of a resource owner by orchestrating an approval interaction between the resource owner and the HTTP service, 

   - § or … 

**More down-to-earth definition** OAuth 2.0 is a _delegation protocol_ that lets users allow applications to access resources on their behalf S. Ranise - Security & Trust (FBK) 

**45** 

23 

12/2/21 









<!-- Start of picture text -->
§ Resource owner<br>§ Can access to certain resources<br>§ Can delegate access to resources<br>§ Is usually a person<br>§ Protected resource<br>§ Service provider protecting resources for their owner<br>§ Shares resources on owner’s request<br>§ Client  (app)<br>§ Wish to access protected resources<br>§ Acts on owner’s behalf<br><!-- End of picture text -->



<!-- Start of picture text -->
§ Authorization server<br>§ Generates tokens for the client<br>§ Authenticate resource owners and clients<br>§ Manages authorizations<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->







## § **Resource owner** 



<!-- Start of picture text -->
§ Can access to certain resources<br>§ Can delegate access to resources<br>§ Is usually a person<br><!-- End of picture text -->



<!-- Start of picture text -->
§ Protected resource<br>§ Service provider protecting resources for their owner<br>§ Shares resources on owner’s request<br><!-- End of picture text -->



<!-- Start of picture text -->
§ Client  (app)<br>§ Wish to access protected resources<br>§ Acts on owner’s behalf<br>§ Authorization server<br>§ Generates tokes for the client<br>§ Authenticate resource owners and clients & manages<br>authorizations<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->



<!-- Start of picture text -->
Resource Owner Authorization ServerServer<br>Client Protected<br>Resource<br>( Service<br>Provider )<br>46<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization ServerServer<br><!-- End of picture text -->



<!-- Start of picture text -->
Protected<br>Resource<br><!-- End of picture text -->



<!-- Start of picture text -->
46<br><!-- End of picture text -->



<!-- Start of picture text -->
In many cases, these<br>two “live” on the<br>same server…<br>although this is not<br>always the case...<br><!-- End of picture text -->



<!-- Start of picture text -->
Resource Owner Authorization ServerServer<br>Client Protected<br>Resource<br>47<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization ServerServer<br><!-- End of picture text -->



<!-- Start of picture text -->
Protected<br>Resource<br><!-- End of picture text -->



<!-- Start of picture text -->
47<br><!-- End of picture text -->

24 

12/2/21 



<!-- Start of picture text -->
OAuth token<br><!-- End of picture text -->





## **OAuth token** 

- § Represent granted delegated authorities 

   - § From the resource owner to the client for the protected resource 

§ Issued by authorization server 

§ Used by client 

- § Format is opaque **to clients** 

- § Examples 

§ 92d42038006dba95d0c501951ac5b5eb 

- § 2df029c6-b38d-4083-b8d9-db67c774d13f 

§ Consumed by protected resource 

- Token is not opaque to AS and RS 

- How can AS and RS understand what is inside a token? 

   - Database lookup 

   - • S. Ranise - Security & Trust (FBK)Put info in the token (JWT) • RS query the AS 



<!-- Start of picture text -->
Resource Owner Authorization ServerServer<br>Client Protected<br>Resource<br>48<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization ServerServer<br><!-- End of picture text -->



<!-- Start of picture text -->
Protected<br>Resource<br><!-- End of picture text -->



<!-- Start of picture text -->
48<br><!-- End of picture text -->





<!-- Start of picture text -->
§ Core protocol defined only for HTTP  OAuth 2.0<br>§ Relies on TLS for securing messages  TLS<br>HTTP<br>§ Not an authentication protocol<br>§ Relies on authentication in several places<br>§ Client authentication to token endpoint  OpenID Connect<br>§ Resource owner authentication at authorization endpoint  OAuth 2.0<br>§ Authentication protocols can be built using OAuth (OpenID Connect)  TLS<br>§ More on this protocol later in these slides<br>HTTP<br>§ Allows a user to delegate to a piece of software but not to another user<br><!-- End of picture text -->

S. Ranise - Security & Trust (FBK) 

**49** 

25 

12/2/21 



## § No authorization processing 

- § Tokens can represent scopes and other authorization information 

- § Processing of this information is up to the resource server 

- § However, several methods (e.g., Jason Web Token) to communicate this information 

## § No token format 

- § Token is opaque to the client 

- § **Token needs to be issued by the authorization server and understood by the resource server, but they’re free to use whatever format they want** 

   - § JSON Web Tokens (JWT) provide a useful common format 

## § Not a single protocol 

- § OAuth 2.0 is a _framework_ consisting of several flows (more on this in the following slides) 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
50<br><!-- End of picture text -->



<!-- Start of picture text -->
51<br><!-- End of picture text -->













<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

26 







<!-- Start of picture text -->
{<br>"alg" : ,<br>"typ" : wy<br>}<br>base64url encoded string: eyBhbGcgO0iBIUZI1NiwgdHlwIDogSldUIH@K<br><!-- End of picture text -->







<!-- Start of picture text -->
{<br>"alg" : ,<br>"typ" : wy<br>}<br>base64url encoded string: eyBhbGcgO0iBIUZI1NiwgdHlwIDogSldUIH@K<br><!-- End of picture text -->







<!-- Start of picture text -->
{<br>"alg" : "HS256"<br>"typ" : ie<br>}<br>base64url encoded string: eyBhbGcgO0iBIUZI1NiwgdHlwIDogSldUIH@K<br><!-- End of picture text -->







<!-- Start of picture text -->
{<br>“user_name" : "admin",<br>}<br>base64url encoded string: eyB1lc2VyX25hbWUg0iBhZG1pbiB9Cg<br><!-- End of picture text -->



12/2/21 



## § JWT = JSON Web Token 

- § De facto standard for OAuth 2.0 access token 

   - § OAuth Standard does not impose any particular format 

## § JWT consists of 3 components 

- § Header 

- § Payload 

- § **Signature** 

   - § used to validate that the token has not been tampered with 

   - § calculated by concatenating the header with the payload, then signing with the algorithm specified in the header (e.g., RS256) 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
56<br><!-- End of picture text -->



## § JWT = JSON Web Token 

- § De facto format for OAuth 2.0 access token 

   - § Standard does not impose any particular format 

- § JWT consists of 3 components 

   - § Header 

   - § Payload 

   - § Signature 

- § Complete token obtained by concatenating the 3 components above 

S. Ranise - Security & Trust (FBK) 

**57** 

29 

12/2/21 



<!-- Start of picture text -->
58<br><!-- End of picture text -->











S. Ranise - Security & Trust (FBK) 







<!-- Start of picture text -->
Resource Owner resource owner to the Client redirects the  Authorization Server Resource Owner authenticates Resource owner  to the  Authorization Server<br>authorization server’s  authorization server<br>authorization endpoint<br>Client Protected Client Protected<br>Resource Resource<br>S. Ranise - Security & Trust (FBK)<br><!-- End of picture text -->

**59** 

30 

12/2/21 











<!-- Start of picture text -->
Authorization<br>Server<br>Protected<br>Resource<br><!-- End of picture text -->









<!-- Start of picture text -->
?<br><!-- End of picture text -->





<!-- Start of picture text -->
Resource OwnerOwner Authorization server<br>redirects resource owner<br>back to the client with an<br>authorization code<br><!-- End of picture text -->



<!-- Start of picture text -->
Resource owner<br>authorizes  the client<br><!-- End of picture text -->



<!-- Start of picture text -->
Resource OwnerOwner<br><!-- End of picture text -->



<!-- Start of picture text -->
Resource<br>Owner<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization<br>Server<br><!-- End of picture text -->









<!-- Start of picture text -->
Client<br><!-- End of picture text -->



<!-- Start of picture text -->
Client<br><!-- End of picture text -->



<!-- Start of picture text -->
Protected<br>Resource<br><!-- End of picture text -->



<!-- Start of picture text -->
This is not yet the access token that<br>allows the client to access the protected<br>resource… can you guess why ?<br>S. Ranise - Security & Trust (FBK) 60<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization server<br>issues an OAuth access<br>token to the client<br><!-- End of picture text -->



<!-- Start of picture text -->
Client sends the<br>authorization code<br>to the authorization<br>server’s token endpoint<br>Resource<br>Owner<br>Client authenticates<br>using its own credentials<br>Client<br><!-- End of picture text -->















<!-- Start of picture text -->
Resource<br>Owner<br><!-- End of picture text -->



<!-- Start of picture text -->
Client accesses the<br>protected resource using<br>the access token<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization<br>Server<br><!-- End of picture text -->



<!-- Start of picture text -->
Resource<br>Owner<br><!-- End of picture text -->



<!-- Start of picture text -->
Resource<br>Owner<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization<br>Server<br><!-- End of picture text -->



<!-- Start of picture text -->
Authorization<br>Server<br><!-- End of picture text -->











<!-- Start of picture text -->
Client<br><!-- End of picture text -->



<!-- Start of picture text -->
Protected<br>Resource<br><!-- End of picture text -->



<!-- Start of picture text -->
Client<br><!-- End of picture text -->



<!-- Start of picture text -->
Client<br><!-- End of picture text -->



<!-- Start of picture text -->
Protected<br>Resource<br><!-- End of picture text -->



<!-- Start of picture text -->
Protected<br>Resource<br><!-- End of picture text -->



<!-- Start of picture text -->
S. Ranise - Security & Trust (FBK) 61<br><!-- End of picture text -->

31 







<!-- Start of picture text -->
—<br>—<br>f-@= =<br><!-- End of picture text -->











<!-- Start of picture text -->
f—\<br>xy)<br>>_><br>—,<br><!-- End of picture text -->



<!-- Start of picture text -->
>_><br>a =®—,<br><!-- End of picture text -->







<!-- Start of picture text -->
AN EXAMPLE<br><!-- End of picture text -->





<!-- Start of picture text -->
OAuth 2.0 Playground x e co be]<br>y Step 1 Select& authorize APIs Request / Response<br>Select the scope for the APIs you would like to access or input your own<br>OAuth scopes below. Then click the “Authorize APIs" button. No request.<br>ge biegger nares<br>> ED Books API v1<br>y fl Calendar API v3<br>https:/www.googleapis.com/auth/calendar<br>https:/www.googleapis.com/auth/calendar.events<br>https:/www.googleapis.com/auth/calendar.events.readonly<br>~ https:/www.googleapis.com/auth/calendar.readonly<br>https:/www.googleapis.com/auth/calendar.settings.readonly<br>» S| Chrome Verified Access API v1<br>» P| Cloud Asset API v1<br>> £3] cloud Bigtable Admin API v2<br>» £9] cloud Billing API v1<br>> 23] cloud Build API v1<br>» Step 2 Exchange authorization code for tokens<br>» Step 3 Configure request to API Wrap Lines<br><!-- End of picture text -->



<!-- Start of picture text -->
OAuth 2.0 Playground x e co be<br>> Step 1 Select & authorize APIs Request/ Response<br>Select the scope for the APIs you would like to access or input your own<br>OAuth scopes below. Then click the “Authorize APIs" button. No request.<br>(ep beygyer neve<br>> GD Books API v1<br>y fl Calendar API v3<br>https:/www.googleapis.com/auth/calendar<br>https:/www.googleapis.com/auth/calendar.events<br>https:/www.googleapis.com/auth/calendar.events.readonly<br>~ https:/www.googleapis.com/auth/calendar.readonly<br>https:/www.googleapis.com/auth/calendar.settings.readonly<br>» S| Chrome Verified Access API v1<br>» P| Cloud Asset API v1<br>> £3] cloud Bigtable Admin API v2<br>» 29) cloud Billing API v1<br>> 23] cloud Build API v1<br>Input your own scopes<br>» Step 2 Exchange authorization code for tokens<br>» Step 3 Configure request to API Wrap Lines<br><!-- End of picture text -->



<!-- Start of picture text -->
So<br>G Sign in with Google G Sign in with Google<br>Google OAuth 2.0 Playground<br>Choose an account wants to access your Google<br>to continue. to Google OAuth 2.0 Playground ©Accountrenseorvceu<br>€ Silvio Ranise This will allow Google OAuth 2.0 Playground to:<br>ranise@fbk.eu View your calendars (6)<br>rs] Silvio Ranise Signed out<br>silvio.ranise@gmail.com Make sure you trust Google OAuth 2.0<br>Playground<br>(a) Use another account You may be sharing sensitive info with this site or app.<br>Learn about how Google OAuth 2.0 Playground will handle<br>your data by reviewing its terms of service and privacy<br>policies. You can always see or remove access in your<br>Google Account.<br>Learn about the risks<br><!-- End of picture text -->



<!-- Start of picture text -->
OAuth 2.0 Playground x e co fe]<br>» Step 1 Select & authorize APIs Request / Response<br>POST /oauth2/v4/token HTTP/1.1<br>y Step 2 Exchange authorization code for tokens Host: www.googleapis.com<br>Content-length: 277<br>content-type: application/x-www-form-urlencoded<br>Once you got the Authorization Code from Step 1 click the Exchange user-agent: google-oauth-playground<br>authorization code for tokens button, you will get a refresh and an access<br>token ich j ‘ code=4%2FtAF j6y124H92L8g1iPjPACQHRBwwC75gI_V-<br>which is required to access OAuth protected resources. TK9a2yVt sddPZMV62-7T4wUpquxmO80CkRoIrg9SZK_7-0P62-waredirect_uri=httpst3At2P<br>%2Fdevelopers .google.comt2Foauthplayground&<br>client_id=407408718192.apps.googleusercontent.com&client_secret=******#******iscope=&<br>Authorization code: 4/tAFj6y124H92L8gliPjPAOQHRBwwC75gl_V-TK9a2yV grant_type=authorization_code<br>Exchange authorization code for tokens<br>ETTP/1.1 200 OK<br>Refresh token: 1//04mMhvNRIkOUOCgYIARAAGAQSNwF-L91Ir2H-uCL86D4 Content-length:X-xss-protection:3970<br>X-content-type-options: nosniff<br>Access token:. ya29.|l-wB4v4wPsaF_e J9BL2gyMy Refresh access token Transfer-encoding:Vary: Origin, X-Origin,chunkedReferer<br>Server: scaffolding on HTTPServer2<br>Auto-refresh the token before it expires. =content-encoding: gzip<br>Cache-control: private<br>The access token will expire in 3514 seconds. Date: Fri, 08 Nov 2019 15:16:42 GMT<br>X-frame-options: SAMEORIGIN<br>Alt-sve: quic=":443"; ma=2592000; v="46,43",h3-Q050=":443"; ma=2592000,h3-Q049=":443";<br>Note: The OAuth Playground will automatically revoke refresh tokens after 24h. You ma=2592000,h3-Q048=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443";<br>can avoid this by specifying your own application OAuth credentials using the ma=2592000 . | .<br>Configuration panel. Content-type: application/json; charset=utf-8<br>{<br>"access token": "ya29.Il-<br>wB4v4wPsaF_e J9BL2gyMykY3ddqpgpggaMGGyJz_T0jWobN1loNge5YjpMsT36kXx7dXuy5EjBZTdex1C05T1Us<br>Xss2SdLQvm7uIPXb6N53x50jiS1VUH6tWOPSZPtw",<br>"scope": "https://www.googleapis.com/auth/calendar.readonly",<br>"“token_type": "Bearer",<br>“expires_in": 3600,<br>"“refresh_token": "1//04mMhvNR1kOu0CgYIARAAGAQSNwF-L9Ir2H-<br>uCL86D4r76m9n9RN44A0cMCS30PPa jq4q1BuxEiR2-03Wg7ckLWOdxJCLD91YXDU"<br>}<br>» Step 3 Configure request to API Y Wrap Lines<br>OAuth 2.0 Playground x e co be]<br>» Step 1 Select & authorize APIs Request / Response<br>» Step 2 Exchange authorization code for tokens Fee eee veaciaconre/ranisettbk-ou/events ErrP/1-1<br>Content-length: 0<br>Authorization: Bearer ya29.I1-<br>» Step 3 Configure request to API wB4v4wPsaF_e_J9BL2gyMykY3ddqpgpggaMGGyJz_T0 jWobNloNge5YjpMsT36kXx7dXuy5EjBZTdex1C05T1Us<br>Xss2SdLQvm7uIPXb6N53x50jiS1VUH6tWOP5ZPtw<br>Construct your HTTP request by specifying the URI, HTTP Method,<br>headers, Coan type and request Ee ETTP/1.1 200 OK<br>Then click the "Send the request" button to initiate the HTTP Request. Content-length: 542136<br>X-xss-protection: 1; mode=block<br>Content-location: https: //www.googleapis.com/calendar/v3/calendars/ranise@fbk.eu/events<br>X-content-type-options: nosniff<br>HTTP Method: GET » Add headers 0 Transfer-encoding: chunked<br>Expires: Fri, 08 Nov 2019 15:21:16 GMT<br>Vary: Origin, X-Origin<br>Requestiq URI: :ps:/;ps:/www.googleapis.com/calendar/v3/calendars/ranise@fbk.euleapis. i 7 Server:~content-encoding:GSE gzip<br>Content-Type: » Date:Cache-control:X-frame-options:Fri, 08 Novprivate,SAMEORIGIN2019 15:21:16max-age=0,GMTmust-revalidate, no-transform<br>Alt-sve: quic=":443"; ma=2592000; v="46,43",h3-Q050=":443"; ma=2592000,h3-0049=":443";<br>List possible operations ma=2592000,h3-Q048=":443";ma=2592000Content-type: application/json;ma=2592000,h3-Q046=":443";charset=UTF-8 ma=2592000,h3-Q043=":443";<br>Note:the request.The OAuth access token in Step 2 will be added to the Authorization headerof { "nextPageToken":<br>"CkkKO18 2MHJqOGNoZ zZncGp1Y j 1qNzBvNGNiOWs2c3Fr¥215cDc0bzN1YmE2NjhvMzBjaTI2aDFqZ2MyNjcOGA<br>EggIDA80eYtpgVGgOIABIAGMD-7srw2uUC",<br>"kind": "“calendar#events",<br>“defaultReminders": [<br>{<br>"minutes": 10,<br>"method": "popup"<br>}<br>lr<br>"items": [<br>{<br>"status": "confirmed",<br>"kind": "“calendar#event",<br>"end": {<br>"date": "2012-12-04"<br>te<br>~ Wrap Lines<br><!-- End of picture text -->



<!-- Start of picture text -->
a<br><!-- End of picture text -->



<!-- Start of picture text -->
a a<br>%<br>G Sign in with Google<br>Choose an account<br>to continue to Google OAuth 2.0 Playground<br>€& ranise@fbk.euSilvio Ranise<br>rs } sS ilvio  R.r an ise@gmail.comise Signed out<br>@ Use another account<br>G Sign in with Google<br>we \ Google OAuth 2.0 Playground<br>wants to access your Google<br>Account<br>@ raniseertdk.eu<br>This will allow Google OAuth 2.0 Playground to:<br>Fl sView your calendars @<br>Make sure you trust Google OAuth 2.0<br>Playground<br>You may be sharing sensitive info with this site or app.<br>Learn about how Google OAuth 2.0 Playground will handle<br>your data by reviewing its terms of service and privacy<br>policies. You can always see or remove access in your<br>Google Account<br>Learn about the risks<br><!-- End of picture text -->





<!-- Start of picture text -->
a a<br><!-- End of picture text -->



<!-- Start of picture text -->
OAuth 2.0 Playground x ° co o<br>» Step1 Select& authorize APIs Request / Response<br>Construct your HTTP request by spectying the UR, HTTP. Method<br>= = Bespsputednsvoutes-sets'sRitzavenContent-type:godessapplication/json;sat3"y.nas2592000;macasbavoornScgolee"r40a")charset=UTF-8v-"46, 42" h3-0080<"1 nanzhsaaadynavgods=e035)449" mar2592000,h3-00490" 1443"<br><!-- End of picture text -->





1 





1 

» Step 2 Exchange authorization code for tokens 

Once you got the Authorization Code from Step 1 click the Exchange authorization code for tokens button, you will get a refresh and an access token which is required to access OAuth protected resources 

Authorization code: 4/tAFj6y124H92L8gliPjJPAOQHRBwwC75gl_V-TK9a2yV Refresh token: 1//04mMhvNRIkOuOCgYIARAAGAQSNwF-L9Ir2H-uCL86D4 Access token: ya29.|l-wB4v4wPsaF_e J9BL2gyMy Refresh access token Auto-refresh the token before it expires. The access token will expire in 3514 seconds. 







12/2/21 



<!-- Start of picture text -->
74<br><!-- End of picture text -->







It turns out to be a bad idea… 

S. Ranise - Security & Trust (FBK) 



- § Excerpt from the OAuth 2.0 standard https://oauth.net/articles/authentication/ 

   - § Authenticating resource owners to clients is **out of scope** for this specification 

- § Key observation 

   - § The assumption that **possession of a valid access token is enough to prove that a user is authenticated** is **true only in some cases** (when the access token was freshly minted) 

   - § There are other ways to obtain a valid access tokens than authenticating resource owner; e.g., using the **refresh token** 

- § Authentication is about the user and their **presence** with the application 

S. Ranise - Security & Trust (FBK) 

**75** 

38 









<!-- Start of picture text -->
A@& ss Assignment/de-assignment<br>pes<br>Frequently<br>changing mostly static<br>Missing link<br>Attributes<br>. 4<br>Establishment of amostly staticra «————~mostly static Permissions,<br>the missing link<br><!-- End of picture text -->







<!-- Start of picture text -->
TAKEAWAYS: XACML<br>°°<br>re Parner Poi<br>>@ , rn Point<br>@<br><!-- End of picture text -->



TAKEAWAYS: OAUTH 2.0 



<!-- Start of picture text -->
@<br><!-- End of picture text -->

12/2/21 



- § What is the problem solved by OAuth? Which entities are involved in Oauth? 

- § What is an OAuth token? Is it opaque for which entity involved in OAuth? 

- § What is ABAC? What is an ABAC policy? What are the advantages of ABAC over RBAC? 

- § What is XACML? What is a XACML target, effect, condition, rule policy, and policy set? What are the XACML policy combining algorithms? 

- § Describe the XACML architecture 

- § What is the problem that the Oauth 2.0 standard solve? 

- § Describe the Authorization Code flow 

- § Explain why an access token is not immediately created for the client and instead an authorization code is created 

- § Describe the structure of JWT 

- § Why is a bad idea to use OAuth 2.0 for authentication? What should you use instead? 

S. Ranise - Security & Trust (FBK) 



<!-- Start of picture text -->
80<br><!-- End of picture text -->

41 

