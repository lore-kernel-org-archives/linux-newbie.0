From: beolach@juno.com
Subject: Re: basic networking queries
Date: Fri, 25 Jul 2003 23:15:53 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030725.161639.754.416846@webmail06.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: jamtat@mailsnare.net
Cc: linux-newbie@vger.kernel.org


I for one applaud you wanting a deeper understanding of the
underlying protocol, rather than just wanting a quick-fix.
This is one of my favorite aspects of linux; you learn so
much more about how something actually works when you set it
up, very much unlike, say, M$ Windows.

I myself don't have a very deep understanding of how DHCP
works (I have to admit, the few times I ever used it I just
went for the quick-fix), but I think I can point you to some
documentation that you might find interesting.  First off,
you should definitely read the DHCP-mini-HOWTO, available on
The Linux Documentation Project at
<http://www.tldp.org/HOWTO/DHCP/index.html>. It should also
be on your local machine in the /usr/doc/Linux-mini-HOWTOs
directory (Slackware specific). The DHCP-mini-HOWTO mostly
focuses on specific configurations, but it is still a good
read, and in its very small section on the DHCP protocol it
points us to the second document I would recommend, a DHCP
FAQ by John Wobus. But rather than the broken link in the
HOWTO, you can find the FAQ online at
<http://www.mark-itt.ru/Collection/FAQ/dhcp.faq.html>.
Lastly, if you really want to get to the low-down nitty-
gritties, read the Request For Comments (RFC) 2131 and 1541
available at <http://www.ietf.org/rfc/rfc2131.txt> and
<http://www.ietf.org/rfc/rfc1541.txt> respectively.

That's probably enough reading to last you for a while, and
after reading it all, you can be the linux-newbie list expert
on DHCP.  :)

Conway S. Smith

--- James Miller <jamtat@mailsnare.net> wrote:
> 
> Thanks for your answer, Ray.  I didn't provide much detail
> because, rather than trying to set something up specifically
> or trying to troubleshoot, I was trying to understand better
> *in theory* something about networking - namely about how DHCP
> works.  I know so little about it, in fact, that I'm not sure
> what sort of information to provide.  I do use a Slackware
> variant.  As I mentioned, I know from sources connected with
> this variant that some form of dhcp is enabled on it (dhcpd?)
> and maybe just runs as a background process.  But this is really
> already further than I want to go with this.  I'm just trying to
> better my grasp on some of the fundamentals of how dhcp works,
> what sort of info it needs/uses and the like.  One of those
> touchy-feely inquiries, you know, where you're not even sure
> which questions to ask to get started learning?  I don't know,
> maybe you already know everything about everything and don't
> find yourself in those sorts of situations.  But I sure do
> (not ashamed of admitting it, either).  Anyway, this sort of
> inquiry goes in stages for me: I start with some probings,
> which helps me get bearings and know what further to ask, where
> further to look.  At some later stage of the learning process,
> I can then formulate more specific questions related to some task.
> But I'm just not at that stage yet with DHCP.  Is a linux-newbie
> list not the place to make those sorts of inquiries?
> 
> James
> 
> PS I had some problems getting that message to the list, since
> my initial post got lost.  Maybe I didn't formulate things very
> clearly in the rewriting, with the disappointment of having lost
> what I'd earlier started.
> -
> To unsubscribe from this list: send the line "unsubscribe
> linux-newbie" in the body of a message to
> majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
