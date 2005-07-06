From: Peter <heisspf@skyinet.net>
Subject: Re: What happened to "From "????
Date: Wed, 6 Jul 2005 15:57:32 +0800
Message-ID: <20050706155732.4e735cb1@localhost>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org>
	<200507050039.j650dsDq000725@meridian.ph>
	<20050705125308.GB1109@lnx2.w8mch.ampr.org>
Reply-To: heispf@skyinet.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050705125308.GB1109@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org


> On 07-05, Peter wrote:
> > Hi,
> > 
> > I am using slack 10.1, kernel 2.4.29, sendmail-8.13.3 and getmail 4.2.5
and 
> > all the mail has the From: ,however, none has From_ . In fact I have never

> > seen that.

On Tue, 5 Jul 2005 08:53:08 -0400
Hal MacArgle <haltec@kvinet.com> wrote:

 
> 	Greetings again Peter and thanks much for the input..
> 
> 	I have additional suggestions from Ray that I'll respond to
> but since you're using a similar lash up I have some more queries for
> you if OK:
> 
> 	Of course the Unix From_, as the first string in every
> message, has been around for more than the 15 years I've been running
> Unix.. It is the way the messages are kept separate in the one file
> that contains all of them; heretofore, usually,
> /var/spool/mail/$LOGIN.. That was my first head thumper; the change
> to the first string being From:...
> 
> 	What mailer, MUA, are you using?? I use either Mutt or MailX,
> now called 'Nail' for some reason, but still invoked with the symlink
> 'mail'... During all this I tried Pine with the same problem so I
> removed it..
> 
> 	Where do your "From:" messages go? In /var/spool/mail/$LOGIN
> or to another directory/folder in userspace?? As I understand it;
> QMail type mail stores each message individually rather than in one,
> could be large, file at /var/spool/mail....
> 
> 	My original problem came to light on the machine that didn't
> have any version of Sendmail installed because, IIRC, Getmail doesn't
> need Sendmail or Procmail to deliver messages, like Fetchmail, etc..
> 
> 	One final query: Can you invoke: env <return> in any of your
> userspace or even root and tell me what the variable $MAIL reports?
> For years the "normal" has always been /var/spool/mail/$LOGNAME..
> Will be interesting to see what your working box reports..

 MAIL=/var/mail/heisspf

Sorry not to have mentioned all my setup. I am using procmail to filter my
mail and for MUA I use mainly exmh, then mail>nail and occasionally like now
sylpheed-claw. Exmh and sylpheed compliment each other both using
nmh. Therefore no mail ever enters /var/mail/heisspf instead goes straight to
various mail boxes and for spam to> /dev/null. 

Since I used Pine only briefly in the beginning with Linux and then quickly
switched to exmh with procmail I do not remember having seen From_.

Thanks for pointing out to me that my mail now comes from meridian.ph. This is
the provider for my broadband connection, however, I have no e-mail account
with them, therefore, the mail will bounce. I was not aware of this problem.
Will see how to sort this out.

> 	We'll keep hacking away as the learning abounds.. Thanks.

Regards
-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
