From: Edgar Alwers <edgaralwers@gmx.de>
Subject: Re: umount
Date: Mon, 11 Nov 2002 16:58:39 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211111658.39126.edgaralwers@gmx.de>
References: <5.1.0.14.1.20021108093105.021201f0@celine> <200211082227.46496.edgaralwers@gmx.de> <20021108220313.GA2231@cam.ac.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021108220313.GA2231@cam.ac.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Smith <sos22@cam.ac.uk>
Cc: Ray Olszewski <ray@comarre.com>, newbies <linux-newbie@vger.kernel.org>

Hallo, Ray and Steven,

thank you very much for the help. Details as follows:

On Friday 08 November 2002 23:03, Steven Smith wrote:
>
> The obvious thing to check is that the mounting user is being recorded
> correctly in the mtab.  There should be something along the lines of
> ``user=sos22'' (or whatever your username is) in the /etc/mtab line
> for /dev/cdrom.  If not, or if it specifies a different username,
> you'll be allowed to mount, but not unmount.
>
This was the clue. After entering a line as given in mtab, I could also umount 
cdrom as user.

> If you have such a symlink, you should probably
> ``rm /etc/mtab; cp /proc/mounts /etc/mtab'' and then reboot.
I did this also. There was a symlink there, which I removed.

Thanks again
Edgar

-- 
--------------------------------
Dr.-Ing. Edgar Alwers
Mailto: edgaralwers@gmx.de
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
