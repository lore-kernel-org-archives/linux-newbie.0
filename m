From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian libc6 upgrade
Date: Tue, 27 Jan 2004 14:16:00 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040127140555.01fe9d38@celine>
References: <200401272140.53742.michael.scondo@arcor.de>
 <200401272140.53742.michael.scondo@arcor.de> <Pine.LNX.4.53.0401272330090.501@grinch.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0401272330090.501@grinch.ro>
References: <200401272140.53742.michael.scondo@arcor.de>
 <200401272140.53742.michael.scondo@arcor.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:34 PM 1/27/2004 +0200, caszonyi@rdslink.ro wrote:
>On Tue, 27 Jan 2004, Michael Scondo wrote:
>
> > Hi to all,
> > I'm running a mixed Debian Woody, with a few backports and libc6 2.3.1-16.
> > Now I would like to upgrade to libc6 2.3.2.ds1-10.
> > Anything runs fine - until I try to compile a program :

Sorry I missed this the first time through. Let me ask the basic question: 
when you upgraded libc6, did you also upgrade libc6-dev (the .deb with the 
header files) to match?

I run Sid here, so offhand I do not know what libc6 is "current" for Woody 
... so I can't deduce from what you posted if you did your libc6 upgrade 
through Debian package management or if it is part of what makes this what 
you call a "mixed" system.

[...]
> > cpp -o hallo hallo.cpp
> > micha@betageuze:~/prog/test/t2$ ./hallo
> > bash: ./hallo: Permission denied
> > micha@betageuze:~/prog/test/t2$ chmod a+x ./hallo
[remainder deleted]

This part is just a plain mistake --- cpp does not yield executable code; 
it is just a preprocessor tha outputs source. The errors you got occur 
because the system is trying to process the text as a seris of shell commands.

You want to use gcc to compile and link C code, as you did later (omitted 
here). The error from that is probably a header mismatch.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
