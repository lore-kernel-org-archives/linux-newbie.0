From: Ray Olszewski <ray@comarre.com>
Subject: Re: samba question
Date: Fri, 08 Apr 2005 10:20:43 -0700
Message-ID: <5.1.0.14.1.20050408083204.03499eb0@celine>
References: <d35qeh$i74$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d35qeh$i74$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:40 AM 4/8/2005 -0600, smertz wrote:
>I did a install of RH ES4 a week ago and am very new to Linux. I want this 
>box to be a file and print server for a home WORKGROUP, not a DOMAIN.
>
>So first problem is I am tying to set up a printer to share with my 2 
>windows XP boxes. However they can not browse to the printer or see it 
>with the add printer wizard in XP. Since my DNS info comes from my ISP, 
>I'm wondering what needs to be set in Globals section for domain master 
>browser.

The only relevant thing I see missing from your setup, compared to my own 
(the host that is both the master and the print server), is

         wins support = yes

>  Also does the Linux box need to be part of the WORKGROUP?

No, if you mean the *same* WORKGROUP that the XP host is in. It needs to be 
part of *some* WORKGROUP, of course (as you already have it, below).

>Does anything have to be set up in XP for them to see this printer on 
>Linux attached locally to a USB port.  I can see and print to it in 
>Linux.  I know there have been volums written on Samba, but it seems to me 
>sharing a printer should be simple.

It is, at least to Win2K hosts (I don't have XP running here yet). If the 
problem is on the XP side, a Linux list probably is not the best place to 
get detailed advice.

>I just want XP users to use their own driver and use the guest account for 
>printing.

What guest account? Your config file doesn't set one up. Mine has (in global)

         guest account = samba

>  Fro win XP I can see the Linux box, but can't see the Printer.

What does "see" mean in the phrase "can see the Linux box"? Do you mean it 
shows up in My Network Places and in Settings->Printers->Add Printer (but 
without the actual printer showing)? If not, please clarify.

I assume "can't see the Printer" means it does not show up in 
Settings->Printers->Add Printer (or however XP does it; this is the Win2K 
sequence). Again, if I've misread you, please clarify.

>My smb.conf file.
>
>  [global]
>          workgroup = MERTENS
>          server string = Samba Server
>          security = SHARE
>          password server = None
>          passdb backend = guest
>          username map = /etc/samba/smbusers
>          log file = /var/log/samba/%m.log
>          max log size = 50
>          socket options = TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192
>          os level = 34
>          preferred master = No
>          domain master = No

I'm not sure about these two. My own file doesn't set these values either 
way. I *think* that just affects DNS, not WINS, resolution, but I'm not 
certain of this.

>          dns proxy = No
>          ldap ssl = no
>          idmap uid = 16766216-33123431
>          idmap gid = 16766216-33123431
>          cups options = raw
>          load printers = yes
>          printing = cups
>          printcap name = cups

I haven't switched to CUPS here, so I can't confirm that that part is 
right. Aside from that, and my comments above, this part looks fine.

>  [homes]
>          comment = Home Directories
>          read only = No
>          browseable = No

This part is irrelevent to printer issues.

>  [printers]
>          comment = All Printers
>          path = /var/spool/samba
>          printable = Yes
>          browseable = No
>          public = yes
>          guest ok = yes
>          writable = no
>          printer admin = root
>
>  [HP6110]
>          comment = All Printers
>          path = /var/spool/samba
>          printer admin = root
>          read only = No
>          guest ok = Yes
>          printable = Yes
>          printer name = HP6110
>          use client driver = Yes
>          browseable = No
>          oplocks = Yes


I'm not clear on why you have 2 entries for what appears to be the same 
printer (perhaps the "use client driver" line?). Other than that, this part 
looks fine.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
