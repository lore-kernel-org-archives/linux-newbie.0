From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: RH7.3 keyborad lock-up
Date: Fri, 9 Aug 2002 09:02:42 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208090847270.8397-100000@Consulate.UFP.CX>
References: <02080915133300.07686@localhost.localdomain>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02080915133300.07686@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Peter.

>>> When I recently upgraded to RH7.3 I got total keyboard locks when
>>> trying to run xscreensaver, tuxracer and chromium and may be others,
>>> necessitating dirty reboot by the reset botton. >
>>>
>>> I, therefore, conclude that the problem is somewhere whithin with
>>> RH7.3 and possibly not with my video card which is SiS 630 since it
>>> works fine in RH7.1. >

>>  2. For each program where those versions are different, please see
>>     if you can install a copy of the same version used under RH 7.3
>>     on your RH 7.1 based system. If you can, please determine if it
>>     is stable under 7.1 or if it also fails there. 

> I tried it with xscreensaver. The version in RH7.1 is/was
> 3.29-3.i386.rpm and the one of RH7.3 is 3.33-4.i386.rpm. It upgraded
> flawlessly and seems to be stable. No hang no keyboard lock-up which
> I could induce in RH7.3 by clicking on Blank Screen Now in
> xscreensaver-demo or when the display at set time would change.
>
> If I recall correctly I tried to install the xsceensaver of RH7.1 in
> Rh7.3 and it would lock-up as well, however, I am not so sure
> anymore if it did install at all.
>
> So the problem does not semm to be with the particular programs it
> must be most likely within the kernel of RH7.3.

There are several possible areas where the problem could be...

 1. In the kernel itself, as you state.

 2. In the libc or glibc library.

 3. In one of the other libraries used by the said program.

 4. In the program itself.

Basically, to locate the actual problem, we need to confirm the precice
differences between a working configuration and one that isn't. Also,
where there are two or more programs that can be identified as causing
a specific problem in one configuration but not in another, we can be
fairly sure that the problem is in something that is common to all of
those programs.

For this reason, can you first confirm that you can upgrade tuxracer and
chromium to the versions supplied with 7.3 without having this problem
turn up on you?

When you have done so, can you run ldd on each of the resulting programs
and post the results here please? That will give us a list of libraries
used by each of those programs. The important ones are the libraries
that are common to all three programs, and the libraries that are not
common to all three can be ignored. You will find that the glibc library
is common to every program on your system, but specific programs use
specific other libraries as well. Always check the other libraries first
as a problem in glibc would normally show itself right across the system.

The next stage would be to check which versions of those libraries are
installed on a 7.3 system, and then upgrade the libraries one at a time
until either the problem recurs or you have the same versions of all of
the libraries installed on your 7.1 system.

If the problem recurs when any one of the libraries is installed, then
the problem is in that library. Only if one succeeds in installing all
of the libraries without the problem occurring can one definitely state
that the problem is in the kernel.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
