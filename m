From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Samba, Redhat 7.3, Windows xp - File Server woes
Date: Tue, 14 Jan 2003 16:59:18 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000e01c2bc18$2fb78af0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_000F_01C2BBEE.46E182F0"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_000F_01C2BBEE.46E182F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just replaced one of our windows file servers with a redhat 7.3 samba
server.
I have the g (/home/advserver/g) share on the redhat box mapped to g (go
figure) on to xp pro workstations.
The map drive is being created on startup with this command. (both
workstations use same login information to the share)
	net use g: //server/g /USER:advserver /PERSISTENT:YES advserver
(this is on the xp pro workstations)

The server is used primarily for adobe indesign.
If indesign crashes that workstation can no longer open any indesign
files. It gets permission errors. However it can open any other file
type on the file server.

I can reboot a billion times and I will continue to get the same error. 
"You do not have correct permissions to open this or this file is
already open" 
	* Note that this will appear for any indesign file not just the
one that was open when the crash occurred)

To rectify I can change the net use command  to this....
	net use g: //server/g /USER:root /PERSISTENT:YES password  (no
my root password is not password)
Open up an indesign file no problem.
disconnect the drive and reconnect with the original net use command and
everything works like a champ until the next crash.

in my attempts to troubleshoot I have set all files under g to
advserver:advserver with 777 permissions.
In case it helps there where no issues with the original file server.

I want to think its an indesign issues since its only .indd files that
have the problem.
However my workaround of logging into the share under root, logging out,
logging back in under advserver again makes me think that is a problem
with smb.conf. Any and all input is always appreciated.


relevant smb.conf
-----------------
[global]
        workgroup = PELNET
        netbios name = ADVSERVER
        server string = PEL File and Backup Server
        security = SHARE
        log file = /var/log/samba/log.%m
        max log size = 50
        socket options = TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192
        preferred master = No
        local master = No
        domain master = No
        dns proxy = No

[g]
        comment = Advertising File Server
        path = /home/advserver/g
        valid users = advserver,root,@adv
        admin users = advserver,root,@adv
        read only = No
        create mask = 0777
        guest ok = Yes

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

------=_NextPart_000_000F_01C2BBEE.46E182F0
Content-Type: text/x-vcard;
	name="Paul Kraus (pkraus@pelsupply.com).vcf"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="Paul Kraus (pkraus@pelsupply.com).vcf"

BEGIN:VCARD
VERSION:2.1
N:Kraus;Paul
FN:Paul Kraus (pkraus@pelsupply.com)
ORG:PEL Supply Company
TITLE:Network Administrator
TEL;WORK;VOICE:(216) 267-5775
TEL;CELL;VOICE:(216) 410-5526
TEL;WORK;FAX:(216) 267-6176
ADR;WORK:;;4666 Manufacturing Road;Cleveland;Ohio;44135;United States of =
America
LABEL;WORK;ENCODING=3DQUOTED-PRINTABLE:4666 Manufacturing =
Road=3D0D=3D0ACleveland, Ohio 44135=3D0D=3D0AUnited States of Ame=3D
rica
ADR;HOME:;;;;;;United States
LABEL;HOME:United States
URL;WORK:http://www.pelsupply.com
EMAIL;PREF;INTERNET:pkraus@pelsupply.com
REV:20020416T182124Z
END:VCARD

------=_NextPart_000_000F_01C2BBEE.46E182F0--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
