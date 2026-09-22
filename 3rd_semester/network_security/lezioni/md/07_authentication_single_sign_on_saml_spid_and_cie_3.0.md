<!-- Page 1 -->

## 11/9/21

1

Introduction to Computer and Network Security

Silvio Ranise [ silvio.ranise@unitn.it or ranise@fbk.eu ]

§ Single Sign On

§ Security Assertion Markup Language (SAML)

§ Use case

§ Overview

§ Some details

§ Security considerations

§ Identity Infrastructures

§ National: SPID & CIE

§ European: eIDAS

## 1 S. Ranise - Security & Trust (FBK)

---

<!-- Page 2 -->

## 11/9/21

2

Outsourcing authentication to trusted 3 rd party identity providers

S. Ranise - Security & Trust (FBK)

2

§ Multiple systems typically require multiple sign-on dialogues

§ Password fatigue

§ Multiple sets of credentials

§ Presenting credentials multiple times

§ Headache for administration and users

§ The more security domains, the more sign-ons required

S. Ranise - Security & Trust (FBK) 3

Security domain : an

application or collection

of applications trusting a

common security token

for authentication,

authorization or session

management

A security token is

issued to users after they

have actively

authenticated with their

identifiers and

credentials (e.g.,

passwords or other

authentication factors) to

the security domain

---

<!-- Page 3 -->

## 11/9/21

3

S. Ranise - Security & Trust (FBK) 4

SSO App

Identity

provider

Service

provider

User User

Agent

1. access

application

2. refer for authentication

3.a ask for credentials

4. transfer to application

with evidence that

user has successfully

performed authentication

3.b provide credentials

In general, more than one

service providers can trust

the same identity providers

5. authentication

token

§ Credentials never leave the authentication domain

§ I.e. identity provider + user agent

§ Service providers (affiliated domains) have to trust the authentication domain

§ Credentials must be asserted correctly

§ Protect from unauthorised use

§ Authentication transfer has to be protected

§ Replay prevention on authentication tokens

§ Need to provide nonce as a freshness parameter to limit the reuse and lifetime of the

authentication tokens/assertions

§ Interception/masquerade attacks

§ Need to add cryptographic signatures to authentication assertions

S. Ranise - Security & Trust (FBK) 5

authentication domain

T

R

U

S

T

User has

been

authenticated

by means of a

password

Authentication token

User is entitled to

access the

provided services

Authentication

assertion

---

<!-- Page 4 -->

## 11/9/21

4

Security service for authentication that can be configured to fit the goals of

several different use case scenarios

S. Ranise - Security & Trust (FBK)

6

§ SAML = Security Assertion Markup Language

§ SAML 1.0 defined in 2002 , SAML 2.0 defined in 2005

§ A common language and flow between systems that want to provide an SSO

experience to users

§ Answer to the lack of standards and interoperable solutions for exchanging

authentication and authorization information across security domains

§ Heavily based on mechanisms implemented in browsers (e.g., redirections)

S. Ranise - Security & Trust (FBK) 7

---

<!-- Page 5 -->

## 11/9/21

5

§ SAML = Security Assertion Markup Language

§ Data format for exchanging

§ Authentication data

§ Authorization data

§ XML-based

§ XML = Extensible Markup Language

§ https://www.w3.org/TR/xml11/

§ An open standard from OASIS

§ OASIS = Organization for the Advancement of Structured Information Standards

S. Ranise - Security & Trust (FBK) 8

• XML is a software- and hardware-

independent framework for storing

and transporting data

• XML is a markup language much

like HTML

• XML was designed to carry

data with focus on what data is

• HTML was designed to display

data - with focus on how data

looks

• XML tags are not predefined

like HTML tags are

• XML was designed to store and

transport data

• XML was designed to be self-

descriptive (whatever this means)

§ SAML distinguish two main entities

§ Identity Provider (IdP)

§ Service Provider (SP)

§ Federation is a group of entities

§ Sharing a common policy

§ Managed as a single entity

§ The authentication is always between a User and an IdP

§ The federation establish only the initial trust among the resources

S. Ranise - Security & Trust (FBK) 9

Identity Provider (IdP)

• Authenticates the user

• Provides authorisation information

Service Provider (SP)

• A server that hosts protected resources

• It relies on information provided by the IdP

• Local access policies to regulate access to

protected resources

Trust relation

Trust establishment is

performed by

exchanging so called

metadata

---

<!-- Page 6 -->

## 11/9/21

6

§ IdP and SPs share metadata in whatever form and by whatever means possible

§ At least the following metadata must be shared:

§ Entity ID (globally-unique identifier included in every message issued by the entity)

§ Cryptographic keys

§ For authentication purposes, a SAML message may be digitally signed by the issuer and content of

message can be protected by a public encryption key belonging to the ultimate receiver. Indeed,

trusted public keys must be shared in advance.

S. Ranise - Security & Trust (FBK) 10

More details can be found at https://en.wikipedia.org/wiki/SAML_metadata

§ Consider Alice visits an airline

website for making her trip

