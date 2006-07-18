From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Modem Inaccessible
Date: Tue, 18 Jul 2006 14:54:09 -0400
Message-ID: <20060718185409.GA1470@lnx2.kvinet.com>
References: <200607180711.k6I7B1sn003807@skyinet.net> <44BCF54B.2000302@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44BCF54B.2000302@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.net

On 07-18, Ray Olszewski wrote:
> See comments below.
> 
> Peter wrote:
> >Thanks Ray!
> >
> >ray@comarre.com said:
> >
> >>I'm assuming the modem is attached to a serial port
> >
> >
> >Yes, has been for years.

	Been watching the thread and wonder if the following will
help since I am running Slack10.2, 2.6.13 on one machine:

BIOS boot reports standard Com1 Com2 parameters.. Default..

Linux 2.6.13 boot; setserial /dev/ttyS0 and /dev/ttyS1 reports exact
same parameters; normal.. Both UART 16550A.. The on board LSI chip
seemingly AOK..

I see no mention of /dev/tts anywhere on my machine..

dmesg reports standard ttyS0 and ttyS1, normal.. This is the bundled
kernel that Slackware calls test26.

If I hang an external modem on either port; normal..

Probably no help, just a thought..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
