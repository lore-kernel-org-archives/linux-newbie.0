From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Trying to get GUI'ed
Date: Wed, 30 Oct 2002 13:40:28 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210301840.g9UIeSL01894@hartford-hwp.com>
References: <20021029.222550.134682184.2.lawson_whitney@juno.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20021029.222550.134682184.2.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: lawson_whitney@juno.com
Cc: paul.furness@vil.ite.mee.com, linux-newbie@vger.kernel.org

Lawson,

At this point I'm only trying to back out of my abortive nVidia driver
install and get back to the nv driver that came with my RedHat 7.3
distribution. 

To do that, I recovered my old XF86Config-4 file. The rpm install for
the driver commented out lib.GLcore.a and libglx.a, which I restored. 

Third, I wanted to uninstall the driver RPM. First, I used rpm -ql on
NVIDIA_kernel to get the driver's name. The one return was
/lib/modules/2.4.18-10/kernel/drivers/video/NVdriver. Then I ran: rpm -Uvh
NVdriver. Unfortunately, "no such file." Apparently I can't run the x
server without this uninstall, and apparently I'm not going about it in
the right way. 

Unfortunately, nVidia's support list works through a web page, and
since I've lost my X server, it does me no good (I used to rely on
lynx, and now I see that I've got it on Linux! I'll try to use it to
reach nVidia). My gnus gets into a loop (no fun when it happens from a
terminal), and so I can't pursue these issues on an appropriate
newsgroup unless I can somehow telnet into the newsgroup (something 
I've never tried). Wow; all this takes me back to my DOS days!

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
