From: Heimo Claasen <hammer@revobild.net>
Subject: Re: block-major-33
Date: 28 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209282047.g8SKl3v06435@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

With configuring a not-so-quite-new laptop I strugled with precisely
this problem. In the 2.2.x kernel based system it was rather a hassle,
the 2.4.x have the PCMCIA 'card service' management (IIRR it was the
earlier cs_mgr module) integrated. All what was needed on that laptop
then was to write a pertinent line for that CF card adapter into the
configuration file for mounting of the various filesystems, fstab.
I have it there as
/def/hde1    /[cf-card]    msdos   ...(noauto and olther spec.s)
    ^^^^^                  ^^^^^
Basicly, CF cards _would_ behave like vfat formatted hard disks - and
do that, if wanted, in a CF-to-IDE _adapter_(*) - but for whatever
reason don't do that when used in those PCMCIA slots.

With that fstab line I would get a "[Failed]" message with booting,
but a manual 'mount /cf-card' when needed will indeed mount it, if it
wouldn't mount automatically when the card is inserted or taken out
(task of that "cs-mgr" which obviously watches one of those pins.)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

(*) Those CF cards have specifications which make them rather directly
pin-compatible with HD or floppy drive connectors on the mainboard.
Theoretically they then behave like just any "(hard) disk drive" -
though note that this is very _different_ from the PCMCIA setup !
I'm just ordering one (<20 USD) and will be curous how it behaves
in the Linux box. That one is even announced as "hot swappable";
though I assume this is comparable to "media changes" with floppies
and Zipdrives, so it would mean to mount/umount the cards with swapping.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
