From: Christopher Swope <swopecr@yahoo.com>
Subject: Strange Boot Behavior (cont.)
Date: Thu, 21 Aug 2003 22:49:05 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030822054905.11388.qmail@web13804.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello again,

Can anyone tell me if there is an easy way to reply on-list.  Several
people have responded to my first inquiry, and I expected the
reply-to address to be the list email, but it was their personal
emails instead.

Anyway, I would like to address some of the concerns brought up in
those emails.  My initial hunch was that there was a problem with the
jumpers, but I checked several times to make sure they were okay. 
Nonetheless, after three separate people replied suggesting that I
check the jumpers, I went back just to be sure.  Sure enough, the
jumpers were right.  I did run a little jumper experiment, however,
and here are the results:

If the settings are any of the following, the drives are not
recognized at all.  (These results are not surprising).
    Primary -- Master w/ Slave present
    Secondary -- Cable Select

    Primary -- Master w/ Slave Present
    Secondary -- Master

    Primary -- Anything other than "Master (Single Drive)"
    Secondary -- Not installed

If the settings are any of the following, I get the behavior I
described earlier.
    Primary -- Cable Select
    Secondary -- Slave

    Primary -- Master w/ Slave Present
    Secondary -- Slave

    Primary -- Master (Single Drive)
    Secondary -- Slave

Now, my line of thinking is as follows.

If the second drive is not installed at all, the computer boots
normally.  This would indicate the problem stems from connecting the
second drive.

The computer can be successfully booted from a floppy boot disk. 
Then, both drives can be read from and written to.  This would
indicate that there is nothing wrong with the Cables.

Note also that I have tested nearly every jumper setting for the
secondary drive.  The only option I did not try was setting the
secondary drive to master w/ slave present.  That setting requires
two jumpers, and I don't have an extra one.  I highly doubt, however,
that  that configuration would work.  Thus, if I were setting the
jumpers on the second drive wrong, one of the other options should
have worked.

Finally, I would like to provide some answers to questions that have
come up or might come up:

How old is the BIOS?

I have the latest revision.  It was released sometime in 2000.

Are you sure the BIOS is correct?

Yes.

Do you have confidence in the BIOS?

Not really, but the computer does boot sometimes.

How big is the new hard drive?

80G

The old one?

4G

Have you used two hard drives on the system before?

Yes, but not with this revision of the BIOS.

There is probably more information I could provide still, so if you
want to know, please ask.

Thanks again for your help,
Christopher
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
