From: Hal MacArgle <haltec@kvinet.com>
Subject: CMI-8330 On Board Sound?
Date: Wed, 14 Jul 2004 15:19:58 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040714191958.GA904@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Am in trouble with an on board CMI-8330 SoundPro feature
on a 430TX MB - (ISA/PCI). Slack9.1, bare.i install, kernel 2.4.22..

No module by that designation so hit the Web coming up with AD1848;
modprobe ad1848 installs but doesn't work and the mixer rexima
doesn't like... Apparently AD1848 OK for an older SoundPro chip?

Tried modprobe sb, and all seemed well.. Workbone started the drive
and the rexima mixer report 75% master and 75% CD - and the CD did
spin.. No sound from the sound card line out jack but a hdset to the
drive OK, as well as the MB end of the audio cable.. Normal analog
sound going into the header input jack..

cat /proc/ioports - /interrupts - dma, all reported as expected:
0x220, irq10, dma 1,5. "soundblaster".. (The usually normal IRQ5,
grabbed by PCI during boot.) I wonder??

lsmod reported sb, sb-lib, uart401, sound, soundcore and isa-pnp used
by [sb].. All seemingly normal from my limited experience..

Suspected the "SoundPro HT1869V+ chip," so tried play filename.wav
and it was perfect with the amplified speakers connected to
"line out." Could the chip be broke in one area only?? Maybe the AD
"section?" 

Slack 9.1 installs alsamixer and amixer that has been a problem in
the past because default is zero gain.. Rexima shows 75% unless the
card is muted and rexima doesn't show that?? For some reason
alsamixer or amixer doesn't run on this installation. Could that be a
clue?? The actual chip is marked as above with "pci" on the next
row.. Thats odd because /var/adm/messages reports that isapnp found
the card.. Strange?? dmesg or /var/adm/syslog doesn't mention it at
all and messages only after invoking modprobe sb...

Any suggestions most welcome and TIA..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.1   (2.4.22)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
