From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Suggestions on Backups
Date: Thu, 3 Oct 2002 08:33:24 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001501c26ad9$11865920$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

There are many different ways to approach backup schemes. I want to put
in a 120gb Hard Drive in my Linux Server and then use it as a backup
server. I have about 15 various windows workstations that I want to be
able to backup there Documents and mail folders (mostly windows 98
machines with a handful of windows XP Pro machines). I also have 1 XP
Pro machines that has 30gb of data that I want to  have an exact mirror
of on my Linux machine. This way if something goes wrong or is missing I
will have an immediate restore with out any waiting at all the mirror
only needs to be made current once a day. I also will have 1 Unix Server
that I will need a backup of. With the UNIX machine it is absolutely
necessary for me to have the backups maintain permissions and
ownerships. I am not sure about the space on the UNIX machine. It is
given in blocks and I don't really understand how blocks translate into
MB's if someone could explain I would be most appreciative. 

df from OpenServer Machine
--------------------------
/         (/dev/root        ): 38308358 blocks  8622446 i-nodes
/stand    (/dev/boot        ):     9352 blocks     3824 i-nodes

I realize that there are many ways I could do this. So I am not asking
for step by step instructions. I am just wondering what programs you
might use if you needed similar backups. How would some of you veteran
Linux guys go about this problem.

I am using my Linux server as a Hylafax Fax server. I want to also use
it as the backup server. I also intend to use it as a mail server. I
want it to attach to my ISP (not on demand it is a constant DSL
connection) and retrieve all of my companies email. I then want to be
able to have my workstations attach to the server via network or remote
dial up and get there mail via IMAP. I am not asking for help on this
(yet) but I thought I would let you know what I want the server to be
able to do. So my second question is should I get a second server or can
this one machine handle all of this.

Server Information / User Base
------------------------------
This server will only be backing up / email for 15-20 people.
OS				: 	RedHat 7.3 / 2.4.18-3
CPU				:	Intel Pent III 1133MHz
MEM				:	256 Mb


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
