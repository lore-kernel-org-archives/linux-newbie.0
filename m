From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: IMAP Error
Date: Thu, 12 Feb 2004 15:01:07 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402121501.07039.pa3gcu@zeelandnet.nl>
References: <002101c3f160$f4a0a8f0$0500a8c0@sea>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002101c3f160$f4a0a8f0$0500a8c0@sea>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ralica Kirilova <larry@podovinastilki.com>, linux-newbie@vger.kernel.org

On Thursday 12 February 2004 13:08, Ralica Kirilova wrote:
> Hi all,

I'm no expert with courier-IMAP, but something is very wrong here.

> I have a problem with running courier-IMAP server.
> My system is Linux Slackware 9.1, uname -r --> 2.4.22
> I have qmail running.
> I'm trying to run ./configure [options] like described in
> http://www.inter7.com/courierimap/INSTALL.html#install
>
> And I get this error:
> configure: error: Cannot find either the gdbm or the db library.
>
> I google for it and I find here
> http://www.inter7.com/courierimap/FAQ.html#libs
> an answer. But it didn't solve the problem.
> I have /usr/include/gdbm.h and /usr/lib/libgdbm.a         libgdbm.la
> libgdbm.so        libgdbm.so.2      libgdbm.so.2.0.0
>
> In file config.log I've found that I'm maybe missing some libraries. It's a
> cut from this file
> configure:3026: checking for gdbm_open
> configure:3076: gcc -o conftest -g -O2   conftest.c -lgdbm  >&5
> In file included from
> /usr/lib/gcc-lib/i386-slackware-linux/3.2.2/include/limits.h:132,
>                  from
> /usr/lib/gcc-lib/i386-slackware-linux/3.2.2/include/syslimits.h:7,
>                  from
> /usr/lib/gcc-lib/i386-slackware-linux/3.2.2/include/limits.h:11,
>                  from configure:3046:
> /usr/include/limits.h:132:75: no include path in which to find limits.h
> configure:3079: $? = 1
>
> configure: failed program was:
> | #line 3031 "configure"

The errors above are from include files not libs, possably no kernel source 
installed, read on.

You said Slack-9.1 correct.? then why i ask do you have 
/usr/lib/gcc-lib/i386-slackware-linux/3.2.2/
All my Slak-9.1 systems have;
/usr/lib/gcc-lib/i486-slackware-linux/3.2.3
I am NOT saying this is your problem, what i am saying is you seem to have 
i386 where it should be i486, now i cant see why that should upset the 
configure program, what i do think is that you dont have the kernel source 
installed or its not linked properly.
Make sure you have the following (just to be sure).
/usr/src/linux ->linux-2.4.22
and of course the source installed in linux-2.4.22 which is the way slackware 
installed the source for you.

AFAI can see it should be ok as you do have the libs installed, on the 
otherhand reading the README on the URL you mentioned you can use:
./configure --with-db=db
Just what is meant by that i dont know, as i said, i am no expert with IMAP.
Also i could be wrong as well.

> Maybe the question is very stupid, I'm sorry if it is so.
> Thanks for answers in advance!
> P.S. Excuse me for my bad english

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