§ For booking her flight, she

provides her credentials to

airline website

§ After booking, she found a link

to car rental (from airline

website)

§ She visits car rental website

S. Ranise - Security & Trust (FBK) 11

Alice

Airline site

Car rental site

Browser

Identity

Provider

Service

Provider

User

Agent

User

1. Authentication

2. ”Alice is a

VIP member”

3. Access resources

Note: to be precise, the Airline

site plays two roles: SP and IdP

---

<!-- Page 7 -->

## 11/9/21

7

§ Alice rents a car without

signing in again…

§ … because the car rental site

trusts the airline site when

transmitting authentication

authentication assertions such

as 2

S. Ranise - Security & Trust (FBK) 12

Alice

Airline site

Car rental site

Browser

Identity

Provider

Service

Provider

User

Agent

User

1. Authentication

2. ”Alice is a

VIP member”

3. Access resources

1. A user want to access an SP

2. The user is redirected to a Discovery Service

§ It can be an external service or embedded in the SP

§ Allow the user to choose the IdP

3. The user goes back to the SP with the ID of his/her own IdP

4. The user is redirected to the IdP

5. Authentication is performed

6. The user goes back to the SP with the authentication

All the steps above are associated with a SAML assertion (in XML format)

S. Ranise - Security & Trust (FBK) 13

User SP

Discovery

Service

1

2

3

IdP

## 4 5

6

---

<!-- Page 8 -->

## 11/9/21

8

§ SAML Authentication was mainly designed for Web Services

§ It is possible to support other type of resources

§ Either web based or native applications

§ Resources can support multiple SAML profiles

§ The profile identifies the exchange protocol and the message format

§ Most widely used profile for web applications is redirect

§ The browser shows a page with a Javascript performing the redirect

S. Ranise - Security & Trust (FBK) 14

More information available at

http://docs.oasis-open.org/security/saml/Post2.0/sstc-saml-tech-overview-

2.0.html

S. Ranise - Security & Trust (FBK)

## 15

---

<!-- Page 9 -->

## 11/9/21

9

S. Ranise - Security & Trust (FBK) 16

S. Ranise - Security & Trust (FBK) 17

---

<!-- Page 10 -->

## 11/9/21

## 10

§ Assertion = set of statements (claims)

made by a SAML authority (asserting

party)

§ It can be seen as the unit of information

exchanged in SAML

§ Authentication assertion

§ Issued by a party that authenticates users

§ It describes

§ Who issued the assertion

§ Authenticated Subject

§ Validity period

§ Other authentication-related information

S. Ranise - Security & Trust (FBK) 18

§ Attribute assertion

§ It defines specific details about the Subject

§ Example : ‘Alice’ has ‘VIP member’ status

§ Authorization assertion

§ It defines something the Subject is entitled

to do

§ Example : ‘Alice’ is permitted to rent a car

when on a business trip

S. Ranise - Security & Trust (FBK) 19

---

<!-- Page 11 -->

## 11/9/21

## 11

S. Ranise - Security & Trust (FBK) 20

SAML authority

making the claim

entity about

which the claim is

being made

S. Ranise - Security & Trust (FBK) 21

SAML assertion

validity period

AuthN element describing

the act of authentication at

the identity provider

---

<!-- Page 12 -->

## 11/9/21

## 12

S. Ranise - Security & Trust (FBK) 22

Notice that

• Authentication itself is not

part of SAML

• Statement refers to an

authentication act that took

place at a prior time

S. Ranise - Security & Trust (FBK) 23

---

<!-- Page 13 -->

## 11/9/21

## 13

S. Ranise - Security & Trust (FBK) 24

Asserts that the enclosing

assertion’s subject is

associated with attribute attrib

with value val

The value of the attribute

“LastName” associated to the

assertion’s subject is “Doe”

S. Ranise - Security & Trust (FBK) 25

---

<!-- Page 14 -->

## 11/9/21

## 14

§ Flow of assertion query and request

§ For obtaining SAML assertions

§ Authentication request

§ Artifact resolution

§ A mechanism by which protocol messages may be passed by references

§ Single logout

§ ... and much more…

S. Ranise - Security & Trust (FBK) 26

• Communication protocol = system that allows

two or more entities to exchange information by

defining the rules, syntax, semantics and

synchronization of communication

• Cryptographic protocol = usually a small

communication (i.e. its specification is typically

quite compact, e.g., few exchange of messages in

given formats) designed to secure

communication (various security goals) by using

cryptographic primitives (e.g., ciphers, hash

functions, …)

• Typical security goal of SAML protocols is

authentication of users, namely

The SP authenticates the user through an IdP assertion

Important remark

The behavior of a protocol is typically

independent of how it is to be implemented

S. Ranise - Security & Trust (FBK) 27

---

<!-- Page 15 -->

## 11/9/21

## 15

§ SAML requestors and responders communicate by exchanging messages

§ The mechanism to transport these messages is called a SAML binding

§ Types: SAML URI. SAML SOAP, …, HTTP redirect , HTTP POST, HTTP artifact

