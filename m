From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: What happened to "From "????
Date: Tue, 5 Jul 2005 08:53:08 -0400
Message-ID: <20050705125308.GB1109@lnx2.w8mch.ampr.org>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org> <200507050039.j650dsDq000725@meridian.ph>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200507050039.j650dsDq000725@meridian.ph>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@meridian.ph>
Cc: linux-newbie@vger.kernel.org

On 07-05, Peter wrote:
> Hi,
> 
> I am using slack 10.1, kernel 2.4.29, sendmail-8.13.3 and getmail 4.2.5 and 
> all the mail has the From: ,however, none has From_ . In fact I have never 
> seen that.

	Greetings again Peter and thanks much for the input..

	I have additional suggestions from Ray that I'll respond to
but since you're using a similar lash up I have some more queries for
you if OK:

	Of course the Unix From_, as the first string in every
message, has been around for more than the 15 years I've been running
Unix.. It is the way the messages are kept separate in the one file
that contains all of them; heretofore, usually,
/var/spool/mail/$LOGIN.. That was my first head thumper; the change
to the first string being From:...

	What mailer, MUA, are you using?? I use either Mutt or MailX,
now called 'Nail' for some reason, but still invoked with the symlink
'mail'... During all this I tried Pine with the same problem so I
removed it..

	Where do your "From:" messages go? In /var/spool/mail/$LOGIN
or to another directory/folder in userspace?? As I understand it;
QMail type mail stores each message individually rather than in one,
could be large, file at /var/spool/mail....

	My original problem came to light on the machine that didn't
have any version of Sendmail installed because, IIRC, Getmail doesn't
need Sendmail or Procmail to deliver messages, like Fetchmail, etc..

	One final query: Can you invoke: env <return> in any of your
userspace or even root and tell me what the variable $MAIL reports?
For years the "normal" has always been /var/spool/mail/$LOGNAME..
Will be interesting to see what your working box reports..



	We'll keep hacking away as the learning abounds.. Thanks.
-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
