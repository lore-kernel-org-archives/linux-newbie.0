From: Ray Olszewski <ray@comarre.com>
Subject: Re: Unencrypted data over network?
Date: Fri, 07 Feb 2003 09:13:40 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030207085353.024fc4a0@celine>
References: <03020711533101.22365@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030207162041.51458.qmail@web13401.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>, linux <linux-newbie@vger.kernel.org>

At 08:20 AM 2/7/03 -0800, Abhijit Vijay wrote:
>Hi Guys,
>
>I need to run graphics windows remotely from a linux
>machine on a windows machine. I have been using XWin32
>and "setenv DISPLAY ${REMOTEHOST}:0.0" in my login
>shell after logging in through Secure Shell.
>
>My question is this: I need to do remote processing of
>images (on the linux machine) and show them up on my
>windows machine. However, it takes several seconds to
>pull up an image through the windows machine while it
>takes almost neglible time to do the same on the linux
>machine direclty (which is on the same high speed
>network on a different floor as the windows machine)
>Is this because of the encryption done on the data as
>it is sent over the network? Is there a way to specify
>that the graphics data be sent unencrypted?


I don't know of a way to have a "mixed" connection to a remote X server -- 
that is, one partly tunneled through ssh and partly unencrypted. Perhaps 
someone else does, though, so wait and see what others say on that. But if 
I infer correctly that the app that is editing the images runs on the Linux 
server (and the Windows machine just runs as an X terminal), then there is 
no real distinction between "the graphics data" and the windows presented 
by the Linux application that uses the remore display, so I would not be 
optimistic about finding a solution.

As to the more basic question -- is the encryption what is causing the 
delay -- well really, who can say? In general, network connections are 
slower then local ones for any number of reasons ...

         network speed itself (does "high speed" mean 100 Mbps?),
         network congestion (how much other traffic is on the hub, or the 
switch's backplane?),
         network topology (you mention different floors; are there routers 
or multiple hubs/switches between the two hosts, or are both connected to 
the same hub or switch?),
         hardware efficiency (NICs rarely deliver their nominal speed; my 
experience is that 100 Mbps NICs actually top out at about 65 Mbps),
         X server efficiency (the one at the Linux end may have better 
access to its display hardware than the one on the Windows host, for example),
         loads on the hosts at both ends of the connection (how fast are 
the host CPUs? how much real RAM is available? what else are they doing? 
what version of Windows, for that matter?),
         the actual traffic involved (how big are the images?),
         the software involved,
         and, of course, the load imposed by encrypting and decrypting the 
traffic.

The easiest way to find out how much the encryption contributes to the 
delays is to test it yourself, by running an unencrypted connection as a 
one-time test. There are really too many unknowns here for anyone to give 
you a meaningful assessment otherwise.



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