§ HTTP redirect enables SAML protocol messages to be transmitted within URL parameters

§ It enables SAML requestors and responders to communicate by using an HTTP user agent as

an intermediary

§ The intermediary might be necessary if the communicating entities do not have a direct path

of communication

§ The intermediary might also be necessary if the responder requires interaction with a user

agent, such as an authentication agent.

§ HTTP redirect is sometimes called browser redirect in single sign-on operations

§ This profile is selected by default

## 28

• The Hypertext Transfer Protocol ( HTTP ) is used to load web pages

using links

• HTTP is an application layer protocol designed to transfer information

between networked devices and runs on top of other layers of the

network protocol stack

• A typical flow over HTTP involves a client machine making a request

to a server, which then sends a response message

https://www.fbk.eu/en/about-fbk/ Unique Resource Locator (URL):

Protocol hostname File

S. Ranise - Security & Trust (FBK) 29

HTTP over TLS/SSL

---

<!-- Page 16 -->

## 11/9/21

## 16

S. Ranise - Security & Trust (FBK) 30

§ SAML 2.0 profiles combine protocols, assertions, and bindings to

create a federation and enable federated single sign-on

§ Types of profiles: Web browser SSO , Single Logout , Artifact

resolution, …

§ Web browser single sign-on profile provides options regarding the

initiation of the message flow and the transport of the messages:

§ Flow initiation: The message flow can be initiated from the identity provider or

the service provider

§ Bindings: HTTP redirect, HTTP POST, HTTP artifact

§ Single Logout profile is used to terminate all the login sessions

currently active for a specified user within the federation

§ A user who achieves single sign-on to a federation establishes sessions with

more than one participant in the federation

§ The sessions are managed by a session authority, which in many cases is an

identity provider

§ When the user wants to end sessions with all session participants, the session

authority can use the single logout profile to globally terminate all active

sessions

S. Ranise - Security & Trust (FBK) 31

• SSO enables access to applications and resources within a single security

domain

• Federated SSO enables SSO to applications across multiple security domains

Security domain : an

application or collection

of applications trusting a

common security token

for authentication,

authorization or session

management

A security token is

issued to users after they

have actively

authenticated with their

identifiers and

credentials (e.g.,

passwords or other

authentication factors) to

the security domain

Recall from slide 3:

---

<!-- Page 17 -->

## 11/9/21

## 17

S. Ranise - Security & Trust (FBK) 32

This high-level description indicated that the user had first authenticated at the IdP before accessing a

protected resource at the SP. This scenario is commonly referred to as an IdP-initiated web SSO

scenario. While IdP-initiated SSO is useful in certain cases, a more common scenario starts with a user

visiting an SP site through a browser bookmark, possibly first accessing resources that require no special

authentication or authorization. In a SAML-enabled deployment, when they subsequently attempt to

access a protected resource at the SP, the SP will send the user to the IdP with an authentication request

in order to have the user log in. Thus this scenario is referred to as SP-initiated web SSO. Once logged in,

the IdP can produce an assertion that can be used by the SP to validate the user's access rights to the

protected resource. SAML V2.0 supports both the IdP-initiated and SP-initiated flows.

SAML supports numerous variations on these two primary flows that deal with requirements for using

various types and strengths of user authentication methods, alternative formats for expressing federated

identities, use of different bindings for transporting the protocol messages, inclusion of identity attributes,

etc. Many of these options are looked at in more detail in later sections of this document.

## 3.3 Identity Federation Use Case

As mentioned earlier, a user's identity is said to be federated between a set of providers when there is an

agreement between the providers on a set of identifiers and/or identity attributes by which the sites will

refer to the user.

There are many questions that must be considered when business partners decide to use federated

identities to share security and identity information about users. For example:

• Do the users have existing local identities at the sites that must be linked together through the

federated identifiers?

• Will the establishment and termination of federated identifiers for the users be done dynamically or

will the sites use pre-established federated identifiers?

• Do users need to explicitly consent to establishment of the federated identity?

• Do identity attributes about the users need to be exchanged?

• Should the identity federation rely on transient identifiers that are destroyed at the end of the user

session?

• Is the privacy of information to be exchanged of high concern such that the information should be

sstc-saml-tech-overview-2.0-cd-02 Mar 25,2008

Copyright© OASIS® 2008. All Rights Reserved.

Figure 2: General Single Sign-On Use Case

Business agreement

Source web site:

airline.example.com

Authenticate

1

Access

protected

resource

2

Identity

information

Destination web site:

cars.example.co.uk

SSO-usecase

## 365

## 366

## 367

## 368

## 369

## 370

## 371

## 372

## 373

## 374

## 375

## 376

## 377

## 378

## 379

## 380

## 381

## 382

## 383

## 384

## 385

## 386

## 387

## 388

## 389

## 390

## 391

## 392

1. a user has a login session (that is, a security

context) on a web site ( airline.example.com )

and is accessing resources on that site.

2. At some point, either explicitly or

transparently, he is directed over to a

partner's web site ( cars.example.co.uk )

