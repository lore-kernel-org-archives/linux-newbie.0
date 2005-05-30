From: Jeremy Abbott <jkbullfrog@verizon.net>
Subject: Mplayer problem
Date: Mon, 30 May 2005 08:33:38 +0000
Message-ID: <429ACFE2.7060109@verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have recied an errore while compiling mplayer recently.  Here is the
message:

: undefined reference to `XF86DGADirectVideo'
libvo/libvo.a(vo_3dfx.o)(.text+0x50): In function `sighup':
: undefined reference to `XF86DGADirectVideo'
collect2: ld returned 1 exit status
make: *** [mplayer] Error 1

Any help regarding this situation would be appreciated.  I am currently
running Xorg 6.8.2 with kernel 2.6.10.  I will soon be upgrading to 2.6.11.

Thanks,
Jeremy Abbott
jkbullfrog@verizon.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
