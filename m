From: "Marco Calistri" <ik5bcu@tin.it>
Subject: Re: Marco's failed message: Help on scripting
Date: Sun, 28 Apr 2002 18:51:47 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020428165147.1928.qmail@linux.ik5bcu.ampr.org>
References: <20020428085906.GB361@cam.ac.uk>
Reply-To: ik5bcu@tin.it
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020428085906.GB361@cam.ac.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Smith <sos22@cam.ac.uk>
Cc: linux-newbie@vger.kernel.org, Chris Rose <offline@shaw.ca>

I thank all of you:Ray,Steven,Chris...the mistery of my not accepted message
still remains though.

About the script example:
all ok and thank you,but how can I set a variable so that I can use
it with different file names and not just with jnos*.p?

$f= ls -l...???

On 28-Apr-2002 Steven Smith wrote:
>> for i in `ls jnos*.p*`; do mail -s $i user@myhost.domain; done;
> 
> It might be easier to go:
> 
> for i in jnos*.p*; do mail -s $i user@myhost.domain; done
> 
> and get rid of the backticks. Both should do the same thing, though.
> 
> Steven Smith,
> sos22@cam.ac.uk.

----------------------------------
E-Mail: Marco Calistri <ik5bcu@tin.it>
Date: 28-Apr-2002 Time: 18:51:44
Red Hat Linux release 7.2 (Enigma) kernel 2.4.9-31
This message was sent by XFMail
----------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