§ We assume that a federated identity for the user has

been previously established between

airline.example.com and cars.example.co.uk based on a

business agreement between them.

3. The identity provider site

( airline.example.com ) asserts to the service

provider site ( cars.example.co.uk ) that the

user is known (by referring to the user by

their federated identity), has authenticated to

it, and has certain identity attributes (e.g. has

a “Gold membership”).

4. Since cars.example.co.uk trusts

airline.example.com , it trusts that the user is

valid and properly authenticated and thus

creates a local session for the user

IdP-Initiated SSO

S. Ranise - Security & Trust (FBK) 33

1. User is challenged to supply

credentials to the IdP site

2. User provides valid credentials

and a local logon security

context is created

3. User selects a menu option or

link on the IdP to request access

to SP web site; this causes the

IdP's SSO Service to be called

4. SSO Service builds a SAML

assertion representing the user's

logon security context

5. Browser issues an HTTP POST

request to send a form to the SP's

Assertion Consumer Service

6. Final access check to allow/deny

user access to resource

## 5.1.4 IdP-Initiated SSO: POST Binding

In addition to supporting the new SP-Initiated web SSO use cases, SAML v2 continues to support the IdP-

initiated web SSO use cases originally supported by SAML v1. In an IdP-initiated use case, the identity

provider is configured with specialized links that refer to the desired service providers. These links actually

refer to the local IdP's Single Sign-On Service and pass parameters to the service identifying the remote

SP. So instead of visiting the SP directly, the user accesses the IdP site and clicks on one of the links to

gain access to the remote SP. This triggers the creation of a SAML assertion that, in this example, will be

transported to the service provider using the HTTP POST binding.

Figure 14 shows the process flow for an IdP-initiated web SSO exchange.

The processing is as follows:

1. If the user does not have a valid local security context at the IdP, at some point the user will be

challenged to supply their credentials to the IdP site, idp.example.org.

2. The user provides valid credentials and a local logon security context is created for the user at the IdP.

3. The user selects a menu option or link on the IdP to request access to an SP web site,

sp.example.com. This causes the IdP's Single Sign-On Service to be called.

4. The Single Sign-On Service builds a SAML assertion representing the user's logon security context.

Since a POST binding is going to be used, the assertion is digitally signed before it is placed within a

SAML <Response> message. The <Response> message is then placed within an HTML FORM as

Figure 14: IdP-Initiated SSO with POST Binding

Browser

Service Provider

sp.example.com

Resource

Identity Provider

idp.example.org

Single

Sign-On

Service

Assertion

Consumer

Service

User or UA action

Supply

resource

## 7 1

Challenge

for

credentials

User

login

2

Signed

<Response>

in HTML form

4

POST signed

<Response>

## 5 3

Access

check

Select

remote

resource

SSO-IdP-POST

## 1117

## 1118

## 1119

## 1120

## 1121

## 1122

## 1123

## 1124

## 1125

## 1127

## 1128

## 1129

## 1130

## 1131

## 1132

## 1133

## 1134

## 1135

IdP-Initiated

## SSO

---

<!-- Page 18 -->

## 11/9/21

## 18

S. Ranise - Security & Trust (FBK) 34

§ More common scenario starts with a

user visiting an SP site, possibly first

accessing resources that require no

special authentication or authorization

§ When they subsequently attempt to

access a protected resource at the SP,

the SP will send the user to the IdP

with an authentication request in order

to have the user log in

§ Once logged in, the IdP can produce

an assertion that can be used by the SP

to validate the user's access rights to

the protected resource

The second choice to be made when using the SAML profiles centers around which SAML bindings will be

used when sending messages back and forth between the IdP and SP. There are many combinations of

message flows and bindings that are possible, many of which are discussed in the following subsections.

For the web SSO profile, we are mainly concerned with two SAML messages; namely an Authentication

Request message sent from an SP to an IdP, and a Response message containing a SAML assertion that

is sent from the IdP to the SP (and then, secondarily, with messages related to artifact resolution if that

binding is chosen).

The SAML Conformance and Profiles specifications identify the SAML bindings that can legally be used

with these two messages. Specifically, an Authentication Request message can be sent from an SP to an

IdP using either the HTTP Redirect Binding, HTTP POST Binding, or HTTP Artifact Binding. The

Response message can be sent from an IdP to an SP using either the HTTP POST Binding or the HTTP

Artifact Binding. For this pair of messages, SAML permits asymmetry in the choice of bindings used. That

is, a request can be sent using one binding and the response can be returned using a different binding.

The decision of which bindings to use is typically driven by configuration settings at the IdP and SP

systems. Factors such as potential message sizes, whether identity information is allowed to transit

through the browser (if not the artifact binding may be required) , etc. must be considered in the choice of

bindings.

The following subsections describe the detailed message flows involved in web SSO exchanges for the

following use case scenarios:

• SP-initiated SSO using a Redirect Binding for the SP-to-IdP <AuthnRequest> message and a POST

Binding for the IdP-to-SP <Response> message

