From: Peter <heisspf@skyinet.net>
Subject: Re: Can't Print (fwd)
Date: Sun, 09 May 2004 15:16:27 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040509071627.2213F333ED@heisspf>
References: <5.1.0.14.1.20040502073017.01efcfc0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sun, 02 May 2004 07:50:00 MST."
             <5.1.0.14.1.20040502073017.01efcfc0@celine> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-newbie@vger.kernel.org

Hi,

I have made a new installation of RH9.0 2.4.20-9 where I have a parallel 
printer card. The system is now discovering the card.

Doing: "more /proc/pci" I am told that the printer card is using irq 5 and the 
io=0xd400.
This is the first number to show. There are some more io.

Only to this io does the printer react, meaning it makes that sound when the 
print head moves somewhat and only giving this io will lpq give an information 
about the print queue. It is a dot matrix printer.

That printer react comes when I do: insmod parport_pc io=0x400 irq=5.
After this lpq gives the usual information about the print queue. There is 
always an old queue around either as 'done' or now as an 'error too many 
tries'.

Now if I want to print something 'lpr file' the keyboard totally freezes and I 
have to do a dirty reboot.

Any help appreciated.
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
