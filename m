From: Ray Olszewski <ray@comarre.com>
Subject: Re: Introduction and Scanner Help
Date: Tue, 23 Apr 2002 09:18:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020423161841.00f7c534@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Staci <spiritlover666@yahoo.com>, linux-newbie@vger.kernel.org

If the scanner does not work in either Windows or Linux, the first thing to
consider is the possibility that the device itself is defective. We can't
help you much with that part. Since the manufacturer probably supports
Windows installations, I'd suggest your getting its tech support either to
make that work or to identify the actual scanner as bad. That's probably a
more useful approach than writing a "very nasty letter".

If the device itself is OK ... well, to help you with Linux specifics, we
need to hear more than that "somehow SANE can't see it".

First, what dmesg "stuff" are you referring to when you write "It LOOKS from
the dmesg stuff that Linux DOES know that there's something plugged in"?
(Quote the relevant parts, please.)

Second, how do you actually try to use the scanner and how does that attempt
fail? (What app are you using? What errors onscreen? What log entries?)

Third, what entries are in /proc/usb?

And BTW, what kernel are you using ("uname -a")? And what version of Slackware?

To be honest, I've never run a scanner on Linux, so you might prefer to wait
to respond in the hope that you will get a response from someone else on
this list with some directly applicable experience. But unless there is a
known, specific problem with your scanner, these are the sorts of diagnostic
questions that anyone who tries to troubleshoot this type of problem would ask.

At 07:18 AM 4/23/02 -0700, Staci wrote:
>Hello!
>I just joined this mailing list.
>I started with slackware in january, it died for about
>3-4 weeks, and i picked it up and have been learning
>madly ever since and making lots of progress. :)
>
>I have a couple ongoing problems involving my
>peripherals that I'm hoping someone can help me with.
>
>The first one is my scanner.  I've got the SANE back-
>and front-ends installed, but somehow SANE can't see
>it.  I had the same problem with Windows when I tried
>it under Windows.  
>
>It's a Microtek Scanport 3000, connects thru USB.
>It LOOKS from the dmesg stuff that Linux DOES know
>that there's something plugged in.  But sane can't.
>
>If nobody can help me I'm going to write a very nasty
>letter to the company. :/
>
>Any assistance would be very much appreciated.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