• SP-initiated SSO using a POST Binding for the <AuthnRequest> message and an Artifact Binding for

the <Response> message

• IDP-initiated SSO using a POST Binding for the IdP-to-SP <Response> message; no SP-to-IdP

<AuthnRequest> message is involved.

## 5.1.2 SP-Initiated SSO: Redirect/POST Bindings

This first example describes an SP-initiated SSO exchange. In such an exchange, the user attempts to

sstc-saml-tech-overview-2.0-cd-02 Mar 25,2008

Copyright© OASIS® 2008. All Rights Reserved.

Figure 11: Differences in Initiation of Web Browser SSO

Identity

Provider

Authenticate

1

Access

successfully

2

Authenticate

when asked

2

Attempt

access

1

Succeed

in attempt

3

Service

Provider

Identity

Provider

Service

Provider

IdP-initiated SP-initiated

IdP-vs-SP-init

## 796

## 797

## 798

## 799

## 800

## 801

## 802

## 803

## 804

## 805

## 806

## 807

## 808

## 809

## 810

## 811

## 812

## 813

## 814

## 815

## 816

## 817

## 818

## 819

## 820

## 821

## 822

SP-Initiated SSO

S. Ranise - Security & Trust (FBK) 35

access a resource on the SP, sp.example.com. However they do not have a current logon session on this

site and their federated identity is managed by their IdP, idp.example.org. They are sent to the IdP to log

on and the IdP provides a SAML web SSO assertion for the user's federated identity back to the SP.

For this specific use case, the HTTP Redirect Binding is used to deliver the SAML <AuthnRequest>

message to the IdP and the HTTP POST Binding is used to return the SAML <Response> message

containing the assertion to the SP. Figure 12 illustrates the message flow.

The processing is as follows:

1. The user attempts to access a resource on sp.example.com. The user does not have a valid logon

session (i.e. security context) on this site. The SP saves the requested resource URL in local state

information that can be saved across the web SSO exchange.

2. The SP sends an HTTP redirect response to the browser (HTTP status 302 or 303). The Location

HTTP header contains the destination URI of the Sign-On Service at the identity provider together with

an <AuthnRequest> message encoded as a URL query variable named SAMLRequest .

<samlp:AuthnRequest

xmlns:samlp="urn:oasis:names:tc:SAML:2.0:protocol"

xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion"

Figure 12: SP-Initiated SSO with Redirect and POST Bindings

Browser

Service Provider

sp.example.com

Resource

Identity Provider

idp.example.org

Single

Sign-On

Service

Assertion

Consumer

Service

Access

check

User or UA action

User or UA action

Access

resource

Supply

resource

GET using

<AuthnRequest>

7

1

3

Challenge

for

credentials

User

login

4

Signed

<Response>

in HTML form

5

Redirect with

<AuthnRequest>

2

POST signed

<Response>

6

SSO-SP-redir-POST

## 823

## 824

## 825

## 826

## 827

## 828

## 830

## 831

## 832

## 833

## 834

## 835

## 836

## 837

## 838

## 839

1. User attempts to access a

resource on SP

2. SP sends a redirect response

3. SSO Service determines whether

user has an existing logon

security context at the identity

provider; if not, IdP interacts with

user to provide valid credentials

4. User provides valid credentials

and a local logon security

context is created

5. IdP Single Sign-On Service

builds a SAML assertion

representing the user's logon

security context

6. The browser issues an HTTP

POST request to send the form to

the SP's Assertion Consumer

Service

7. Final access check to allow/deny

user access to resource

SP-Initiated

## SSO

---

<!-- Page 19 -->

## 11/9/21

## 19

S. Ranise - Security & Trust (FBK) 36

§ It indicates how a user authenticated at an Identity Provider

§ The Identity Provider includes the authentication context in an assertion at the

request of a Service Provider or based on configuration at the Identity Provider

§ A Service Provider can require information about the authentication process to

establish a level of confidence in the assertion before granting access to resources

§ Motivation

§ Existing SAML federation deployments have adopted a “ Levels Of Assurance ” (or LOA )

model for categorizing the wide variety of authentication methods into a small number of

levels, typically based on some notion of the strength of the authentication

§ Service Providers then decide which level of assurance is required to access specific

protected resources, based on some assessment of “value” or “risk”

S. Ranise - Security & Trust (FBK) 37

---

<!-- Page 20 -->

## 11/9/21

## 20

S. Ranise - Security & Trust (FBK) 38

§ A SAML metadata document describes a SAML deployment such as a SAML identity provider or a

SAML service provider

§ Deployments share metadata to establish a baseline of trust and interoperability

§ Minimum set of metadata to be shared:

§ Entity ID

§ Cryptographic Keys

§ Protocol Endpoints (bindings and URLs)

§ Every SAML system entity has an entity ID, a globally unique identifier used in software

configurations, relying-party databases, and client-side cookies

§ On the wire, every SAML protocol message contains the entity ID of the issuer.

§ For authentication purposes, a SAML message may be digitally signed by the issuer

§ To verify the signature on the message, the message receiver uses a public key known to belong

