From: Arthur Kng <arthur_kng@yahoo.com>
Subject: Hard disk repartitioning
Date: Wed, 2 Apr 2003 20:16:32 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030403041632.54806.qmail@web20711.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Dear all,

I have a 20GB hard disk with a 5GB primary partition(C
drive, DOS partition) and 15GB logical partition(D
drive, extended DOS partition). The C drive has WinME
and all application softwares and has 3.74 GB of free
space. The D drive has all my data and has 9.84 GB of
free space. I want to install Linux on this box. 

    i want to have a dual boot system and donot want
to lose any existing data. can anyone please suggest
how do i repartition my disk. ive read a few articles
and HOWTOs on this and frm what i gather is that a
dual boot system should look like this: 

           1)Windows partion (FAT32)
           2)Linux partition
           3)Swap partition
           4)Partition for data accesible from Windows
and Linux(FAT32)

       now these articles explained this
repartitioning when their original disk had a single
primary dos partition. so my problem is how do i
repartition my disk which has a primary and a logical
partition?

 
   also i have 128MB RAM. so what should be the size
of my Swap partition?

      thanks for your help .

          AK.  

__________________________________________________
Do you Yahoo!?
Yahoo! Tax Center - File online, calculators, forms, and more
http://tax.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
