From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: RH7.3 keyborad lock-up
Date: Thu, 8 Aug 2002 08:29:23 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208080817060.8397-100000@Consulate.UFP.CX>
References: <Pine.LNX.4.33.0208081141440.2039-100000@localhost.localdomain>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.33.0208081141440.2039-100000@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Peter.

> When I recently upgraded to RH7.3 I got total keyboard locks when
> trying to run xscreensaver, tuxracer and chromium and may be others,
> necessitating dirty reboot by the reset botton.
> 
> In order to go on working I had to reinstall RH7.1 where there is no
> such problem at all neither with xscreensaver, tuxracer nor any
> other program.
> 
> I, therefore, conclude that the problem is somewhere whithin with
> RH7.3 and possibly not with my video card which is SiS 630 since it
> works fine in RH7.1.
> 
> Is this a known problem with RH7.3?
> 
> If so are there corrective patches already and where do I find them?

To help track these problems down using your 7.1 system, do the
following:

 1. For each program you know of that causes problems under RH 7.3,
    determine the version of that program you were running under
    7.3 and the version you are running under 7.1.

    Assuming both came as *.rpm's from Red Hat, the name of the
    relevant RPM will tell you as the name is in the format...

	${NAME}-${VERSION}-${RELEASE}.${ARCH}.rpm
		^^^^^^^^^^^^^^^^^^^^^

    ...and the bit you need is the bit I have underlined above. Note
    that if the 7.3 binary RPM doesn't work under 7.1, you can simply
    download the 7.3 source RPM and install that with the...

	rpm -ba ${RPM}

    ...command, assuming you have the relevant build tools installed.

 2. For each program where those versions are different, please see
    if you can install a copy of the same version used under RH 7.3
    on your RH 7.1 based system. If you can, please determine if it
    is stable under 7.1 or if it also fails there.

The very fact that a particular version is stable under 7.1 but causes
lockups under 7.3 is an important indicator that the problem is not in
that particular version, but elsewhere. However, the fact that version
A is stable under 7.1 but version B locks up under 7.3 says nothing of
any use to anybody.

Likewise, being able to say that "Version A of xscreensaver works fine
on my RH 7.3 system but version B causes it to lock up" is also very
useful information, especially when version A is the one supplied with
RH 7.2 and version B is the one supplied with RH 7.3, so if anybody
running RH 7.3 and having problems can try downgrading the problem
programs to the versions supplied with RH 7.2, that will also help.

For those interested, all RPM's supplied with all versions of Red Hat
Linux are available from the Red Hat Linux ftp site for downloading.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
