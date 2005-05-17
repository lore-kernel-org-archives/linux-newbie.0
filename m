From: Nathan Clayton <nathanclayton@daftwazzock.com>
Subject: Re: Reverse DNS
Date: Tue, 17 May 2005 01:30:45 -0700
Message-ID: <1116318646.3938.72.camel@localhost.localdomain>
References: <200505160723.j4G7Nanl010005@skyinet.net>
	 <4288B8EB.3000202@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4288B8EB.3000202@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux <linux-newbie@vger.kernel.org>

On Mon, 2005-05-16 at 08:14 -0700, Ray Olszewski wrote:
> What to do about this? I'm afraid the advice you found to complain to 
> your ISP is right. Reverse-DNS entries need to be provided by whoever is 
> authoritative for the *address*, not the domain name, and that (almost 
> without exception, for us small users) is your ISP. This lookup failure 
> suggests a degree of sloppiness at your ISP that would have me looking 
> elsewhere for a service provider.
> 
> How to contact your ISP really is not a Linux issue, except perhaps to 
> point out that VoIP options exist for use with Linux, if your lack of a 
> wireline phone really is a persistent problem.
> 
> In the meantime -- does your ISP provide a mail forwarder? Most do. If 
> so, setting up your MTA to send mail through that forwarder would 
> probably satisfy AOL's requirements.

A lot of ISPs do this now. They force you to go through their SMTP
server. It helps cut down on spammers using their networks. Quite
frankly, I'm surprised that they even left that port open for you to
send out email on. You could also try using something like dyndns to get
a dynamic DNS name pointing to your IP address.

Change your email client/sendmail/postfix to use the SMTP server that
your broadband provider provides and you should have no problems (you
can usually keep the from and reply-to headers pointing to your other
email address without a problem).

nathan

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