to the issuer

§ Similarly, to encrypt a message, a public encryption key belonging to the ultimate receiver must

be known to the issuer

§ In both situations—signing and encryption—trusted public keys must be shared in advance

S. Ranise - Security & Trust (FBK) 39

---

<!-- Page 21 -->

## 11/9/21

## 21

§ Once the message is signed and encrypted, the issuer sends the message to a

trusted protocol endpoint, the location of which must be known in advance

§ Upon receipt, the message receiver decrypts the message (using its own private

decryption key) and verifies the signature (using a trusted public key in metadata)

before mapping the entity ID in the message to a trusted partner

§ This scenario requires each party to know the other in advance

§ To establish a baseline of trust, parties share metadata with each other

§ Initially, this may be as simple as sharing information via email

§ Over time, as the number of SAML partners grows, the natural tendency is to

automate the metadata sharing process

§ An implementation that supports SAML Web Browser SSO requires a schema-valid

SAML metadata file for each SAML partner

S. Ranise - Security & Trust (FBK) 40

S. Ranise - Security & Trust (FBK)

## 41

---

<!-- Page 22 -->

## 11/9/21

## 22

§ Just providing assertions from an asserting party to a relying party may not be

adequate to ensure a secure system

§ How does the relying party trust what is being asserted to it?

§ What prevents a “ man-in-the-middle ” attack that might grab assertions to be illicitly

“ replayed ” at a later date?

§ SAML defines a number of security mechanisms to detect and protect against such

attacks

§ Primary mechanism is for the relying party and asserting party to have a pre-existing

trust relationship which typically relies on a Public Key Infrastructure (PKI)

§ While use of a PKI is not mandated by SAML, it is recommended

S. Ranise - Security & Trust (FBK) 42

§ Use of particular security mechanisms are described for each SAML binding in the

standard

§ General recommendations are the following

§ Where message integrity & confidentiality are required, then SSL/TLS is recommended

§ When a relying party requests an assertion from an asserting party, bi-lateral

authentication is required and the use of SSL/TLS using mutual authentication is

recommended

§ When a response message containing an assertion is delivered to a relying party via a

user's web browser (for example using the HTTP POST binding), then to ensure

message integrity , it is mandated that the response message be digitally signed using

XML Signature

S. Ranise - Security & Trust (FBK) 43

---

<!-- Page 23 -->

## 11/9/21

## 23

§ Message expiration

§ SAML messages should contain a timestamp of when the request was issued, when it expires or both

§ If the SAML message never expires or if the expiration is not verified, there is a greater risk of a message

falling into the hands of an attacker

§ Check the message for timestamps

§ Message replay

§ Assertions should contain a unique ID that is only accepted once by the application

§ SAML from Different Recipient

§ An application should only accept a SAML message intended for the SP application

§ If the application does not perform this check, it may accept a SAML message generated from

authenticating to another application and allow an attacker into the application as the user from the other

application

§ XML External Entity (XXE)

§ A SAML message is just a user-provided XML message that is processed by the Service Provider

§ Check all standard XML attack vectors such as XXE that forces to parse malicious data

S. Ranise - Security & Trust (FBK) 44

Some more attacks…

§ Privacy refers to both

§ a user's ability to control how their identity data is shared & used and

§ to mechanisms that inhibit their actions at multiple service providers from being inappropriately

correlated

§ SAML has a number of mechanisms that support deployment in privacy

§ Persistent pseudonyms established between an identity and a service provider

§ pseudonyms do not themselves enable inappropriate correlation between service providers (as would be

possible if the identity provider asserted the same identifier for a user to every service provider, a so-called

global identifier)

§ one-time/ transient identifiers ensure that every time a certain user accesses a given service provider

through a SSO operation from an identity provider, that service provider will be unable to recognize them

as the same individual as might have previously visited

§ Authentication Context allows a user to be authenticated at a sufficient (but not more than necessary)

assurance level, appropriate to the resource they may be attempting to access at some service provider

§ SAML allows the claimed fact of a user consenting to certain operations to be expressed between

providers. How, when or where such consent is obtained is out of scope for SAML

S. Ranise - Security & Trust (FBK) 45

---

<!-- Page 24 -->

## 11/9/21

## 24

Examples: Italian digital identity solutions

• SPID = Sistema Pubblico Identità Digitale (Public System for Digital Identity)

• CIE 3.0 = Carta d’Identità Elettronica 3.0 (Electronic Identity Card)

S. Ranise - Security & Trust (FBK)

## 46

Public System for Digital Identity

S. Ranise - Security & Trust (FBK)

## 47

---

<!-- Page 25 -->

## 11/9/21

## 25

S. Ranise - Security & Trust (FBK) 48

Based on

SAML 2.0

Public System for

Digital Identity https://www.agid.gov.it/en/platforms/spid

The Agency for Digital Italy (AgID) is the technical

agency of the Presidency of the Council of Ministers.

AgID has the task of coordinating public administrations

in the implementation of the Three-Year Plan for

information technology in Public Administration.

