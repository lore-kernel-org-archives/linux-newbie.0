From: "Sean Rima" <gateway@tcob1.net>
Subject: SecurityFocus Linux Newsletter #122 (1/2)
Date: Monday, 10 Mar 2003 20:03:40 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_7223=3a9750=2f200_eb0fa146@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-newbie@vger.kernel.org

Originally to: All

SecurityFocus Linux Newsletter #122
-----------------------------------

I. FRONT AND CENTER
     1. Cryptographic Filesystems: Design and Implementation
     2. Windows Forensics - A Case Study: Part Two
     3. An Analysis of Simile
     4. Spam Wars Make Strange Bedfellows
     5. SecurityFocus DPP Program
     6. InfoSec World Conference and Expo/2003(March10-12,2003,Orlando,=
=46L)
II. LINUX VULNERABILITY SUMMARY
     1. Web-ERP Configuration File Remote Access Vulnerability
     2. GTCatalog Remote File Include Vulnerability
     3. File Local Stack Overflow Code Execution Vulnerability
     4. PY-Livredor index.php HTML Injection Vulnerability
     5. TCPDump Malformed ISAKMP Packet Denial Of Service Vulnerability
     6. File Utility Local Memory Allocation Vulnerability
     7. iPlanet 6.0 Log Viewing Utility Concealed Log Entry Vulnerabili=
ty
     8. Sn ort RPC Preprocessor Fragment Reassembly Buffer Overflow...
     9. Typo3 Showpic.PHP File Enumeration Vulnerability
     10. Apple QuickTime/Darwin Streaming Server parse_xml.cgi File...
     11. Sendmail Header Processing Buffer Overflow Vulnerability
     12. iPlanet Log Analyzer Logfile HTML Injection Vulnerability
     13. Hypermail CGI Mail Open Relay Vulnerability
     14. Typo3 Log HTML Injection Vulnerability
     15. Typo3 Translations.PHP Remote File Include Vulnerability
     16. Typo3 Translations.PHP File Disclosure Vulnerability
     19. Hypermail Local Temporary File Race Condition Vulnerability
     20. Ecartis Hidden Form Field Password Modification Vulnerability
     22. Typo3 Runtime Error Page Information Disclosure Vulnerability
III. LINUX FOCUS LIST SUMMARY
     1. Port 113 security (Thread)
     2. Red Hat Network updates (Thread)
     3. Reviewed the rhn code ..  Red Hat Network updates (Thread)
     4. Availability of Sendmail fix (Thread)
     5. chroot, scp and security on RedHat 8.0 (Thread)
     6. What Is hosts2-ns (Thread)
     7. Article Announcement: Secure MySQL Database Design (Thread)
IV. NEW PRODUCTS FOR LINUX PLATFORM
     1. N2H2 Sentian
     2. iomart NetIntelligence
     3. PureSight
V. NEW TOOLS FOR LINUX PLATFORMS
     1. DiskZapper v1.0
     2. pmacct v0.2.3
     3. GPassGuard v0.01alpha


I. FRONT AND CENTER
-------------------
1. Cryptographic Filesystems: Design and Implementation By Ido Dubrawsk=
y

Cryptographic filesystems have recently come to the forefront of securi=
ty. This=20
article will discuss some of the background and technology of cryptogra=
phic=20
filesystems and will then cover some example implementations of these=20
filesystems including Microsoft's Encrypting File System for Windows 20=
00, the=20
Linux CryptoAPI, and the Secure File System.

http://www.securityfocus.com/infocus/1673

2. Windows Forensics - A Case Study: Part Two By Stephen Barish

This article is the second in a two-part series that will offer a case =
study of=20
forensics in a Windows environment. This article deals with determining=
 the=20
scope of the compromise, and understanding what the attacker is trying =
to=20
accomplish at the network level. Along the way, we'll be discussing som=
e tools=20
and techniques that are useful in this type of detective work.

http://www.securityfocus.com/infocus/1672

3.  An Analysis of Simile
by Adrian Marinescu

Virus writers have always tried to develop new methods to make malware =
detection=20
more difficult. For instance, encryption was a natural step in virus ev=
olution=20
when scanners started to use databases with scan strings for detection.=
 When=20
