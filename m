From: Ray Olszewski <ray@comarre.com>
Subject: Re: ntp - how?
Date: Fri, 02 Aug 2002 14:42:28 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020802141853.021cf110@celine>
References: <3D36DDA3.FA0F073C@gmx.net>
 <02072506225706.04469@unix.pa3gcu>
 <3D406BBB.E208E07B@gelm.net>
 <02072606105100.00370@unix.pa3gcu>
 <5.1.0.14.1.20020726164536.02296360@celine>
 <5.1.0.14.1.20020728140342.0228b3c0@celine>
 <3D4498AF.42DC0D8C@gelm.net>
 <3D45AD28.7623B094@gelm.net>
 <5.1.0.14.1.20020802092710.021c8d50@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D4AEB59.DDC233EE@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

At 04:28 PM 8/2/02 -0400, Chuck Gelm wrote:
>Hi, Ray:
>Thanks.
>
>Ooopps, I reported earlier that the kernel was 2.4.18.
>
>It is kernel 2.2.19 from Slackware8.0 on a very old Compaq
>80486dx33, 32 Megabytes of RAM, 40 Gigabyte hd,
>internet access is via aDSL modem, eth1 & eth2 are 3c509s.
>pppoe is Roaring Penguin v3.5 with firewall option #2,
>Masquerade.

I'm not sure when "earlier" was, but it seems like a good excuse to mention 
that I, and I think many of the others here who try to answer questions, 
see an awful lot of questions (in my case, on this and about a half dozen 
other lists). I don't do well at recalling from prior threads what a 
particular user's setup is. So, at least for me, it's useful to include 
this sort of summary of the basics whenever you ask a new question. (And on 
that score, this was a great summary -- concise and decently complete as 
regards the problem at hand.)

As to your actual problem ...
[...]
> >          3. your system is behind a firewall that interferes with access
> > to the ntp port
>
>  The system is the 'firewall'.  Doh! Do I need to allow a port
>  less than 1024?  I am running the default rule set of ipchains
>  that RoaringPenguin sets, 'ipchains -L':
>
>Chain input (policy ACCEPT):
>target  prot opt     source   destination ports
>DENY    udp  ----l-  anywhere anywhere    any ->   0:1023
>DENY    tcp  ----l-  anywhere anywhere    any ->   0:1023
>DENY    tcp  -y--l-  anywhere anywhere    any ->   any
>DENY    icmp ----l-  anywhere anywhere    echo-request
>Chain forward (policy DENY):
>target  prot opt     source   destination  ports
>MASQ    all  ------  anywhere anywhere     n/a
>Chain output (policy ACCEPT):

It is better to list your rulesets with "ipchains -nvL", since that format 
includes information that the simple -L version omits (like interface 
designations). Due to the omissions, I can't say for sure if this ruleset 
is interfering with NTP connections or not. Assuming they do not also 
interfere with, for example, your ability to make http, DNS, and SMTP 
connections to Internet servers, they probably apply only to the ppp0 
interface.

Would they, if applied only to ppp0, interfere with NTP connections? Not 
sure, but it appears so. ntpd listens on the NTP port, port 123 ... and 
from a quick test, it **appears** that NTP queries made by ntpdate also 
come *from* port 123. So the queries would go out just fine, but the 
replies would be DENY'd.

So it is a good guess that firewalling is your problem. To test this guess, 
add this ipchains rule

ipchains -I 1 input -d 0.0.0.0 123 -j ACCEPT

(do check the syntax; I just wrote that from memory ... and you will want a 
somewhat better rule for a final solution, if the test proves that this is 
the problem).

Or check your logs for reports of DENY'd packets from the ntp servers you 
tried, since your DENY rules do specify logging.


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