https://www.agid.gov.it/en/

Based on the SAML Web Browser SSO Profile

Assurance Levels

• Level 0: little or no confidence in asserted identity’s validity

• Level 1: some confidence in asserted identity’s validity

• Level 2: high confidence in asserted identity’s validity

• Level 3: very high confidence in asserted identity’s validity

§ Identity providers are private

§ Do you trust them?

§ Phylosophical/polytical question

§ Legal provisions sometime get in the way

§ Ex: Assurance levels

§ SSO seems impossible when considering higher

assurance levels

§ User identification for enrollment is delicate

§ Sometime ago, an italian journalist “hacked” the

procedure and successfully obtained the digital

identity of a colleague…

§ http://www.ilfattoquotidiano.it/2016/11/04/identita-

digitale-ce-un-buco-nella-sicurezza-cosi-ti-divento-

matteo-renzi/3093093/

§ Adoption seems to lag behind although with the

pandemics increased substantially

§ Situation: see graph on the right

S. Ranise - Security & Trust (FBK) 49

https://avanzamentodigitale.italia.it/it/progetto/spid

---

<!-- Page 26 -->

## 11/9/21

## 26

§ Repository of all the information related to the entities adhering to the SPID and

represents the evidence of the so-called circle of trust established therein

§ The relationship of trust on which the federation established in SPID is based is

achieved through the intermediation of the Agency, third party guarantor,

through the process of accreditation of digital identity providers, the attribute

authorities and service providers

§ Adhesion to SPID constitutes the establishment of a relationship of trust with all

existing members accredited by the Agency, based on the sharing of the standard

security levels of assurance declared and guaranteed by SPID

§ Adhesion to the trust agreement among member entities is demonstrated by the

presence of such entities in the SPID Register managed by the Agency

S. Ranise - Security & Trust (FBK) 50

Metadata management in SPID

§ The federation registry contains the list of entities that have passed the

accreditation process and are therefore part of the SPID federation

§ For each entity the registry contains an entry called AuthorityInfo consisting of:

§ SAML identifier of the entity

§ name of the subject to which the federation entity refers

§ type of entity (Identity Provider, Attribute Authority, Service Provider)

§ URL of the metadata provider service

§ List of qualified attributes which can be certified by an Attribute Authority

§ The federation registry is populated by AgID following stipulation of the

agreements and updated by said Agency during the activities related to

management of the agreements and the supervision of the parties of the SPID

circuit

S. Ranise - Security & Trust (FBK) 51

Metadata management in SPID

---

<!-- Page 27 -->

## 11/9/21

## 27

Electronic identity card

S. Ranise - Security & Trust (FBK)

## 52

§ Name

§ Surname

§ Place and date of birth

§ Residency

§ Holder's picture

§ Two fingerprints (one of each hand), only if the applicant is aged 12 or over

§ Can be accessed only by law enforcement agencies

§ Different validity periods

§ 10 years for adults aged 18 and above

§ 5 years for minors aged 3–18

§ 3 years for children aged up to 3

S. Ranise - Security & Trust (FBK) 53

---

<!-- Page 28 -->

## 11/9/21

## 28

§ NFC = Near Field Communication

§ set of communication protocols for communication between two electronic

devices over a distance of at most 4 cm

§ low-speed connection with simple setup

§ NFC devices can act as electronic identity documents and keycards

§ Used in contactless payment systems and allow mobile payment replacing or

supplementing systems such as credit cards

§ Cryptography

§ AES (192, 256 bits) and Triple DES (112 bits)

§ SHA-2 or SHA-1

§ Diffie-Hellman 2048 bits and Elliptic Curve Diffie-Hellman 192 bits

§ RSA 2048 bits (v1.5)

§ X.509 certificate with personal data signed by official CA

§ …

S. Ranise - Security & Trust (FBK) 54

Only some combinations

are supported

Behind the scenes of the button

S. Ranise - Security & Trust (FBK)

## 55

Compliant with the SAML Web Browser SSO Profile

---

<!-- Page 29 -->

## 11/9/21

## 29

S. Ranise - Security & Trust (FBK) 56

§ Preliminary, users need to download the CieID app and register their cards

S. Ranise - Security & Trust (FBK) 57 Preliminary, users need to download the CieID app and register their cards

The SP shows the button

“Entra con CIE”

Users warned that they will

need CIE and smartphone

Users asked to enter

the number shown on the CIE

Users asked to acquire QR code

and follow instructions on CieID app

Users authenticated

---

<!-- Page 30 -->

## 11/9/21

## 30

S. Ranise - Security & Trust (FBK) 58

S. Ranise - Security & Trust (FBK) 59

---

<!-- Page 31 -->

## 11/9/21

## 31

Aka the portability of national digital identities of Member States and more…

S. Ranise - Security & Trust (FBK)

## 60

S. Ranise - Security & Trust (FBK) 61

SPID is interoperable

with eIDAS!

CIE is also

interoperable

with eIDAS!

---

<!-- Page 32 -->

## 11/9/21

## 32