scanners started to handle encryption patterns generically, first oligo=
morphism=20
(a limited form of polymorphism - the polymorphic decryptor can have a =
strictly=20
limited, relatively small number of shapes) and then polymorphism were=20
introduced.

http://www.securityfocus.com/infocus/1671

4. Spam Wars Make Strange Bedfellows By Jon Lasser

The open-source community is closer than ever to curing the spam proble=
m, but=20
they'll have to hold their noses and help out Windows users to get ther=
e.

http://www.securityfocus.com/columnists/146

5. SecurityFocus DPP Program

Attention Universities!! Sign-up now for preferred pricing on the only =
global=20
early-warning system for cyber attacks - SecurityFocus DeepSight Threat=
=20
Management System.

Click here for more information:
http://www.securityfocus.com/corporate/products/dpsection.shtml

6. InfoSec World Conference and Expo/2003 (March 10-12, 2003, Orlando, =
=46L)

Optional Workshops March 8, 9, 12, 13, & 14 Vendor Expo March 10 & 11

Solutions to today=92s security concerns; hands-on experts; blockbuster=
 vendor=20
expo; the CISO Executive Summit; invaluable networking opportunities.  =
InfoSec=20
World has it all!

Go to: http://www.misti.com/10/os03nl37inf.html


II. BUGTRAQ SUMMARY
-------------------
1. Web-ERP Configuration File Remote Access Vulnerability BugTraq ID: 6=
996
Remote: Yes
Date Published: Mar 01 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6996
Summary:

Web-ERP is a freely available, open source internationalized Enterprise=
 Resource=20
Planning package.  It is available for the Unix and Linux operating sys=
tems.

A problem may make it possible for remote users to gain unauthorized ac=
cess to=20
Web-ERP information.

It has been reported that Web-ERP does not sufficiently restrict access=
 to it's=20
configuration information.  Because of this, an attacker may be able to=
 remotely=20
access Web-ERP information, and potentially gain access to information =
that is=20
sensitive in nature.

The problem is in the storage of the Web-ERP configuration file.  By de=
fault,=20
configuration information is stored in the /logicworks.ini file. This f=
ile is by=20
default accessible to any user that has access to the web server on whi=
ch=20
Web-ERP is hosted.  An attacker could gain information such as the MySQ=
L=20
username and password from this file.

2. GTCatalog Remote File Include Vulnerability BugTraq ID: 6998
Remote: Yes
Date Published: Mar 03 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6998
Summary:

GTCatalog is software designed to maintain a catalog of products. It is=
=20
implemented in PHP and is available for a variety of platforms includin=
g=20
Microsoft Windows and Linux variant operating systems.

GTCatalog is prone to an issue that may allow remote attackers to inclu=
de files=20
located on attacker-controlled servers.

This vulnerability is as a result of insufficient sanitization performe=
d on=20
remote user supplied data. Specifically the PHP script file 'index.php'=
 is=20
vulnerable to this issue.

Under some circumstances, it is possible for remote attackers to influe=
nce the=20
include path for files ending with '.custom.inc' to point to an externa=
l file on=20
a remote server by manipulating the '$function' and
'$custom' URI parameters.

If the remote file is a malicious file, this may be exploited to execut=
e=20
arbitrary system commands in the context of the web server.

This vulnerability was reported for GTCatalog 0.9.1 and earlier.

3. File Local Stack Overflow Code Execution Vulnerability BugTraq ID: 7=
008
Remote: No
Date Published: Mar 04 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7008
Summary:

file is a freely available, open source program available for Unix and =
Linux=20
operating systems.

A problem with the program may result in the execution of attacker-supp=
lied=20
instructions.

It has been reported that a stack overflow exists the file program. Alt=
hough=20
details of this issue are currently unavailable, it is likely that this=
 issue=20
could be exploited to execute code as the user of the file utility.

This vulnerability would require an attacker to create the malicious co=
de and=20
place it in a critical portion of the file.  Once a user executes the f=
ile=20
utility against this file, malicious code embedded in the ELF header wo=
uld=20
likely be executed with the privileges of the file utility user.

It should also be noted that the file program may be executed by other=20
applications on the system, some of which execute with privileges.  Thi=
s is true=20
of LPRNG, which executes the file utility in the master-filter script. =
=20
Exploitation may also occur through applications such as less, which ex=
ecute the=20
file utility when loading a file into the viewer.

