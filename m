From: jason@netconnect.2y.net
Subject: Software Raid
Date: Sun, 12 May 2002 12:18:48 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1240.142.165.167.12.1021223928.squirrel@www.netconnect.2y.net>
References: <1965.142.165.167.12.1021165968.squirrel@www.netconnect.2y.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1965.142.165.167.12.1021165968.squirrel@www.netconnect.2y.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

  I spent a couple of hours last weekend setting up a software raid on a 
aging P100. The machine has 64MB of ram and is running RH 6.1. Because of 
limited funds and resources I've done something a little strange in order to 
play with the raid tools, which may be what's causing my troubles but I 
thought I'd run it past you pros anyway.

  The machine is sort of a development and testing machine for me which has 
two drives. Drive one is a 4GB set up as a dual boot with Linux and Win98 
each getting half the drive. The second drive is a 1GB (this is where I got 
creative) that I've partitioned using fdisk into 4 partititions. I've used 
these 4 partitions to create and test the various raid levels and generally  
screw around with failures and such. 

  It was while playing with a raid5 array that I started to notice some stuff 
that I have questions about.

  1. I created a 4 disk raid5 with 3 active drives(partitions) and one spare 
drive(partition). To simulate a failure, I would go into fdisk and delete one 
of the partitions assuming (probably incorrectly) this would cause the raid 
to see the missing partition as a failed disk and rebuild the array using the 
spare. It didn't. It didn't notice the partition was missing unless I ran 
raidstop then raidstart or rebooted the machine. It would rebuild to the 
spare after either of those things were done, but not before. Is this normal, 
or is there some kind of schedule that it runs on to check the integrity of 
the drives and I just didn't wait long enough. The other possibility in my 
mind was, because all the partitions making up the raid are really just one 
drive, is something funky going on with the software causing it not to notice 
anything unless it's forced to reread the raidtab.

  2. Question two is about CPU overhead. I realize this machine isn't exactly 
a rocket, but while running the raid5 the raid software was eating up more 
than half the CPU while copying, the copying was extremely slow with the 
raid5d overshadowing cp. Once again this could be my odd little set up 
coupled with a disk that's very busy trying to write to 3 partitions at the 
same time, but I was just wondering if the software raid setup can be abit of 
a hog when it comes to the processor.

  3. My final question is about the fact I was able to corrupt the raid5 by 
copying too much info to it. Basically I copied 500MB to the a raid with 
400MB available....no error.....no warning......it just happily copied it. 
The result was a corrupt raid that would not initialize on reboot. Not a good 
thing for something that's supposed to be protecting data. Once again it 
could be, and probably is, my goofy little setup but I thought I'd ask. 
Interesting thing here is I did a "mkraid --force /dev/md0  to recreate the 
array expecting to lose everything, and BOOM it came up complete with all 
data intact except for the last copy that caused all the problems. 

  Thanks

  Jason  





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
