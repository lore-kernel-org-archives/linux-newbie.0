From: Ray Olszewski <ray@comarre.com>
Subject: Re: Newbie installation problem
Date: Sun, 04 Aug 2002 10:30:07 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020804101233.0211bb00@celine>
References: <5.1.0.14.1.20020802181721.02153750@celine>
 <5.1.0.14.1.20020804005505.02187b30@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001301c23bd9$848cb0b0$6401a8c0@ENRIQUE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Enrique Nieves <spanfax@charter.net>
Cc: linux-newbie@vger.kernel.org

Oh. From what you sent this time, it does look like the NIC is being 
detected, but RH cannot assign an IP address to the interface. I'm not 
entirely sure of this, though, based on the details of what you quote, namely:

>"Checking for New Hardware
>                 .
>                 .
>                 .
>Bringing up interface Eth0:
>     Determining IP information for Eth0 . . . failed
>
>[FAILED]"
>
>
>This occurs when the RH 7.3 does the initial boot up.

Several things confuse me here.

First, just a detail -- does it really say "Eth0" eather than "eth0"? If 
so, then RH is introducing unnecessary confusion into the process (since 
interface names are normally all lower case). If not, then you are not 
quoting exactly.

Second, what *immediately* precedes the failure message? Are you *sure* the 
system is still in the New Hardware phase?

Third, I had previously thought that this message was coming from a RH 
install. Now it sounds like part of the boot/init process of an installed 
RH 7.3. Could you clarify?

Fourth, what happens next? If we are talking about an installed RH, does it 
complete initialization, then give you the login: prompt (or the X 
equivalent, depending on your setup)? If it does, may we see at this point 
the output of:

         ifconfig -a
         netstat -nr
         lsmod
         lspci

Last, how do you *want* this system to get its IP address?

         Do you plan to assign a static address by hand? If so, you 
(probably) specify this by editing the file /etc/network/interfaces .

         Use a DHCP server? If so, then where on the LAN are you running 
one? The Linksys? The XP system? Do you see network traffic (in the form of 
appropriate blinking lights on the NIC and the hub) just before you get the 
failure message you quote above (if you don't, then the system isn't 
managing to connect to the LAN to look for a DHCP server).

         Those are the only real alternatives (technically there are some 
others, but no one uses them in small home setups).

At 01:08 PM 8/4/02 -0400, Enrique Nieves wrote:
[details deleted]


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
