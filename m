From: smertz <smertens@mho.com>
Subject: samba question
Date: Fri, 08 Apr 2005 05:40:19 -0600
Message-ID: <d35qeh$i74$1@sea.gmane.org>
Reply-To: smertens@mho.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I did a install of RH ES4 a week ago and am very new to Linux. I want 
this box to be a file and print server for a home WORKGROUP, not a DOMAIN.

So first problem is I am tying to set up a printer to share with my 2 
windows XP boxes. However they can not browse to the printer or see it 
with the add printer wizard in XP. Since my DNS info comes from my ISP, 
I'm wondering what needs to be set in Globals section for domain master 
browser.  Also does the Linux box need to be part of the WORKGROUP?

Does anything have to be set up in XP for them to see this printer on 
Linux attached locally to a USB port.  I can see and print to it in 
Linux.  I know there have been volums written on Samba, but it seems to 
me sharing a printer should be simple.

I just want XP users to use their own driver and use the guest account 
for printing.  Fro win XP I can see the Linux box, but can't see the 
Printer.

My smb.conf file.

  [global]
          workgroup = MERTENS
          server string = Samba Server
          security = SHARE
          password server = None
          passdb backend = guest
          username map = /etc/samba/smbusers
          log file = /var/log/samba/%m.log
          max log size = 50
          socket options = TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192
          os level = 34
          preferred master = No
          domain master = No
          dns proxy = No
          ldap ssl = no
          idmap uid = 16766216-33123431
          idmap gid = 16766216-33123431
          cups options = raw
          load printers = yes
          printing = cups
          printcap name = cups

  [homes]
          comment = Home Directories
          read only = No
          browseable = No

  [printers]
          comment = All Printers
          path = /var/spool/samba
          printable = Yes
          browseable = No
          public = yes
          guest ok = yes
          writable = no
          printer admin = root

  [HP6110]
          comment = All Printers
          path = /var/spool/samba
          printer admin = root
          read only = No
          guest ok = Yes
          printable = Yes
          printer name = HP6110
          use client driver = Yes
          browseable = No
          oplocks = Yes

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
