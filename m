From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: LP - Cups - Samba - Print Command
Date: Tue, 1 Oct 2002 11:15:13 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000101c2695d$57b09320$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have an Epson 880 on my windows workstation. I have this shared
through cups using samba. This configuration works fine. I can print to
the printer without any issues.

The problem is that when I lp something the left margin is always cuts
off the first character.

Now I have found a work around using -o page-left=25.
Example
----
man tar | lp -dpkraus -o page-left=25

This corrects the issue. However I would like it to do this
automatically.

I have tried to edit the smb.conf file with the print command but it
does not seem to change anything. Here is my smb.conf

*On a side note why can't I open Linux conf files with notepad? There
are strange characters. I have to open it with WordPad. I can not save
or edit using either notepad or WordPad because they seem to add strange
characters also. Just curious.*

------
# Samba config file created using SWAT
# from Redhat-Fax (127.0.0.1)
# Date: 2002/10/01 10:53:56

# Global parameters
[global]
	workgroup = PELNET
	netbios name = REDHAT-FAX
	netbios aliases = Redhat 7.3 Fax System
	server string = Samba Server
	obey pam restrictions = Yes
	pam password change = Yes
	passwd program = /usr/bin/passwd %u
	passwd chat = *New*password* %n\n *Retype*new*password* %n\n
*passwd:*all*authentication*tokens*updated*successfully*
	unix password sync = Yes
	log file = /var/log/samba/%m.log
	max log size = 0
	socket options = TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192
	dns proxy = No
	printing = cups
	print command = lp -P %p -o page-left=25 %s -r

[homes]
	comment = Home Directories
	valid users = %S
	read only = No
	create mask = 0664
	directory mask = 0775
	browseable = No

[printers]
	comment = All Printers
	path = /var/spool/samba
	printable = Yes
	browseable = No

[root]
	comment = Root System
	path = /
	valid users = @root,pdk
	admin users = pdk

[pkraus]
	path = /var/spool/samba
	read only = No
	printable = Yes
	print command = lpr -r -P%p %s -o left-page=25
	printer name = pkraus
	oplocks = No


Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
