From: Edgar Alwers <edgaralwers@gmx.de>
Subject: Re: umount
Date: Fri, 8 Nov 2002 22:27:46 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211082227.46496.edgaralwers@gmx.de>
References: <5.1.0.14.1.20021108093105.021201f0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021108093105.021201f0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: newbies <linux-newbie@vger.kernel.org>

On Friday 08 November 2002 18:36, Ray Olszewski wrote:

> Well ... I'd guess there is a permissions difference between mount and
> umount. Check both by using "ls -l /bin/mount" and "ls -l /bin/umount"

nope:  both are  -rwsr-xr-x, but both owned by root and group = root ?

> The other possibility if an entry in /etc/fstab that makes mounting
> possible but not umounting (though I can't offhand think of a setting that
> will do this).

/devf/cdrom ro,noauto,user,exec 0 0

> BTW, is "klicking" some KDE idiom?

hmm.... sorry Ray, german english for "to click" . I promise, I will try 
harder !  ;-)

Regards,
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
