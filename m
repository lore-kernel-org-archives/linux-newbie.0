From: Ray Olszewski <ray@comarre.com>
Subject: Re: Lilo and NT - repost because many did not READ!!!!
Date: Tue, 06 Aug 2002 12:33:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020806122251.0213de10@celine>
References: <3D4E4917.FA23C178@gmx.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D501D19.456D382E@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Oliver Ob <ob_ok@gmx.net>, Lx Newbie List <linux-newbie@vger.kernel.org>

First, let me say I share Riley's annoyance with the rude character 
of  your most recent message. Also ... "I SAID A MILLION TIMES"? Hardly. 
Once, perhaps twice, and anyway, you got a response that was to the point. 
Please remember that you are getting free help here, and it is short 
sighted to insult people who are doing you favors by reading about your 
problems and trying to suggest solutions.

With that out of the way ... if you cannot use the MBR for LILO, and you 
cannot put LILO in a partition as Riley suggests (why not?), then the only 
place left is on a floppy disk. I've done this once or twice to achieve 
dual booting back when it was harder than it is today ... back in my 
Slackware days (Slackware installs included an option for making a LILO 
bootdisk). It is a clunky solution, but all you do then is use the MBR for 
your NT boots, and a floppy for your Linux boots.

If you cannot do that either (if Safeguard blocks floppy boots, for 
example), I think you are out of luck.

At 09:01 PM 8/6/02 +0200, Oliver Ob wrote:
>Oliver Ob schrieb:
>
>There is some problem here. I had been using my machine dualbooting
>with Lilo for NT and Linux. Worked like a charme. Lilo resided in the
>mbr and it worked.
>
>But now the NT uses SAFEGUARD and that thing sits in the mbr for the
>pre-boot-password-authentication. So for all of you who do not know
>SG yet: It starts booting ONLY if you entered the correct pw.
>
>I have not done this before and ask for your advice:
>
>*** AGAIN, STOP WASTING MY AND YOU TIME WITH IDEAS TO MODIFY THE
>NT LOADER! I SAID A MILLION TIMES WHY I CANNOT CHANGE THAT !!! ****
>Thanks.
>
>How can I continue using LILO for NT/Linux dualboot
>*when I need to make NT believe the orignal ("safeguarded")
>NT-Bootsector i the mbr, but want to use lilo in the mbr ACTUALLY
>
>What to do?
[rest deleted]


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
