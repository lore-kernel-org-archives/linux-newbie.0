From: "Sean Rima" <gateway@tcob1.net>
Subject: SecurityFocus Linux Newsletter #123
Date: Monday, 17 Mar 2003 19:43:28 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_7223=3a9750=2f200_7cfa88da@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-newbie@vger.kernel.org

Originally to: All

SecurityFocus Linux Newsletter #123
-----------------------------------

I. FRONT AND CENTER
     1. Open Source Honeypots, Part Two: Deploying Honeyd in the Wild
     2. IP Spoofing: An Introduction
     3. Iraqi Cyberwar: an Ageless Joke
     4. SecurityFocus DPP Program
II. LINUX VULNERABILITY SUMMARY
     1. SimpleBBS Users.php Insecure File Permissions Vulnerability
     2. Ethereal SOCKS Dissector Format String Vulnerability
     3. Ethereal NTLMSSP Dissector Heap Corruption Vulnerability
     4. MySQL mysqld Privilege Escalation Vulnerability
     5. PHP-Nuke Multiple SQL Injection Vulnerabilities
     6. MySQL Control Center Insecure Default File Permission...
     7. DeleGate HTTP Proxy Robot.TXT User-Agent: Buffer Overflow...
     8. Multiple PHP-Nuke Forums/Private_Messages SQL Injection...
     9. SaveMyModem Statusbar_Set_Text Buffer Overflow Vulnerability
     10. Multiple Vendor 802.11b Authentication-Failed DOS...
     11. GreyMatter WebLog Remote Command Execution Vulnerability
     12. Man Program Unsafe Return Value Command Execution Vulnerabilit=
y
     13. Opera Long Filename Download Buffer Overrun Vulnerability
     14. Qpopper Remote Memory Corruption Vulnerability
III. LINUX FOCUS LIST SUMMARY
     1. Port 113 security (Thread)
     2. Traffic Shaping. (Thread)
     3. SecurityFocus Article Announcement (Thread)
IV. NEW PRODUCTS FOR LINUX PLATFORMS
     1. EverLink SRAC Gateway
     2. iChain
     3. NetOp Remote Control
V.  NEW TOOLS FOR LINUX PLATFORMS
     1. eXtended Allow - Deny list for PAM v0.4
     2. C-Kermit v8.0.208
     3. trafcalc v1.0


I. FRONT AND CENTER
-------------------
1. Open Source Honeypots, Part Two: Deploying Honeyd in the Wild By Lan=
ce=20
Spitzner

This is the second part of a three-part series looking at Honeyd, the o=
pen=20
source honeypot. In this paper we we will deploy Honeyd on the Internet=
 for one=20
week and watch what happens. The intent is to test Honeyd by letting re=
al bad=20
guys interact with and attack it. We will then analyze how the honeypot=
=20
performed and what it discovered

http://www.securityfocus.com/infocus/1675

2. IP Spoofing: An Introduction
by Matthew Tanase

Criminals have long employed the tactic of masking their true identity,=
 from=20
disguises to aliases to caller-id blocking. It should come as no surpri=
se then,=20
that criminals who conduct their nefarious activities on networks and c=
omputers=20
should employ such techniques. IP spoofing is one of the most common fo=
rms of=20
on-line camouflage. In IP spoofing, an attacker gains unauthorized acce=
ss to a=20
computer or a network by making it appear that a malicious message has =
come from=20
a trusted machine by spoofing=94 the IP address of that machine. In thi=
s article,=20
we will examine the concepts of IP spoofing: why it is possible, how it=
 works,=20
what it is used for and how to defend against it.

http://www.securityfocus.com/infocus/1674

3. Iraqi Cyberwar: an Ageless Joke
By George Smith

Did U.S. infowar commandos smuggle a deadly computer virus into Iraq in=
side a=20
printer? Of course not. So why does it keep getting reported?

http://www.securityfocus.com/columnists/147

4. SecurityFocus DPP Program

