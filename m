From: Ray Olszewski <ray@comarre.com>
Subject: Re: RH7.3 keyborad lock-up
Date: Fri, 09 Aug 2002 07:10:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020809065431.020c5350@celine>
References: <02080915133300.07686@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0208090847270.8397-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Riley Williams <Riley@Williams.Name>, Peter <pfheiss@philonline.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

See below.

At 09:02 AM 8/9/02 +0100, Riley Williams wrote:
>[...]
> > So the problem does not semm to be with the particular programs it
> > must be most likely within the kernel of RH7.3.
>
>There are several possible areas where the problem could be...
>
>  1. In the kernel itself, as you state.
>
>  2. In the libc or glibc library.
>
>  3. In one of the other libraries used by the said program.
>
>  4. In the program itself.
>
>Basically, to locate the actual problem, we need to confirm the precice
>differences between a working configuration and one that isn't. Also,
>where there are two or more programs that can be identified as causing
>a specific problem in one configuration but not in another, we can be
>fairly sure that the problem is in something that is common to all of
>those programs.


May I add one suggestion to the (otherwise) excellent list you provided? 
The problem might be in X11, which surely changed version between RH 7.1 
and 7.3. This source of the problem would, in fact, be my first *guess*. It 
would be worth knowing --

A. If Peter sees the RH 7.3 failure with -ANY- command-line app. (Including 
the details if the answer is yes.)

B. What video card and X server are involved, and what versions are in the 
"before" and "after" serups.

C. When the keyboard locks, is the system still running or not? For 
example, can you ssh or telnet to it? Can you ping it? I assume the 
keyboard problem prevents your switching to a vt, but if you have (say) 
"top" running in an xterm, does it continue to run and show sensible 
process behavior? Any one of these tests should do; I list several because 
I can't remember is this system is on a LAN, or what services it might be 
running if it is. If you can do nothing else, set up a background job that 
writes the time to a file every minute, then after you reboot, see when it 
stopped writing.

Also, I am not a Red Hat user, but RH does have a system for online updates 
to correct, at least, security holes and other critical bugs. Peter, have 
you applied all the updates and patches RH has released for 7.3? 
Specifically, the ones listed in the directory at 
ftp://ftp.redhat.com/pub/redhat/linux/updates/7.3/en/os/i386/ . From the 
package names, I'd guess these are mostly security updates ... but there is 
a set of glibc updates here. And one for libstdc++.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
