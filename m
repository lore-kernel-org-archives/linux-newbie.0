From: chuck gelm <chuck@gelm.net>
Subject: Can't locate module memory_cs
Date: Wed, 12 Jan 2005 15:00:18 -0500
Message-ID: <41E581D2.6040503@gelm.net>
References: <Pine.LNX.4.58.0501102258510.7477@localhost.localdomain> <41E445EB.5080603@cwazy.co.uk>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41E445EB.5080603@cwazy.co.uk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Howdy, Everyone:

  I am trying to use any pcmcia cards on my new laptop.
Slackware v10.0, bareacpi.i, kernel-2.4.26
HP Pavilion, zv5410, AMD64, 512M RAM, 60G HD

...
kernel: cs: warning: no high memory space
...
kernel: cs: unable to map card memory!
...
cardmgr[76]: + modprobe: Can't locate module memory_cs
...

Any/all my pc-cards fail with similar report in /var/log/messages:
(I noticed that when it probes for high memory,
   it excludes exactly what it probes!             :-|       )
...
Jan 12 14:03:11 gelmce-3 cardmgr[76]: socket 0: Anonymous Memory
Jan 12 14:03:11 gelmce-3 kernel: cs: memory probe 0xa0000000-0xa0ffffff: 
excluding 0xa0000000-0xa0ffffff
Jan 12 14:03:11 gelmce-3 kernel: cs: memory probe 0x60000000-0x60ffffff: 
excluding 0x60000000-0x60ffffff
Jan 12 14:03:11 gelmce-3 kernel: cs: warning: no high memory space 
available!
Jan 12 14:03:11 gelmce-3 kernel: cs: memory probe 0x0d0000-0x0dffff: 
excluding 0xd0000-0xdffff
Jan 12 14:03:11 gelmce-3 kernel: cs: memory probe 0x0e0000-0x0effff: 
excluding 0xe0000-0xeffff
Jan 12 14:03:11 gelmce-3 kernel: cs: memory probe 0x0c0000-0x0cffff: 
excluding 0xc0000-0xcffff
Jan 12 14:03:11 gelmce-3 kernel: cs: memory probe 0x0f0000-0x0fffff: 
excluding 0xf0000-0xfffff
Jan 12 14:03:11 gelmce-3 kernel: cs: unable to map card memory!
Jan 12 14:03:11 gelmce-3 last message repeated 5 times
Jan 12 14:03:11 gelmce-3 cardmgr[76]: executing: 'modprobe memory_cs 2>&1'
Jan 12 14:03:11 gelmce-3 cardmgr[76]: + modprobe: Can't locate module 
memory_cs
Jan 12 14:03:11 gelmce-3 cardmgr[76]: modprobe exited with status 255
Jan 12 14:03:11 gelmce-3 cardmgr[76]: module 
/lib/modules/2.4.26/pcmcia/memory_cs.o not available
...

Where do I go for help?

Regards, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
