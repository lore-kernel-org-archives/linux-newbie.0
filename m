From: "Warren Hrach" <sean@tcob1.net>
Subject: Strange Boot Behavior (cont.)
Date: Friday, 22 Aug 2003 09:25:02 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_1=3a202=2f745_c342650a@fidonet.org>
References: <20030822054905.11388.qmail@web13804.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030822054905.11388.qmail@web13804.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: Christopher Swope

> Hello again,

> Can anyone tell me if there is an easy way to reply on-list.  Several
> people have responded to my first inquiry, and I expected the
> reply-to address to be the list email, but it was their personal
> emails instead.

> Anyway, I would like to address some of the concerns brought up in
> those emails.  My initial hunch was that there was a problem with the
> jumpers, but I checked several times to make sure they were okay.
> Nonetheless, after three separate people replied suggesting that I
> check the jumpers, I went back just to be sure.  Sure enough, the
> jumpers were right.  I did run a little jumper experiment, however,
> and here are the results:

> If the settings are any of the following, the drives are not
> recognized at all.  (These results are not surprising).
> Primary -- Master w/ Slave present
> Secondary -- Cable Select

> Primary -- Master w/ Slave Present
> Secondary -- Master

> Primary -- Anything other than "Master (Single Drive)"
> Secondary -- Not installed

> If the settings are any of the following, I get the behavior I
> described earlier.
> Primary -- Cable Select
> Secondary -- Slave

> Primary -- Master w/ Slave Present
> Secondary -- Slave

> Primary -- Master (Single Drive)
> Secondary -- Slave

> Now, my line of thinking is as follows.

> If the second drive is not installed at all, the computer boots
> normally.  This would indicate the problem stems from connecting the
> second drive.

> The computer can be successfully booted from a floppy boot disk.
> Then, both drives can be read from and written to.  This would
> indicate that there is nothing wrong with the Cables.

I think here is the key info needed.  If you were using Lilo it would mean that 
the boot info in the lilo.conf is not updated. All that is needed to fix that is 
boot from floppy and then run 'lilo' as root.  Grub may have similar needs.

Warren Hrach, 'warren11@cox.net'

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
