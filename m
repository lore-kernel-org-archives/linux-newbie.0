From: "bj" <bhamal@wlink.com.np>
Subject: RE: System stops because /var/log not found after moving to   new partition
Date: Sat, 26 Feb 2005 23:30:04 +0545
Message-ID: <000201c51c2b$8b90c7e0$0db3fea9@kath.state.gov>
References: <5.1.0.14.1.20050226185112.0c4db978@celine>
Reply-To: <bhamal@wlink.com.np>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050226185112.0c4db978@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org



-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Ray Olszewski
Sent: Sunday, February 27, 2005 8:44 AM
To: linux-newbie@vger.kernel.org
Subject: Re: System stops because /var/log not found after moving to new
partition


At 09:16 PM 2/26/2005 +0545, bj wrote:
>Hi !
>
>I have a Red Hat 8.0 on a intel 2.4 machine with 512 MB .
>
>I have kernel 2.4.20-30.8-legacy & 2.4.20-30.8-legacy bigmem.
>
>I used to have all my directories /var , /tmp , /usr , /home under one
>partition / .
>
>Thanks to everybody , now I was able to re-partition my drive into extended
>drives (drives < 4) and move my /var , /tmp into hda5 & ,my /usr , /home
>into /hda6 .

For future reference, it is a lot easier to associate partitions with a
single top-level directory than with multiple ones, as you have chosen to
to. For example, if I assign a partition to /home, I can just mount it
there in fstab, without needing to use the symlink indirection you use:

         /dev/hda4       /home   ext2    defaults                        0
      2

>Bu I am facing one problem.
>
>When I boot my system logger does not see the /var/log which has been moved
>to the new location  .
>
>The system just hangs .

At what point does it "just" hang? What is the last message on screen? And
how long do you wait ... are you sure it is a true hang and not a problem
that times out after, say, 3 minutes?


>When I boot in single mode by passing an argument to my kernel that does
>show in the dmesg in the new location .
>
>In addtion when I run a command like 'clear ' it shows that it could not
>find the library to run it .

Where does your system have libncurses.so.5 (the "missing" library)? On my
systems,it is always in /lib, a hard place to lose.

>I have mounted hda5 & hda6 in my fstab .
>
>I did create soft link for my new var  , new tmp & new usr to the the /var
,
>/tmp , /usr as ffs :-
>
>ln -s /mnt/hda5/var  /var
>ln -s /mnt/hda5/tmp /tmp
>
>ln -s /mnt/hda6/usr /usr

This should all work fine, assuming the symlinks are created immediately
after the partitiions are mounted during the init process.

>I moved the old files using the ff commands:-
>
>cd source directory
>
>cp -ax * /mnt/usr5/var
>
>or
>
>cd /src/dir ; tar cf - . | (cd /dest/dir && tar xvf - )
>
>
>
>
>But still it does not work .
>
>Please find attached the dmesg & library error and fstab.

I assume the dmesg example is from the single-user boot, not the one that
"just hangs". So it doesn't tell us what is up with the hang. Next time,
please also include the output of ...

         ls -l /
         df

... and if you are reporting the results of two different boot/init
sequences (single user and multiuser) please be VERY VERY clear about which
attempt each result goes with.

>Please advice.
>
>Thank you for your help in advance.
>
>bj
>
>
>
>
>
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs


Hi!

Thank you for the prompt reply .

Since I have Red Hat 8 , I had downloaded and installed (configure;make;make
install) the latest stable qt-x11-free-3.3.4 from the /home directory which
I moved .

My understanding was that wherever I downloaded the library will be still be
installed under /lib .

My /lib is where it was from the beginning . I have not moved it .

The system hangs means , the boot process shows "Starting system logger "
then just stays there because it could not find the new /var that has been
moved to /mnt/hda5/var .

The boot process also gives messages such as :-

/etc/rc.d/rc.sysinit:line 596:/var/run/utmp : no such file or directory

/etc/rc.d/sysinit:line 744: /var/log/dmesg:no such file or directory

touch:creating  'var/lock/subsys/keytable" no such file

Hence , it does not find the moved var .

Please find attached the df & ls -l listings :-

ls

total 196
drwxr-xr-x    3 root     root         4096 Feb 13 10:14 applications
drwxr-xr-x    5 root     root         4096 Feb  8 10:01 backup
drwxr-xr-x    2 root     root         4096 Feb  5 04:15 bin
drwxr-xr-x    3 root     root         4096 Feb 25 10:49 boot
drwxr-xr-x   21 root     root       118784 Feb 26 23:00 dev
drwxr-xr-x   70 root     root         8192 Feb 26 23:01 etc
drwxr-xr-x    2 root     root         4096 Jun 21  2001 initrd
drwxr-xr-x    6 root     root         4096 Feb  4 22:49 lib
drwx------    2 root     root        16384 Jun 26  2004 lost+found
drwxr-xr-x    2 root     root         4096 Aug 27  2002 misc
drwxr-xr-x    8 root     root         4096 Feb 26 08:44 mnt
drwxr-xr-x    2 root     root         4096 Aug 23  1999 opt
-rw-r--r--    1 root     root            0 Feb 26 22:32 other
dr-xr-xr-x   33 root     root            0 Feb 26 18:00 proc
drwxr-x---   31 root     root         4096 Feb 25 10:52 root
drwxr-xr-x    2 root     root         8192 Feb  4 23:04 sbin
drwxr-xr-x    3 root     root         4096 Feb  5 04:10 tftpboot

df

Filesystem           1K-blocks      Used Available Use% Mounted on
/dev/hda2              4134932    410416   3514468  11% /
/dev/hda5             10056868    284348   9261656   3% /mnt/hda5
/dev/hda6             19765692   4879948  13881684  27% /mnt/hda6
none                    256972         0    256972   0% /dev/shm
/dev/sda1              1025840    535856    489984  53% /mnt/usb

Thanks,
bj













-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