4. PY-Livredor index.php HTML Injection Vulnerability BugTraq ID: 6997
Remote: Yes
Date Published: Mar 03 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6997
Summary:

PY-Livredor is freely available guestbook software. It will run on most=
 Unix and=20
Linux variants, as well as Microsoft Windows operating systems.

PY-Livredor does not adequately filter HTML tags from various fields on=
 the=20
'index.php' page. Specifically, an attacker may be able to insert malic=
ious HTML=20
code into the "titre", "Votre pseudo", "Votre e-mail", "Votre message" =
fields.

The attacker's code may be executed in the web client of users who view=
 the=20
pages generated by the guestbook, in the security context of the websit=
e hosting=20
the software.

Attackers may potentially exploit this issue to hijack web content or t=
o steal=20
cookie-based authentication credentials.

This vulnerability has been reported for PY-Livredor version 1.0.

5. TCPDump Malformed ISAKMP Packet Denial Of Service Vulnerability BugT=
raq ID:=20
6974
Remote: Yes
Date Published: Feb 27 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6974
Summary:

tcpdump is a freely available, open source network monitoring tool.  It=
 is=20
available for the Unix, Linux, and Microsoft Windows operating systems.

A vulnerability in the processing of some packet types may result in an=
=20
inability to further use the tcpdump application.

It has been reported that tcpdump is vulnerable to a denial of service =
when some=20
packet types are received.  By sending a maliciously formatted packet t=
o a=20
system using a vulnerable version of tcpdump, it is possible for a remo=
te user=20
to cause tcpdump to ignore network traffic from the time the packet is =
received=20
until the application is terminated and restarted.

The problem is in the handling of ISAKMP packets.  When tcpdump receive=
s a=20
maliciously crafted ISAKMP packet, the application enters an infinite l=
oop and=20
ceases to further monitor network traffic.  This could allow the passin=
g of=20
undetected network traffic that would typically be seen by tcpdump.

6. File Utility Local Memory Allocation Vulnerability BugTraq ID: 7009
Remote: No
Date Published: Mar 04 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7009
Summary:

file is a freely available, open source program available for Unix and =
Linux=20
operating systems.

A problem with the program may result in a denial of service, and may=20
potentially allow the execution of attacker-supplied instructions.

It has been reported that a memory allocation issue exists the file pro=
gram. =20
Although details of this issue are currently unavailable, it is likely =
that this=20
issue could be exploited to cause a denial of service condition, and po=
tentially=20
execute code as the user of the file utility.

This problem has been reported as a memory allocation problem.  Though=20
unconfirmed, this vulnerability is likely either a heap overflow, or a=20
double-free problem.  In either circumstance, it would require an attac=
ker to=20
create the malicious code and place it in a critical portion of the fil=
e.  Once=20
a user executes the file utility against this file, malicious code embe=
dded in=20
the file would likely be executed with the privileges of the file utili=
ty user.

It should also be noted that the file program may be executed by other=20
applications on the system, some of which execute with privileges.  Thi=
s is true=20
of LPRNG, which executes the file utility in the master-filter script. =
=20
Exploitation may also occur through applications such as less, which ex=
ecute the=20
file utility when loading a file into the viewer.

7. iPlanet 6.0 Log Viewing Utility Concealed Log Entry Vulnerability Bu=
gTraq ID:=20
7012
Remote: Yes
Date Published: Mar 04 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7012
Summary:

iPlanet is an HTTP server product. It is available for a number of plat=
forms,=20
including Unix and Linux variants and Microsoft Windows operating syste=
ms.

A vulnerability has been reported for iPlanet that may conceal maliciou=
s log=20
entries from the 'View Access Log' and 'View Error Log' utilities. The =
problem=20
occurs due to the utilities' parsing of the 'Format=3D' string, which i=
s typically=20
used to specify log entry formatting.

An attacker can exploit this vulnerability by generating a log entry us=
ing a=20
hostname which is prepended with the 'Format=3D' string. Because the da=
ta supplied=20
as the 'Format' will not be recognized by the said utilities, the log e=
ntry will=20
be not be shown.

It should be noted that viewing the log data with other utilities, such=
 as a=20
text-based editor, will disclose the malicious entries.