S. Ranise - Security & Trust (FBK) 62

1

2

3

4

§ If an Italian citizen wants to authenticate against a German online service, first the

German eIDAS-Node (eIDAS-Connector) is directed by the web application to

initiate the authentication process

§ It sends a request to the Italian eIDAS-Node (eIDAS-Service)

§ The Italian eIDAS-Node forwards the user to a system that is equipped to

authenticate the Italian citizen using the national eID scheme

§ After authentication, the German eIDAS-Connector receives the citizen’s

information which it forwards to the web application

§ eIDAS relies on SAML for communication between the eIDAS-Connector and

eIDAS-Service (called eIDAS-Nodes)

S. Ranise - Security & Trust (FBK) 63

---

<!-- Page 33 -->

## 11/9/21

## 33

S. Ranise - Security & Trust (FBK) 64

MS=Member State

§ As each Member State must provide its own eIDAS-Node, the European Commission has provided

the eIDAS-Node Integration Package , which can be used as a basis for implementing such a

service

§ Focus on the SAML parsing code

§ SEC Consult found a vulnerability that basically allowed attackers to bypass the signature

verification, allowing athem to send any SAML message to an affected eIDAS-Node

§ The attacker could therefore, e.g., send a manipulated SAML response to an eIDAS-Connector

to authenticate as anybody

§ The vulnerable code was used to verify the trust of the certificate the SAML response was signed

with:

1. The certificate is accepted if it is in the local trust store

2. Otherwise, the issuer certificate of the entity certificate is retrieved from either the local trust store

or from the supplemental certificates in the SAML message

3. If a trust path can be established between the issuer certificate and a certificate in the trust store, the

entity certificate is accepted

S. Ranise - Security & Trust (FBK) 65

https://sec-consult.com/en/blog/2019/10/vulnerability-

in-eu-cross-border-authentication-software-eidas-node/

---

<!-- Page 34 -->

## 11/9/21

## 34

§ It was found that, in step 2, the application

searches for the the issuer certificate by

comparing the Issuer DN of the entity

certificate to the Subject DN of the potential

issuer certificates

§ The application does not verify whether the

entity certificate has been correctly signed

by the issuer certificate

§ Other checks, such as whether the basic

constraints of the issuer certificate allow it to act as

a certificate issuer are not verified

§ An attacker can therefore sign a manipulated

SAML response with a forged certificate

§ The certificate must contain an Issuer DN that

matches the subject of a certificate in the trust

store

§ The subject must contain the country of the citizen

(e.g. CN=FAKE, C=AT).

S. Ranise - Security & Trust (FBK) 66

§ Focus on digital wallets

§ A personal digital identity wallet is a user-

controlled app empowering the citizens to

provide proofs of their identity or attributes

so that the citizen is able to selectively share

personal information with services by fishing

(verifiable) credentials from the wallets

§ The Wallet could integrate various

credentials asserting attributes obtained

from private or public providers, in addition

to the national eID

§ Examples of credentials: driver’s licenses,

health certificates, insurance, education,

profession, etc

§ More details available at

https://ec.europa.eu/commission/presscorn

er/detail/en/ip_21_2663

S. Ranise - Security & Trust (FBK) 67

---

<!-- Page 35 -->

## 11/9/21

## 35

● Self-sovereign identity = users control

the verifiable credentials that they hold and

their consent is required to use those

credentials

● Decentralized Identifiers = identify

subjects that the controller decides that they

identify

● Verifiable credentials = digital equivalent

of physical credentials such as credit cards,

passports, driving licenses, qualifications

and awards

○ EU is creating an eIDAS compatible

European Self-Sovereign Identity

Framework (ESSIF) making use of

decentralized identifiers and the European

Blockchain Services Infrastructure (EBSI)

Challenge : data

interoperability

https://www.eesc.europa.eu/sites/default/

files/files/1._panel_-_daniel_du_seuil.pdf

§ SAML allows service providers to outsource identity management and focus on

their core business

§ Reduced administration burden

§ Improved interoperability, usability, security and privacy

§ SAML profiles are useful use case scenarios

§ Web SSO most widely adopted

§ SSO has increasing importance and is gaining wider and wider adoption

§ SAML is ideal starting point to build infrastructures for digital identity management

§ Key enablers in an increasing digital world (SPID, eIDAS)

§ First line of defense against attackers

S. Ranise - Security & Trust (FBK) 69

---

<!-- Page 36 -->

## 11/9/21

## 36

§ What are the goals of SAML?

§ What is the structure of a SAML assertion?

§ What is a SAML profile? Give an example of SAML profile.

§ What is the difference between IdP-Initiated and SP-Initiated Web SSO?

§ What is the flow of an IdP-Initiated Web SSO?

§ What is the flow of an SP-Initiated Web SSO?

§ What are the main security concerns underlying the deployment of SAML? What

are the main mitigations measures?

§ What is SPID? What is eIDAS? Is there a relationship between the two?

§ Give an example of scenario in which eIDAS is useful.

S. Ranise - Security & Trust (FBK) 70