Attention Universities!! Sign-up now for preferred pricing on the only =
global=20
early-warning system for cyber attacks - SecurityFocus DeepSight Threat=
=20
Management System.

Click here for more information:
http://www.securityfocus.com/corporate/products/dpsection.shtml


II. BUGTRAQ SUMMARY
-------------------
1. SimpleBBS Users.php Insecure File Permissions Vulnerability BugTraq =
ID: 7045
Remote: Yes
Date Published: Mar 07 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7045
Summary:

SimpleBBS is a freely available, open source PHP Bulletin Board. It is =
available=20
for the Unix and Linux operating systems.

SimpleBBS reportedly creates the user database 'users.php' with world-r=
eadable=20
permissions in the SimpleBBS web root. User credentials are stored in p=
lain text=20
format. As a result anyone who may have access to the SimpleBBS website=
 may view=20
stored user information contained in the SimpleBBS user database.

This vulnerability was reported for SimpleBBS 1.0.6. It is not known if=
 earlier=20
versions are affected by this vulnerability.

2. Ethereal SOCKS Dissector Format String Vulnerability BugTraq ID: 704=
9
Remote: Yes
Date Published: Mar 08 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7049
Summary:

Ethereal is a freely available, open source network traffic analysis to=
ol. It is=20
maintained by the Ethereal Project and is available for most Unix and L=
inux=20
variants as well as Microsoft Windows operating systems.

The Ethereal SOCKS dissector is a mechanism for decoding the SOCKS prot=
ocol. A=20
format string vulnerability has been reported in some versions of this=20
dissector. The vulnerability exists in the packet-socks.c source file.

An attacker can exploit this vulnerability by connecting to a vulnerabl=
e SOCKS=20
server and sending malicious format string specifiers to the SOCKS serv=
er. If=20
Ethereal is being used as a security tool to monitor network packets, i=
t is=20
possible that sensitive memory may be corrupted.

This has been confirmed to result in a denial of service condition.=20
Additionally, it may be possible to cause Ethereal to execute malicious=
=20
attacker-supplied code.

This vulnerability affects Ethereal 0.9.9 and earlier.

3. Ethereal NTLMSSP Dissector Heap Corruption Vulnerability BugTraq ID:=
 7050
Remote: Yes
Date Published: Mar 08 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7050
Summary:

Ethereal is a freely available, open source network traffic analysis to=
ol. It is=20
maintained by the Ethereal Project and is available for most Unix and L=
inux=20
variants as well as Microsoft Windows operating systems.

The NTLMSSP (NTLM Security Support Provider) dissector is a mechanism f=
or=20
evaluating packets that use the NTLM protocol. A heap corruption vulner=
ability=20
has been reported for some versions of the dissector.

The precise technical details of this vulnerability are currently unkno=
wn. This=20
BID will be updated as further information is available.

An attacker may be able to exploit this vulnerability by crafting a spe=
cially=20
formed packet and sending it to a system using the NTLMSSP dissector or=
 by=20
convincing a victim user to use Ethereal to read a malformed packet tra=
ce file.

Due to the nature of this vulnerability it may be possible for an attac=
ker to=20
create a situation in which sensitive memory could be overwritten. If s=
uccessful=20
this may allow for the execution of arbitrary code with the privileges =
of the=20
Ethereal process.

This vulnerability affects Ethereal 0.9.9 and earlier.

4. MySQL mysqld Privilege Escalation Vulnerability BugTraq ID: 7052
Remote: Yes
Date Published: Mar 08 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7052
Summary:

MySQL is an open source relational database project. It is available fo=
r the=20
Microsoft Windows, Linux, and Unix operating systems.

A vulnerability has been discovered for MySQL that may allow the mysqld=
 service=20
to start with elevated privileges.

MySQL uses a series of configuration files to set the privileges of the=
 service.=20
The configuration files are typically stored in /etc/my.cnf, DATADIR/my=
=2Ecnf and=20
~/.my.cnf. When executed, the mysqld service reads configuration inform=
ation=20
from /etc/my.cnf first, then DATADIR/my.cnf and finally ~/.my.cnf.

