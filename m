From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: /cdrom fails to unmount
Date: Tue, 22 Jul 2003 18:06:48 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307221806.48987.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.43.0307221116460.20338-100000@perpugilliam.csclub.uwaterloo.ca>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.43.0307221116460.20338-100000@perpugilliam.csclub.uwaterloo.ca>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: dzlotnik@uwaterloo.ca, Dan Zlotnikov <dzlotnik@perpugilliam.csclub.uwaterloo.ca>, linux-newbie@vger.kernel.org

On Tuesday 22 July 2003 17:19, Dan Zlotnikov wrote:
> In Deb.woody, kernel 2.4.18, I have the following problem:
>
> mount /cdrom
> "sure," the computer says, "I will."
>
> cd /cdrom
>
> mplayer -fs whateverthehellI'mwatching
> "Okay," says the computer.
>
> cd
> "No problems," says the beast.
>
> umount /cdrom
> umount: /cdrom: device is busy
> Or in other words, "*$^! you!"


No it says' sommat or someone started another program while you were in /cdrom
'fuser' would be a good idea on this one.

fuser /cdrom

may help.

>
> No processes that I could identify suggested themselves as the visible
> culprit. Rebooting works, but killing the x-session doesn't.

Let fuser decide that.

>
> Help, anyone?
>
> Dan

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
