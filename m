From: Ray Olszewski <ray@comarre.com>
Subject: Re: FW: Super Newbie Questions Please provide Linux/windows
  translations :)
Date: Tue, 17 Sep 2002 13:28:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020917131025.026cf820@celine>
References: <003b01c25e83$248d1e30$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003b01c25e83$248d1e30$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

When asking even basic questions like these, it is helpful to mention which 
Linux distro you are using. Since you didn't, I will try to give you 
generic Linux responses. But the major distros have their own config 
sustems, and their own peculiar kinks, so you might find some of this 
either slightly off the mark or less helpful than it might be if we knew more.

At 03:48 PM 9/17/02 -0400, Paul Kraus wrote:
>How can I see my servers ip address. (it is handed out dhcp). Windows is
>ipconfig /all. Linux is.......

"ifconfig" is the usual command for this.

Without arguments, it reports on all configured interfaces. With the -a 
argument, it reports on all interfaces. For more, try "man ifconfig".

Some distros use the command "ip" instead. I believe "ip link" is the way 
to get interface info.

>Why is the system name localhost.localhost.

During installation, distros assign a default hostname and a default domain 
name. Some ask you if you want to change it; ithers don't.

>Why the dot abbreviated
>name.

Not sure what you mean by "dot abbreviated". I don't see any abbreviations 
in "localhost.localhost".

Actually, I would have expected it to read "localhost.localdomain", with 
the first part the hostname, the second part the domain (network) name.

>Can I change this?

Depends on what exactly you want to change. On the system itself, this name 
is in the file /etc/hostname. Possibly you can just edit this, but that 
might not survive a reboot, since on some distros, this file gets 
overrwritten by one of the boot/init scripts.

>How can I reference it. For instance from a M$
>workstation if I wanted to ping it how could I ping without having to
>enter the IP.

In this context, "reference" is a meaningless word. So I'm only replying to 
your "for instance".

It depends on how the "M$" workstation resolves names. Either put it in the 
Windows workstations hosts file (which translates between hostnames and IP 
addresses locally) or add it to the appropriate file on your DNS server. 
Without knowing more about your LAN (or your Internet conenction, if you 
are talking about pinging from teh Internet), I can't be more specific.


>Samba lets me set a server name up but is this just for samba or can I
>then reference this same name for telnet, ftp, mail settings????

I'm not a big Samba user, but I believe this name entry is just for Samba. 
For standard Internet services, like the list you gave, you need to provide 
a namaddress pairing that the resolver on any host you want to "reference" 
the name from can access. This means either that system's equivalent of the 
/etc/hosts file ("man hosts" will explain this file on Linux systems) or an 
entry on whatever DNS server the system uses to resolve FQNs 
[Fully-Qualified Names, like the parts of normal e-mail addresses after the 
@ sign).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