An attacker can exploit this vulnerability by creating a DATADIR/my.cnf=
 that=20
includes the line 'user=3Droot' under the '[mysqld]' option section. Fu=
rthermore,=20
the ~/.my.cnf file must not exist.

When the mysqld service is executed, it will run as the root user inste=
ad of the=20
default user.

This may allow an attacker to obtain elevated privileges on a compromis=
ed=20
system.

This vulnerability was reported for MySQL 3.23.55.

5. PHP-Nuke Multiple SQL Injection Vulnerabilities BugTraq ID: 7031
Remote: Yes
Date Published: Mar 06 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7031
Summary:

PHP-Nuke is a web-based portal system. Implemented in PHP, it is availa=
ble for a=20
range of systems, including Unix, Linux, and Microsoft Windows.

Multiple SQL injection vulnerabilities were reported in the
'Members_List' and 'Your_Account' modules of PHP-Nuke.  This is due to
insufficient sanitization of externally supplied data which is used to =
construct=20
SQL queries.  This data may be supplied via URI parameters in requests =
for=20
certain module functions.  A remote attacker may take advantage of thes=
e issues=20
to inject malicious data into SQL queries, possibly resulting in modifi=
cation of=20
query logic.

The consequences may vary depending on the particular database implemen=
tation=20
and the nature of the specific queries.  At the very least, it is possi=
ble to=20
compromise the PHP-Nuke web portal.  SQL injection also makes it possib=
le, under=20
some circumstances, to exploit vulnerabilities that may exist in the da=
tabase=20
implementation.

This BID will be divided into separate BIDs for each distinct issue and=
 retired=20
when further analysis of these vulnerabilities is complete.

6. MySQL Control Center Insecure Default File Permission Vulnerability =
BugTraq=20
ID: 7041
Remote: No
Date Published: Mar 07 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7041
Summary:

MySQL Control Center (MySQLCC) is a visual administration interface for=
 MySQL=20
database servers and is available for multiple platforms.

A vulnerability has been discovered in MySQLCC. The problem lies in the=
=20
permissions set on various files used by MySQLCC. Specifically, configu=
ration=20
and connection files used by the application are set world-readable. Th=
is may=20
allow a malicious local user to obtain access to sensitive information =
regarding=20
various MySQL configuration settings.

Access to these files may allow an attacker to obtain information requi=
red to=20
carry out further attacks against a target system.

This issue has been addressed in MySQLCC 0.8.9.

7. DeleGate HTTP Proxy Robot.TXT User-Agent: Buffer Overflow Vulnerabil=
ity=20
BugTraq ID: 7054
Remote: Yes
Date Published: Mar 10 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7054
Summary:

DeleGate is an open source proxy server developed by Yutaka Sato. DeleG=
ate=20
allows for proxying of several application protocols, including HTTP.  =
It is=20
available for multiple platforms, including Microsoft Windows and Unix =
and Linux=20
variants.

The DeleGate HTTP Proxy component is prone to a remotely exploitable bu=
ffer=20
overflow vulnerability.  This is due to insufficient bounds checking of=
=20
User-Agent: fields in remote 'robot.txt' files.  It is reported that it=
 is=20
possible to trigger this issue by specifying multiple lines of User-Age=
nt: data=20
in the file, which will cause an internal array of pointers to be overf=
lowed=20
with attacker-supplied data.  This will occur when a malicious 'robot.t=
xt' file=20
is retrieved via the proxy.

Successful exploitation may result in execution of malicious code in th=
e=20
security context of the DeleGate proxy server.

This issue was reported in DeleGate versions 8.3.4 and 8.4.0.  Other ve=
rsions=20
may also be affected.

8. Multiple PHP-Nuke Forums/Private_Messages SQL Injection Vulnerabilit=
ies=20
BugTraq ID: 7060
Remote: Yes
Date Published: Mar 10 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7060
Summary:

