From: Arthur Kng <arthur_kng@yahoo.com>
Subject: Hard disk repartitioning-II
Date: Fri, 4 Apr 2003 06:51:34 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030404145134.3911.qmail@web20711.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hey all,
 
      First up, thank you everyone for your prompt
help. you've really made it easier for me.
reading all your posts i've come up with a plan which
goes like this:

(  just to remind you, i have a 20GB disk, C drive:5GB
having WinME(FAT32), D drive: 15GB having all my
data(FAT32), 128MB RAM )

   1)back up all my data at a friends place. fdisk and
delete all existing partitions. make a          
primary partition of 10GB on which i'll load the
Windows OS and which will also have the         data
which i want to access from Win and Linux.

   2)in the 10GB thats left i'll have 4GB for '/'
where i'll load Linux.

   3)the remaining 6GB will be the '/home' partition,
which will have the linux only data.

   4)mine is a desktop machine for normal home use. at
any given time i run atmost                     
(browser+mp3player) or (a programming IDE + mp3player)
etc. now i have 128MB of RAM so 
       i'm thinking of doing away with the swap
partition but i'm not too sure about this. so if      
 i'm wrong please do tell me.


so in short:

    PRIMARY PARTITION: Windows (FAT32)-10GB
      /dev/hda1

    EXTENDED PARTITION
      /dev/hda2
              LOGICAL PARTITION 1 LINUX OS-4GB
               /dev/hda5

              LOGICAL PARTITION 2 LINUX /home-6GB
               /dev/hda6

   i know this is a long way to do it but this way i
avoid having 2 FAT32 partitions (one for Win OS and
the other for my data) and have a substantial space
for the 'Linux only data' partition.

now i would like to know what you all think about
this. if i'm doing wrong please do tell as i'm just
starting out on Linux.

thank you for your help.

AK




__________________________________________________
Do you Yahoo!?
Yahoo! Tax Center - File online, calculators, forms, and more
http://tax.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
