From: ichi@ihug.co.nz
Subject: Re: RAM and swap partition
Date: Mon, 09 Dec 2002 07:13:38 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF442A2.733E0A33@ihug.co.nz>
References: <20021208002415.24931.qmail@web11406.mail.yahoo.com> <5.1.0.14.1.20021208075330.020a30f0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> 
> (only Slackware, I think, still offers a "low memory" 
> install option) 

The latest Slackware (8.1) still provides a low-mem kernel.
However the standard installation scheme is too big to run
in 8mb RAM.  The instructions say 16mb RAM is required,
although 12mb is probably enough with the low-mem kernel.
For machines with less RAM than this, the instructions
recommend ZipSlack (which runs on a DOS filesystem).

There is, however, another option for computers with 
8mb RAM or less:
-------------------------------------------
http://www.volny.cz/basiclinux/slack81.html
-------------------------------------------
This uses a special low-RAM installation script that 
installs Slackware 8.1 to an ext2 partition.

Cheers,
Steven


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