PHP-Nuke is a web-based portal system. Implemented in PHP, it is availa=
ble for a=20
range of systems, including Unix, Linux, and Microsoft Windows.

Multiple SQL injection vulnerabilities were reported in the Forums scri=
pts and=20
'Private_Messages' module of PHP-Nuke.  This is due to insufficient san=
itization=20
of externally supplied data which is used to construct SQL queries.  Th=
is data=20
may be supplied via URI parameters in requests for certain functions.  =
A remote=20
attacker may take advantage of these issues to inject malicious data in=
to SQL=20
queries, possibly resulting in modification of query logic.

The consequences may vary depending on the particular database implemen=
tation=20
and the nature of the specific queries.  At the very least, it is possi=
ble to=20
compromise the PHP-Nuke web portal.  SQL injection also makes it possib=
le, under=20
some circumstances, to exploit vulnerabilities that may exist in the da=
tabase=20
implementation.

This BID will be divided into separate BIDs for each distinct issue and=
 retired=20
when further analysis of these vulnerabilities is complete.

9. SaveMyModem Statusbar_Set_Text Buffer Overflow Vulnerability BugTraq=
 ID: 7068
Remote: Yes
Date Published: Mar 10 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7068
Summary:

SaveMyModem is mail filtering software.  It is available for Microsoft =
Windows=20
and Unix and Linux platforms.

SaveMyModem is prone to a buffer overflow in the 'statusbar_set_text' f=
unction. =20
In some instances, this function will be called with externally supplie=
d data,=20
such as when messages are processed.  The vulnerable function includes =
a call to=20
vsnprintf(), specifying a source buffer that is much larger than the de=
stination=20
buffer.

When the vulnerable function is called with externally supplied data, i=
t may be=20
possible to corrupt sensitive regions of data.  This may potentially oc=
cur if a=20
message is processed with an excessively long subject.

Successful exploitation will result in code execution in the context of=
 the=20
SaveMyModem process.

10. Multiple Vendor 802.11b Authentication-Failed Denial Of Service=20
Vulnerability
BugTraq ID: 7069
Remote: Yes
Date Published: Mar 11 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7069
Summary:

A vulnerability has been reported in some operating systems that are ca=
pable of=20
handling 802.11b traffic.  This issue has been reported as affecting Li=
nux and=20
Microsoft Windows operating systems.

Some operating systems do not handle specific types of 802.11b traffic =
properly.=20
 Upon receiving maliciously crafted packets, the client driver may drop=
 all=20
active sessions and fail.  A reboot may be required to resume normal=20
functionality.

The problem is in the handling of Authentication-Failed packets.  By se=
nding a=20
Authentication-Failed packet to a host with a reason code of failed=20
authentication that has previously occurred, a host may react unpredict=
ably,=20
dropping all sessions, and the client software potentially failing.  It=
 should=20
be noted that the source and destination MAC addresses of the=20
Authentication-Failed packets are spoofed to appear as though their ori=
gin is=20
the Wireless Access Point.

The attack is typically performed by sending the packets directly to a =
802.11b=20
client.  Therefore, this type of attack will evade network intrusion de=
tection,=20
and may additionally circumvent WEP.

11. GreyMatter WebLog Remote Command Execution Vulnerability BugTraq ID=
: 7055
Remote: Yes
Date Published: Mar 10 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7055
Summary:

GreyMatter WebLog is an open source weblog software package available f=
or the=20
Unix and Linux operating systems.

A problem in the software may allow unauthorized access to systems usin=
g the=20
vulnerable software.

It has been reported that a problem in GreyMatter weblog may allow unau=
thorized=20
access to systems.  Due to improper sanitization of untrusted input, it=
 may be=20
possible for a remote user to execute commands on the local system.

The problem is in the handling of user comments by the weblog software.=
 Due to=20
improper sanitization of the input passed through the weblog comments f=
ields, an=20
attacker could potentially insert specially crafted commands such as <?=
php=20
system(echo($cmd)) ?>.  This would in turn result in the execution of t=
hese=20
commands with the privileges of the web server process.

