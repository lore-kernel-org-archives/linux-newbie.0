From: sadunn <sadunn@blue.weeg.uiowa.edu>
Subject: RE: Ethernet Questions
Date: Thu, 2 May 2002 12:05:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CD790EA@itsnt5.its.uiowa.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>, Ray Olszewski <ray@comarre.com>

>===== Original Message From Ray Olszewski <ray@comarre.com> =====
>OK. Networking 101. Your system needs a valid IP address, a routing table
>that includes a route to a working gateway to the Internet, and access to
>DNS servers that can resolve names for you. (It may need other things too,
>but this is the base.) To let us help you figure out what it wrong, report
>the following (from your machine, AFTER it has received its DHCP lease):

I don't think it has received its DHCP lease, since the netstat -nr command 
returned a destination to 127.0.0.0, and none of the other data seems to make 
any sense whatsoever.

>
>        1. The complete, exact output of "ifconfig -a"

bash: ifconfig: command not found

>        2. The complete, exact output of  "netstat -nr"

Kernel IP routing table
Destination  Gateway   Genmask    Flags   Mss  Window   irtt   Iface
127.0.0.0    0.0.0.0   255.0.0.0    u      0    0         0      lo

>        3. Try to ping the IP address reported in step 1.
>                Tell us either that the ping works or EXACTLY
>                how it fails ("-1" isn't enough; we need to see
>                the text that precedes the -1).

I didn't get an address to ping because the command failed.

>        4. Try to ping the gateway address reported in step 2 --
>                the routing table (assuming there is one).

I didn't think 0.0.0.0 was a vaild address to ping, so I didn't. Perhaps I am 
mistaken?

>        5. The contents of the file /etc/resolv.conf .

search localdomain

>        6. The results of pinging the first address listed in
>                /etc/resolv.conf .

I had no address to ping

>You may also have a hardware problem. I don't want to take the time to write
>out those tests right now; if the results of this first set suggest a
>hardware problem, I'll return to it. Oh, one more thing ...
>
>        7. The output of "uname -a"

Linux localhost 2.2.14-15mdk #1 Tue Jan 4 22:24:20 CET 2000 i686 unknown

>In responding, please don't paraphrase or summarize the results. From what
>you have written,I'd say you don't know enough to decide what is and isn't
>important in the output. Provide the details, though, and I (or someone else
>here) can probably help you.
>
>At 10:22 AM 5/2/02 -0500, sadunn wrote:
>>(I initially posted this to comp.os.linux.help, but none of the advice I
>>received was that helpful. Regardles, I am going to post the replies I
>>received, as well as my replies to them after this message)
>>
>>Hello. I am new to Linux, although I purchased Mandrake 7.0 quite a
>>while ago. I recently began to desire to know how to operate Linux
>>because I began to legitimately want to know about computers, as
>>opposed to being a beginning programmer that liked to play around a
>>little on them. However, I am unable to connect to the Internet on my
>>terminal. I used to Lothar utility to detect my ethernet card, and I
>>inputed all the values(Adapter Address, IP, Subnet mask, and Default
>>Gateway) into the Network configuration available through DrakConfig.
>>I got this data from the Winipcfg program in Win98. These were not
>>enough. I went to the Linux ethernet HOW-TO, but none of the
>>information  there was on software setup, but it directed me to the
>>networking HOW-TO. That, as well, failed to provide me with the
>>information that I needed. So then I went to my university Information
>>Technology Services(ITS) office, but they told me that they couldn't
>>give me any technical support on Linux directly(they appear to have
>>some sort of deal with Gateway, Macintosh, and Windows, but not
>>Linux-oriented companies), but they did have a small webpage they
>>directed me to. I went there, and it was a meager collection of links.
>>Through these links I found this newsgroup. Please, I really want to
>>get my ethernet running as soon as possible so I can update my kernel
>>and OS and begin to learn how Linux really works. Whatever other
>>information you need I will try my very best to provide. Thanks!
>>
>>Response one(by "John"):
>>
>>You also need your DNS servers' IP addresses, I didn't see that you
>>mentioned this. Without them you can access remote servers only by
>>number, not name. Without DNS, you cannot resolve anything and any
>>attempts to connect to a web site will fail (unless you use the IP
>>address, which is unlikely)
>>
>>Can you ping "localhost" or "127.0.0.1"? How about your "real" IP? For
>>example (at a command prompt):
>>
>>ping localhost
>>ping 127.0.0.1
>>ping 12.34.56.78   <--- your real IP here
>>
>>Response by "Alex" to response one:
>>
>>Try to see if your ISP (or wherever you get your Net feed from) uses
>>DHCP. This means Dynamic Host Configuration Protocol, and if properly
>>set up will automatically assign you your own IP adress and DNS server
>>addresses. The software that does this undex Linux is either dhcpcd or
>>pump (I think there are perhaps others I have seen). If you use this,
>>you do not need to manually configure your internet connection.
>>
>>My two responses(One to each person that tried to help me):
>>
>>My net feed does use dynamic IP's. In my settings, I can select DHCP,
>>which was unknown to me before this message. So, after reading this, I
>>selected it. I'm not sure if it helped. It didn't do anything with my
>>DNS that I can see, and my error message when I try to access a
>>webpage still says that it is unable to resolve a name server.
>>
>>I can ping localhost and 127.0.0.1, but my "real" IP returned a -1
>>result. I am almost certain now, after some searching around, that it
>>is my DNS that is to blame. The error message I get when I try to
>>access a webpage tells me that it cannot resolve the name server,
>>which seems to be in line with the DNS advice you gave me. I think
>>that my IP is dynamic, not static, so I'm unable to ping the same one
>>twice. Also, reading through some more help documentation, I've
>>discovered that there is supposed to be a quick network setup wizard,
>>but it isn't there.
>>
>>If anyone on this list can help me, I'd be very happy, indeed. Thanks!
>
>
>
>--
>------------------------------------"Never tell me the odds!"---
>Ray Olszewski                                        -- Han Solo
>Palo Alto, CA           	 	         ray@comarre.com
>----------------------------------------------------------------


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