8. Snort RPC Preprocessor Fragment Reassembly Buffer Overflow Vulnerabi=
lity=20
BugTraq ID: 6963
Remote: Yes
Date Published: Mar 03 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6963
Summary:

Snort is an open-source network intrusion detection system.

A vulnerability in the Snort network IDS has been discovered that may a=
llow for=20
remote attackers to compromise hosts using the system.  The vulnerabili=
ty is due=20
to a programmatic flaw in the RPC preprocessor.

The condition is in the procedure "ConvertRPC()" and occurs during the=20
reassembly of fragmented records.  This operation uses a loop that iter=
ates once=20
for each fragment copied to a buffer.

A check put in place to ensure that the total amount of data copied is =
not=20
greater than the size of the buffer is flawed:

        if(length > size)
        {
            DEBUG_WRAP(DebugMessage(DEBUG_FLOW, "WARNING: rpc_decode
calculated bad "
                        "length: %d\n", length););
            return;
        }
        else
        {
            total_len +=3D length;
            index +=3D 4;
            for (i=3D0; i < length; i++,rpc++,index++,hdrptr++)
                *rpc =3D *index;
        }


The expression, "if(length > size)", only verifies that the length of t=
he=20
current fragment is not greater than the total buffer size.  The amount=
 of data=20
already written to the buffer is not checked.  Consequently, it is poss=
ible to=20
write beyond the buffer and over potentially sensitive memory:

            for (i=3D0; i < length; i++,rpc++,index++,hdrptr++)
                *rpc =3D *index;

Attackers can exploit this vulnerability by transmitting malicious pack=
ets=20
across a network monitored by Snort.  Successful attacks may result in =
the=20
execution of instructions on the IDS system with root privileges.

9. Typo3 Showpic.PHP File Enumeration Vulnerability BugTraq ID: 6982
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6982
Summary:

TYPO3 is a web-based content management system.  It is available for Mi=
crosoft=20
Windows operating systems and Unix and Linux variants.

TYPO3 is prone to a vulnerability that will allow remote attackers to e=
numerate=20
whether or not files exist on the system hosting the software. This iss=
ue exists=20
in the 'showpic.php' and 'thumbs.php' scripts and may be exploited by s=
ubmitting=20
a malicious request for a file (including the relative path).  These sc=
ripts=20
will return information about whether or not a file exists.

This type of information may be useful in mounting further attacks agai=
nst the=20
host system, since the scripts will reveal information about the layout=
 of the=20
host's filesystem.

10. Apple QuickTime/Darwin Streaming Server parse_xml.cgi File Disclosu=
re=20
Vulnerability
BugTraq ID: 6990
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6990
Summary:

QuickTime/Darwin Streaming Administration Server is server technology w=
hich=20
allows you to send streaming QuickTime data to clients across the Inter=
net.

A file retrieval vulnerability has been reported for QuickTime/Darwin S=
treaming=20
Server (SS). The vulnerability exists due to insufficient sanitization =
of some=20
parameters given to the parse_xml.cgi script. Specifically, directory t=
raversal=20
sequences are not sanitized from the value supplied to the 'filename' U=
RI=20
parameter. Information obtained in this manner may be used by an attack=
er to=20
launch more organinzed attacks against a vulnerable system.

An attacker may exploit this vulnerability by making a request to the=20
parse_xml.cgi script containing dot-dot-slash ('../') sequences followe=
d by a=20
filename. When the malicious request is processed, the Streaming Server=
 will=20
disclose the contents of the file to an attacker.

This vulnerability was tested on SS for Microsoft Windows systems. Linu=
x=20
versions of Darwin SS are reportedly not vulnerable to this issue.

11. Sendmail Header Processing Buffer Overflow Vulnerability BugTraq ID=
: 6991
Remote: Yes
Date Published: Mar 02 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6991
Summary:

Sendmail is a widely used MTA for Unix and Microsoft Windows systems.

A remotely exploitable vulnerability has been discovered in Sendmail. T=
he=20
vulnerability is due to a buffer overflow condition in the SMTP header =
parsing=20
component.  Remote attackers may exploit this vulnerability by connecti=
ng to=20
target SMTP servers and transmitting to them malformed SMTP data.

