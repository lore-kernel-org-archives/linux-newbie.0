From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: unable to make dep; limit.h
Date: Mon, 3 Feb 2003 19:54:23 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0302031946200.16571-100000@ppg_penguin>
References: <5.1.0.14.1.20030203094342.021343c0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030203094342.021343c0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: Richard Spencer <rspr@sunflower.com>, linux-newbie@vger.kernel.org

On Mon, 3 Feb 2003, Ray Olszewski wrote:

> I didn't see any other replies to this. So while I'm sort of guessing here, 
> I'm reply in the belief that my suggestion is at least better than nothing.
> 
> I notice that you are doing the compile from "linux-2.4.20". Normally, 
> scripts expect to find kernel source in /usr/src/linux . If you  do not 
> have it in such a directory (typically, you would actually put it in 
> /usr/src/linux-2.4.20 and make a symlink), then the script that looks for 
> "/usr/src/linux/include/linux/limits.h" would be unable to find it ... as 
> the last line of the error report you quote indicates (but without the full 
> include path).
> 
> I'm not certain that this is the source of your problem, but it is probably 
> worth a look.
> 

 Ray,

 if you download the full tar for a current kernel (well, 2.4 and 2.5
anyway), you should find that it extracts into linux-2.4.20 (or
wherever), so its own scripts *ought* to work.  I wonder if Richard has
inadvertently deleted /usr/src/linux in preparation for the build, in
which case recreating it might work (but if it's necessary, it kind of
sounds like it should contain the headers used to build glibc).

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