12. Man Program Unsafe Return Value Command Execution Vulnerability Bug=
Traq ID:=20
7066
Remote: No
Date Published: Mar 11 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7066
Summary:

Man is a freely available, open source manual page program.  It is avai=
lable=20
mainly for Linux operating systems, though it can be used on other UNIX=
=20
operating system variants.

A problem with the program may make it possible to launch local attacks=
 on users=20
through malicious man pages.

It has been reported that the man program does not properly handle some=
 types of=20
input.  When a man page is processed that could pose a potential securi=
ty risk,=20
the program reacts in a way that may open a window of opportunity for a=
n=20
attacker to execute arbitrary commands.

The problem is in the value returned by the man program when a potentia=
lly=20
dangerous man page is processed.  The man program returns the string 'u=
nsafe'=20
which is in turn passed to a system() call.  If a program located in th=
e user's=20
path was named 'unsafe' the program would be executed with the privileg=
es of the=20
man program user.

13. Opera Long Filename Download Buffer Overrun Vulnerability BugTraq I=
D: 7056
Remote: Yes
Date Published: Mar 10 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7056
Summary:

Opera is a web browser available for a number of platforms, including M=
icrosoft=20
Windows, Linux and Unix variants and Apple MacOS.

A vulnerability has been discovered in various versions of Opera on the=
=20
Microsoft Windows platform.

When specific types of files are downloaded by Opera, the transfer is d=
isplayed=20
within a 'Download Dialog'. Due to insufficient bounds checking when pr=
ocessing=20
the requested filename, it may be possible for memory to be corrupted.

Specifically, when a filename is to be displayed within the 'Download D=
ialog'=20
the type of file must be verified. When this occurs, the filename in qu=
estion is=20
copied into a static buffer on the stack.

By hosting a downloadable file containing a name of excessive length, i=
t may be=20
possible for an attacker to overwrite sensitive memory locations within=
 Opera.=20
Successful exploitation of this issue would result in the execution of =
arbitrary=20
attacker-supplied commands.

It should be noted that this issue affects Opera versions 6 and 7 on th=
e=20
Microsoft Windows platform.

14. Qpopper Remote Memory Corruption Vulnerability BugTraq ID: 7058
Remote: Yes
Date Published: Mar 10 2003 12:00AM Relevant URL:
http://www.securityfocus.com/bid/7058
Summary:

Qpopper is a POP3 mail server available for Linux and Unix based system=
s. A=20
vulnerability has been discovered when calling the 'mdef' command. The =
issue=20
presents itself due to the incorrect assumption of the Qvsnprintf() fun=
ction.=20
The function is meant to be a replacement for the C function vsnprintf(=
) but,=20
unlike the latter function, Qvsnprintf() fails to NULL terminate buffer=
s.

A memory corruption vulnerability has been discovered in Qpopper when p=
rocessing=20
a malicious 'mdef' command, as a result of the lack of NULL termination=
 by=20
Qvsnprintf(). The vulnerability specifically occurs in the pop_msg() fu=
nction=20
when filling the 'message' buffer with a user-supplied macro name. The =
pop_msg()=20
function incorrectly assumes that the 'message' buffer will be null ter=
minated=20
after being filled via the Qvsnprintf() function. A CRLF sequence and n=
ull=20
terminator (CRLF+N) is later appended to the data which may overwrite m=
emory at=20
a location adjacent to the buffer.

By exploiting this to overwrite the LSB of a saved frame pointer, it is=
 possible=20
to influence the program in such a way that attacker-supplied instructi=
ons can=20
be executed.

This vulnerability affects Qpopper versions 4.0.4 and earlier. It shoul=
d be=20
noted that the exploitability of this issue is highly dependant on the =
memory=20
layout, which will likely be influenced by compiler optimization.


III. LINUX FOCUS LIST SUMMARY
----------------------------
1. Port 113 security (Thread)
Relevant URL:

