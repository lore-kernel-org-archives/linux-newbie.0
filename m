From: Peter <heisspf@skyinet.net>
Subject: Re: Can't Print
Date: Sat, 01 May 2004 16:12:32 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040501081232.9504E301F7@heisspf>
References: <5.1.0.14.1.20040429220345.01efcb48@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Thu, 29 Apr 2004 22:10:57 MST."
             <5.1.0.14.1.20040429220345.01efcb48@celine> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org


heisspf@skyinet.net said:
> On a standalone PC with no modem and therefore no Internet connection and RH
> 9.0 installed I am unable to get the printer to work. 

Thanks Ray!

In /etc/hosts I had to remove @localdomain from localhost@localdomain and lpd 
started and placing the print jobs nicely into the print queue, however, 
nothing is being printed.

On booting I get: Starting lp: Warning printer: cannot open '/dev/lp0' 'No 
such device or address'.

dmesg gives: lp: driver loaded but no device found.

lsmod shows: parport    2  (autoclean) [lp]

I have not an onboard parport but a singel parallel PCI card with chipset 
NM9805CV. It worked perfectly when I tried it on my other PC with slackware 
9.1.

What have I to do that the device /dev/lp0 is found. It is in /dev/:

ls -l /dev/lp0
crw-rw----    1 root     lp         6,   0 Apr 28  1995 /dev/lp0

Regards
-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
