From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: zero-sized /dev/dsp after forced shutdown
Date: Tue, 19 Oct 2004 20:03:24 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0410191926490.10176-100000@legolas.personal.engin.umich.edu>
References: <5.1.0.14.1.20040425142611.02d29f00@celine>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040425142611.02d29f00@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

Experimenting with xmms-plugins on a debian (sid) machine running 2.4.18
on an athlon 2100 chip caused the machine to hang within X while xmms was
running. I had to resort to rebooting the machine after logging in
remotely. After the machine rebooted, I am unable to hear audio. I am able
to set the mixer controls with aumix and load/play songs in xmms, but hear
no sound output (the cables are connected and fine). lsmod did not show my
sound-card module (emu10k1) loaded, so I modprob'd for it. Post modprobe
heres the output of lsmod | grep emu10k1:

emu10k1                55648   0
ac97_codec              9696   0 [emu10k1]
sound                  54508   0 [emu10k1]
soundcore               3652   7 [emu10k1 sound]

ls -lF /dev/dsp* shows:
crw-rw-rw-  1 root audio 14,  0 Mar 14  2002 /dev/dsp
crw-rw-rw-  1 root audio 14, 19 Mar 14  2002 /dev/dsp1
crw-rw-rw-  1 root audio 14, 35 Mar 14  2002 /dev/dsp2
crw-rw-rw-  1 root audio 14, 51 Mar 14  2002 /dev/dsp3

ls -lF /dev/mixer* gives: 
crw-rw-rw-  1 root audio 14,  0 Mar 14  2002 /dev/mixer
crw-rw-rw-  1 root audio 14, 16 Mar 14  2002 /dev/mixer1
crw-rw-rw-  1 root audio 14, 32 Mar 14  2002 /dev/mixer2
crw-rw-rw-  1 root audio 14, 48 Mar 14  2002 /dev/mixer3

I thought there was something strange about the sizes being 0 bytes. What 
may be happening, and how can I fix this? 

Thanks,

-K


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