The overflow condition occurs when Sendmail processes addresses or list=
s of=20
addresses in fields such as "From:" or "CC:".  One of the checks to ens=
ure that=20
the addresses are valid is flawed, resulting in a buffer overflow condi=
tion. =20
Successful attackers may exploit this vulnerability to gain root privil=
eges on=20
affected servers remotely.

It has been reported that this vulnerability may possibly be locally ex=
ploitable=20
if the sendmail binary is setuid/setgid.

Versions 5.2 to 8.12.7 are affected.  Administrators are advised to upg=
rade to=20
8.12.8 or apply available patches to prior versions of the 8.x tree.

12. iPlanet Log Analyzer Logfile HTML Injection Vulnerability BugTraq I=
D: 7017
Remote: Yes
Date Published: Mar 04 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7017
Summary:

iPlanet is an enterprise web server software package with a built-in to=
ol for=20
viewing webserver logs.  It is available for Microsoft Windows, Unix, a=
nd Linux=20
operating systems.

iPlanet does not sufficiently sanitize HTML when logging requests.  If =
malicious=20
data containing HTML and script code is logged and then viewed using th=
e log=20
viewing software, exploitation will occur.  Through exploitation of thi=
s issue,=20
it will be possible to falsify log information and execute arbitrary sc=
ript code=20
in the web client of the user viewing the logs.

This issue has been demonstrated when the log analysis software renders=
 a=20
malicious hostname which contains hostile HTML or script code, which wa=
s logged=20
when the server did an inverse lookup of hostname data.  This is only o=
ne=20
possible scenario, and it is likely that data other than the hostname i=
s not=20
sufficiently filtered.

This issue occurs when viewing logs in both HTML and text mode.

13. Hypermail CGI Mail Open Relay Vulnerability BugTraq ID: 6973
Remote: Yes
Date Published: Feb 27 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6973
Summary:

Hypermail is a freely available tool that converts email into HTML form=
at.

It has been reported that Hypermail's CGI-based mail program is prone t=
o a=20
condition that may allow attackers to abuse the service as an open mail=
 relay.

This may allow attackers to send mass mails through the vulnerable soft=
ware. It=20
may also be possible to forge a source address to masquerade as a trust=
ed email=20
user in an attempt to gather information that may be useful in further =
attacks=20
against the vulnerable system.

=46ull details of this vulnerability are not currently known. BID will =
be updated=20
as further details are disclosed.

14. Typo3 Log HTML Injection Vulnerability BugTraq ID: 6983
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6983
Summary:

TYPO3 is a web-based content management system.  It is available for Mi=
crosoft=20
Windows operating systems and Unix and Linux variants.

TYP03 logs all system and access related errors in the TYPO3 database a=
nd=20
provides a facility for administrators to view this information from th=
e web. =20
However, data is not sanitized of HTML before being logged.  As a resul=
t, remote=20
attackers may inject malicious HTML and script code into log files.  Wh=
en these=20
logs are viewed, the hostile code will be interpreted in the web client=
 of the=20
user viewing the logs.

This may allow for theft of administrative cookie-based authentication=20
credentials and other attacks.

15. Typo3 Translations.PHP Remote File Include Vulnerability BugTraq ID=
: 6984
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6984
Summary:

TYPO3 is a web-based content management system.  It is available for Mi=
crosoft=20
Windows operating systems and Unix and Linux variants.

TYPO3 is prone to an issue that may allow remote attackers to include f=
iles=20
located on attacker-controlled servers.

This vulnerability is as a result of insufficient sanitization performe=
d on=20
remote user supplied data used by a URI parameter of the
'translations.php' PHP page.

Under some circumstances, it is possible for remote attackers to influe=
nce the=20
path for an include file to point to an external file by manipulating t=
he=20
'$ONLY' URI parameter.

If the remote file is a malicious file, this may be exploited to execut=
e=20
arbitrary system commands in the context of the web server.

16. Typo3 Translations.PHP File Disclosure Vulnerability BugTraq ID: 69=
85
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6985
Summary:

TYPO3 is a web-based content management system.  It is available for Mi=
crosoft=20
Windows operating systems and Unix and Linux variants.

TYPO3 does not sufficiently sanitize input submitted via URI parameters=
 of=20
potentially malicious data.  This issue exists in the 'translations.php=
' script.=20
 Specifically, variations of directory traversal sequences and null cha=