http://online.securityfocus.com/archive/91/314827

2. Traffic Shaping. (Thread)
Relevant URL:

http://online.securityfocus.com/archive/91/314730

3. SecurityFocus Article Announcement (Thread) Relevant URL:

http://online.securityfocus.com/archive/91/314566


IV. NEW PRODUCTS FOR LINUX PLATFORMS
------------------------------------
1. EverLink SRAC Gateway
by Anyware Technology
Platforms: N/A
Relevant URL:
http://www.anywareusa.com/products/srac_gateway.htm
Summary:

EverLink SRAC Gateway is a high performance network appliance that inte=
grates=20
many security technologies into a simple network device. Operating at t=
he=20
application layer, the Gateway allows enterprises to build fully secure=
d Virtual=20
Private Network as easy as PLUG AND PLAY. By incorporating all authenti=
cation=20
methods, including PKI and dynamic password, the Gateway provides the m=
ost=20
thorough check of a user's identity. For those who have installed VPNs,=
 the=20
Gateway provides enterprises with significant added functionalities and=
 security=20
features to instantly accommodate mobile users anywhere in the world.

2. iChain
by Novell
Platforms: N/A
Relevant URL:
http://www.novell.com/products/ichain/
Summary:

iChain provides identity-based web security services that control acces=
s to=20
application and network resources across technical and organizational=20
boundaries, as one Net.

3. NetOp Remote Control
by CrossTec Corporation
Platforms: DOS, Linux, OS/2, Windows 2000, Windows 95/98, Windows CE, W=
indows=20
NT, Windows XP
Relevant URL:
http://www.crossteccorp.com/netopremote/index.html
Summary:

With New NetOp Remote Control v7.5 you can easily reach any Windows, Li=
nux, Sun=20
Solaris or legacy OS/2 and DOS PC from your desktop or even via any Int=
ernet=20
connected PC via our new IE browser Guest. View the remote PC's screen,=
 control=20
its keyboard and mouse, synchronize files, inventory its hardware and s=
oftware,=20
launch applications or chat with someone at the remote PC -- just as if=
 you were=20
seated at that computer.


V.  NEW TOOLS FOR LINUX PLATFORMS
---------------------------------
eXtended Allow - Deny list for PAM v0.4 by Adrian Ber beradrian@yahoo.c=
om
Relevant URL:
http://www.geocities.com/beradrian/soft/xad/index.html
Platforms: Linux, POSIX
Summary:

XAD is a very easy to configure PAM module. Through a very easy languag=
e you can=20
allow/deny access to users.

2. C-Kermit v8.0.208
by Frank da Cruz
Relevant URL:
http://www.columbia.edu/kermit/ckermit.html
Platforms: AIX, FreeBSD, HP-UX, Linux, MacOS, NetBSD, OpenBSD, SCO, Sol=
aris,=20
SunOS
Summary:

C-Kermit is a combined serial and network communication software packag=
e=20
offering a consistent, medium-independent, cross-platform approach to c=
onnection=20
establishment, terminal sessions, file transfer, character-set translat=
ion,=20
numeric and alphanumeric paging, and automation of communication tasks.=
 Recent=20
versions include FTP and HTTP clients as well as an SSH interface, all =
of which=20
can be scripted and aware of character-sets. It supports built-in secur=
ity=20
methods, including Kerberos IV, Kerberos V, SSL/TLS, and SRP, FTP proto=
col=20
features such as MLSD, and source-code parity with Kermit 95 2.1 for Wi=
ndows and=20
OS/2.

3. trafcalc v1.0
by cyberny
Relevant URL:
http://trafcalc.sourceforge.net/
Platforms: Linux, POSIX
Summary:

Trafcalc calculates the size of the TCP-payload on a system via packet =
capturing=20
and connection tracking at the user level instead of the IP level.


Posted at TCOB1 - Must not be crossposted to any other echo or network =
without=20
the prior permission of Sean Rima


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
