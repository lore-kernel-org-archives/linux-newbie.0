From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Can't Mail with Exmh
Date: Wed, 14 Jan 2004 14:03:23 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040114190323.GA552@lnx2.w8mch.ampr.org>
References: <200401140701.i0E71nh01583@skyinet.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200401140701.i0E71nh01583@skyinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Greetings: Sendmail 8.12.X is a new ball game due to upgrading
security, I read, not running suid root.. I found a few things so far
the worst being the fact that 'mailq' couldn't find the queued mail
because it was in /var/spool/clientmqueue instead of mqueue.. I,
also, had to change sendmail.cf to reflect this and it now works
except for my 'masquerading' problem, which is not supported in
8.12.X... Since I'm running Slackware 9.0 or 9.1 exclusively I
thought the problem was with Sendmail. Apparently it's with both it
AND the distribution at odds with each other, whatever..

Never a dull moment.. I can't seem to find much, either, about what
the new user 'smmsp' is all about, and the fact that Sendmail 8.12.X
now uses two .cf files instead of the former one.. Cheers,


    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam

On 01-14, Peter wrote:
> >  >  Peter said:
> >  > > In RedHat9.0 after I changed from kernel 2.4.20.20-9 to kernel
> >  >  2.4.22 I can't send mail any longer with exmh or with pine. 
> 
> To which I got only one reply.
> 
> >  > 
> >  > I finally solved the problem. I made a "make upgrade" with postfix
> >  > which  seems to have fixed it.
> 
> It did not solve it, it only stopped giving error messages and placed the mail 
> in the queue from which it could not be mailed.
> 
> The culprit was sendmail-8.12.8-9.90.i386.rpm. I uninstalled it and went back 
> to
> sendmail-8.11.6-27.73.i386.rpm and this mail will go out with exmh.
> 
> I started to suspect sendmail when on booting I always got the error: 
> sm-client failed, invalid option -- A.
> 
> Therefore RH9 seems to be buggy.  With the kernel 2.4.20.20-9 I can't open 
> siag office and with sendmail-8.12.8-9.90 I can't send mail. This is the Krud 
> Linux version of RH9.
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