racters=20
(%00) may be specified as a value for the 'ONLY' URI parameter.  By sub=
mitting a=20
malicious web request to this script that contains a relative path to a=
 resource=20
and a null character (%00), it is possible to retrieve arbitrary files =
that are=20
readable by the web server process.

Successful exploitation will permit the attacker to gain access to sens=
itive=20
information that may aid in mounting further attacks against the system=
 hosting=20
the software.

17. Typo3 Webroot Folders Information Disclosure Weakness BugTraq ID: 6=
988
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6988
Summary:

TYPO3 is a web-based content management system.  It is available for Mi=
crosoft=20
Windows operating systems and Unix and Linux variants.

It has been reported that TYPO3 installs, by default, several directori=
es into=20
the TYPO3 webroot. These directories are reportedly readable or lacking=
=20
sufficient authentication mechanisms and contain log, configuration and=
 script=20
files. This weakness may result in the disclosure of sensitive system b=
ased=20
information to malicious web users.

The following directories and files have been reported to be prone to t=
his=20
issue: /install /fileadmin/ /typo3conf/

The information gathered as a result of this weakness may be used in fu=
rther=20
attacks against the system.

18. Typo3 HTML Hidden Form Field Information Disclosure Weakness BugTra=
q ID:=20
6993
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6993
Summary:

TYPO3 is a web-based content management system. It is available for Mic=
rosoft=20
Windows operating systems and Unix and Linux variants.

Clients of TYPO3 systems may access potentially sensitive data that hav=
e been=20
obfuscated through hidden form fields. Such fields may contain potentia=
lly=20
sensitive information which may provide determined attackers with valua=
ble=20
information which may be useful in exploiting other known issues in the=
=20
software.

This vulnerability was reported for TYPO3 3.5b5.

19. Hypermail Local Temporary File Race Condition Vulnerability BugTraq=
 ID: 6975
Remote: No
Date Published: Feb 27 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6975
Summary:

Hypermail is a freely available tool that converts email into HTML form=
at.

A problem with Hypermail may make local symbolic link attacks possible.

It has been reported that Hypermail is vulnerable to a race condition e=
rror.=20
Under some circumstances, Hypermail creates files in the temporary dire=
ctory.=20
However, it may be possible to create a symbolic link in a crucial poin=
t of=20
program execution that would result in the overwriting of files pointed=
 to by=20
the link. This will only occur if the files are writeable by the Hyperm=
ail=20
process.

Successful exploitation may cause local files to be corrupted. If files=
 can be=20
corrupted with custom data, this may result in privilege elevation.

=46ull details of this vulnerability are not currently known. The BID w=
ill be=20
updated as further details are disclosed.

20. Ecartis Hidden Form Field Password Modification Vulnerability BugTr=
aq ID:=20
6971
Remote: Yes
Date Published: Feb 27 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6971
Summary:

Ecartis is a mailing list management package for Linux, BSD, and other =
Unix=20
variant operating systems.

A vulnerability has been reported for Ecartis that may allow attackers =
to modify=20
passwords.

An attacker can exploit this vulnerability by first saving a form local=
ly and=20
modifying hidden fields in the saved HTML pages and submitting them. Th=
is will=20
allow an attacker to authenticate as a privileged user of Ecartis and m=
odify=20
passwords.

It is also possible to use tools such as curl to post arbitrary form da=
ta.

This vulnerability was reported for Ecartis 1.0.0-snap20021013. It is l=
ikely=20
that other version are affected.

21. Netscape Communicator Password Disclosure Weakness BugTraq ID: 6981
Remote: No
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6981
Summary:

Netscape Communicator is a combined web browser and e-Mail Client devel=
oped for=20
a variety of platforms including Microsoft Windows, Linux and Unix vari=
ant=20
operating environments.

It has been reported that the Netscape Communicator roaming profile fun=
ction may=20
store sensitive user credentials in the 'prefs.js' configuration file u=
sing=20
plaintext or easily disclosed format.

This weakness may result in an attacker accessing sensitive user creden=
tials=20
that may be used in further attacks launched against the system.

Conflicting details have been reported suggesting that perhaps this iss=
ue may be=20
due to a user initiated configuration change and that password data may=
 be=20
encrypted using a trivial XOR based encryption algorithm by default.

This report is closely related to the issue described in BID 6215.

