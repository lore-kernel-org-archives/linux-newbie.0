From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Fri, 22 Nov 2002 13:43:04 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211221843.gAMIh4W08194@hartford-hwp.com>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <5.1.0.14.1.20021121103403.02116350@celine> <200211212046.gALKkTj04709@hartford-hwp.com> <02112121392100.00286@unix.pa3gcu>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <02112121392100.00286@unix.pa3gcu> (message from pa3gcu on Thu,
	21 Nov 2002 21:39:21 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org, brownh@hartford-hwp.com

Richard,

> I belive from what i have read that you are using "sawfish", and
> that a user cannot start X, i use slackware here and sawfish does
> not use pex5.so or xie.so, if one uses 'ldd' one see's which libs
> are needed.

> if your swafish uses pex5.so and xie.so could it be that a program
> started by sawfish uses them.????  If so then the "user" may need
> special privs on that particular program.

You raise an interesting point, but my running ldd /usr/bin/sawfish
suggests it does not need pex5 nor xie.

The odd thing is, as I mentioned before, is that I can create a new
user and start X for it and proceed without difficulty, but a reboot
kills that user's ability to start X (to load the pex5 and xie
modules).

If I run:

   # insmod /usr/X11R6/lib/modules/pex5.so
   /usr/X11R6/lib/modules/pex5.so: ELF file
          /usr/X11R6/lib/modules/pex5.so not a relocatable object

Do you or any lurker happen to know what it means to say an object is
not relocatable. For example, does it mean an application stub can't
construct the module at the stub for its own use?

Further, in my error log it says:

(II) LoadModule: "pex5"
(II) Loading /usr/X11R6/lib/modules/pex5.so
        dlopen: /usr/X11R6/lib/modules/pex5.so: undefined symbol:
        PexExtensionInitPtr 
(EE) Failed to load /usr/X11R6/lib/modules/pex5.so
(II) UnloadModule: "pex5" 
(EE) Failed to load module "pex5" (loader failed, -1073743256)

I've a vague sense that dlopn seeks to load pex5, but encoungers an
"undefined symbol," PexExtensionInitPtr.

Can anyone tell what this PrxExtensionInitPtr is? Does it refer to a
dependent library that fails to be accesses because that library is
either missing, is not in the linker list, is a wrong version or has
the wrong permissions?

Haines Brown

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
