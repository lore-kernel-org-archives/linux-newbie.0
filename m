From: Chris Rose <offline@shaw.ca>
Subject: Re: Marco's failed message: Help on scripting
Date: Sat, 27 Apr 2002 23:23:17 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.0.20020427232245.00a24530@shawmail.ed.shawcable.net>
References: <2.2.32.20020428033439.010495e0@[192.168.1.23]>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2.2.32.20020428033439.010495e0@[192.168.1.23]>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Marco, try this:

for i in `ls jnos*.p*`; do mail -s $i user@myhost.domain; done;

remember, the " ` " characters (around "ls jnos*.p*") are the grave 
accents, from about the tilde key

Let us know if the mail error fixes.

At 08:34 PM 27/04/2002 -0700, Marco wrote:
> >Hi I'd have this problem:
> >
> >how to send files to a local (LAN) SMTP-server giving them their own
> >Subject(one by one)?
> >
> >i.e.the folder /encod contains:
> >
> >jnos-1_1.p01
> >jnos-1_1.p02
> >jnos-1_1.p03
> >jnos-1_1.p04
> >jnos-1_1.p05
> >jnos-1_1.p06
> >jnos-1_1.p07
> >jnos-1_1.p08
> >jnos-1_1.p09
> >jnos-1_1.p0a
> >
> >I wonder a script which reads the above and formats mail so that I obtain:
> >
> >mail -s jnos-1_1.p01 user@myhost
> >mail -s jnos.1_1.p02 user@myhost
> >mail -s jnos.1_1.p03 user@myhost
> >
> >...and so on
> >
> >
> >Thanks,Marco
> >


Chris Rose
==========
1952 - 2001 = 42


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