22. Typo3 Runtime Error Page Information Disclosure Vulnerability BugTr=
aq ID:=20
6986
Remote: Yes
Date Published: Feb 28 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/6986
Summary:

TYPO3 is a web-based content management system.  It is available for Mi=
crosoft=20
Windows operating systems and Unix and Linux variants.

An information disclosure vulnerability has been reported for TYPO3. Th=
e=20
vulnerability exists in several 'test', 'class' and 'library' scripts t=
hat are=20
included with TYPO3.

These scripts may be forced to execute and generate runtime errors. Whe=
n these=20
errors occur, the scripts will output path information.

Information obtained in this manner may be used by an attacker to launc=
h further=20
attacks against a vulnerable system.


IV. LINUX FOCUS LIST SUMMARY
----------------------------
1. Port 113 security (Thread)
Relevant URL:

http://online.securityfocus.com/archive/91/314192

2. Red Hat Network updates (Thread) Relevant URL:

http://online.securityfocus.com/archive/91/314193

3. Reviewed the rhn code ..  Red Hat Network updates (Thread) Relevant =
URL:

http://online.securityfocus.com/archive/91/314126

4. Availability of Sendmail fix (Thread) Relevant URL:

http://online.securityfocus.com/archive/91/314058

5. chroot, scp and security on RedHat 8.0 (Thread) Relevant URL:

http://online.securityfocus.com/archive/91/314036

6. What Is hosts2-ns (Thread)
Relevant URL:

http://online.securityfocus.com/archive/91/313811

7. Article Announcement: Secure MySQL Database Design (Thread) Relevant=
 URL:

http://online.securityfocus.com/archive/91/313541


IV. NEW PRODUCTS FOR LINUX PLATFORM
-----------------------------------
1. N2H2 Sentian
by N2H2
Platforms: Linux, Windows 2000, Windows 95/98, Windows NT, Windows XP R=
elevant=20
URL:
http://www.n2h2.com/products/sentian_home.php
Summary:

Sentian filtering software works with a wide variety of implementations=
 to meet=20
the needs of organizations both large and small. Whichever device you p=
refer,=20
every Sentian product uses the categorized filtering database recognize=
d as the=20
most effective available.

2. iomart NetIntelligence
by iomart
Platforms: AIX, Linux, Netware, Solaris, Windows 2000, Windows 95/98, W=
indows=20
NT, Windows XP
Relevant URL:
http://www.netintelligence.com/
Summary:

The NetIntelligence product consists of a main reports interface which =
is=20
supported by easy to use administration tools. NetIntelligence has a de=
ployment=20
application which is purpose built for straightforward rollout of the p=
roduct.=20
Thereafter the main technical interface is via the administration conso=
le which=20
allows the administrator to establish policies, user and machine groups=
- and=20
delegate reporting authority to specified users within the organisation=
=2E Custom=20
content allows bespoke fingerprinting as required. Web-blocking gives p=
olicy=20
control over Internet Usage.

3. PureSight
by iCognito
Platforms: Linux, Solaris, Windows 2000, Windows NT Relevant URL:
http://www.icognito.com/Products/PureSightHomeDescription.shtml
Summary:

PureSight Home is a powerful tool that helps parents and other concerne=
d users=20
embrace technology in their homes while safeguarding the family from in=
tentional=20
or accidental viewing of inappropriate content. PureSight Home provides=
 maximal=20
protection from objectionable materials on the web without the need for=
 costly=20
and time-consuming updates. Easily installed and customized, the=20
password-protected tool can be readily set and modified according to pa=
rental=20
preferences.


V. NEW TOOLS FOR LINUX PLATFORMS
--------------------------------
1. DiskZapper v1.0
by Phil Howard
Relevant URL:
http://diskzapper.com/
Platforms: N/A
Summary:

DiskZapper is a Linux-based bootable (floppy or CD-ROM) tool intended t=
o wipe=20
all hard drives on the machine it runs on to binary zero. This is inten=
ded for=20
uses such as making sure old computers or hard drives being sold or tra=
shed are=20
clear of any confidential data, and to be sure certain computers are cl=
ear of=20
any unlicensed software in the event the software

[continued in next message]


Posted at TCOB1 - Must not be crossposted to any other echo or network =
without=20
the prior permission of Sean Rima


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
