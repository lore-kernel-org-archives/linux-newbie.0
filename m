From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: strange freeze
Date: Wed, 7 May 2003 21:11:56 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030507211156.A1120@neutrino.particles.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello!

I know this is a little bit off topic, but I also know that the list is
being followed by some very skillfull admins, whose experience might help. :-)

I have a dual box with Windows XP and SuSE Linux 8.2. Each operating system
has its own hard disk. Both of the hard disks are IDE.

The problem is that the box suddenly freezes. If it is on Windows it 
freezes (i.e. no mouse movement, no disk activity, num-lock can't change
state, i.e. the keyboard is dead [*]) and after 10-15 secs it gets back to
normal. On Linux it freezes (exactly the same symptoms) forever.

My guess is that it's a hardware or a power supply related problem. I 
exclude the last case, because noone else in the office has faced such a
problem and I even changed the cable.

So, I have to find if it has to do with the CPU, memory, hard disk or even
the graphics card's memory. As far as the hard disk case is concerned, I have
noticed that Windows get frozen, randomly, but *mostly* when a file request is 
opened. OTOH, on Linux I can reproduce the problem when I run the updatedb program. 
But, each OS is in a separate disk! Of course during the updatedb process the
Windows fs (FAT32 not NTFS) is beeing read (it is mounted at boot time), but I 
hardly can believe a damaged fs can freeze the whole system.

ANW, if anyone has anything to suggest I'll be happy to hear him/her. I'm looking
for a way to find the root of a problem by using some Linux diagnostic tools (I'll
start with memcheck86), because I know quite a little about Windows. So, suggestions
for hardware diagnosis via Linux software is welcomed, too. :-)

Thank you for your time!

Regards,
Elias

[*] The CPU cooler works.

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
