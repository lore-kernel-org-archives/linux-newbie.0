From: Ray Olszewski <ray@comarre.com>
Subject: Re: Fwd: W$ 2K...
Date: Mon, 28 Jul 2003 12:15:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030728115610.01ee9cd8@celine>
References: <5.1.0.14.1.20030728064145.01ee9e20@celine>
 <5.1.0.14.1.20030728064145.01ee9e20@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307282028.39516.James.Hatridge@epost.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Newbie <linux-newbie@vger.kernel.org>

At 08:28 PM 7/28/2003 +0200, James Hatridge wrote:
[...]
> > >But when I ping from Opus to
> > >Penguin, Opus gets nothing, but Penguin give an error.
> >
> > What is the error (the actual message, word for word) and where goes
>
>I don't have the system up at the moment, but the W$ error was something 
>about
>an IP and not allowed etc.
>
> > Penguin "give" it?

First, you only answered half the question. Since this is an attempt to 
ping the Win2K host from the Linux host, there is no *obvious* place for 
the Win2K machine to display an error message. So, once gain, please 
mention *where* "Penguin gives an error" (since, in part of the message 
omitted here, you say Penguin is the Win2K host).

Second, as you surely knew without my saying, "something about an IP and 
not allowed etc." is not much as error reports go. It does make me wonder 
if you have some firewalling installed in the Win2K system that blocks 
Opus's IP address. But that is fishing wildly.

So when you have the Win2K system up, try again and post exact answers to 
the "what" and "where" of this error message. Since (you say) Penguin *can* 
ping Opus successfully, basic connectivity is OK, so we need to look for a 
more subtle problem.

Also, provide the networking basics:

         from Opus, output of "ifconfig" (or "ip -s link show") and 
"netstat -nr"
         from Penguin, output (in a DOS box) of "ipconfig" and "route print"

Now, the usual way to specify networking information on Win2K hosts in in
         Start->Settings->Control Panel->Network and Dial-Up->
                 Local Area Connection->Properties->
                 Internet Protocol (TCP/IP)->Properties

If you did not do it that way, tell us how you did it. In either case, did 
you assign an address and related info statically, or did you tell the 
system to use a DHCP server (if you have one on your LAN)? Same questions 
for DNS.

Finally, since you also tell us that there are "5 other Linux systems up 
and running on
this net and one DOS system" ... do pings from these other hosts to the 
WIn2K machine generate the same error message?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
