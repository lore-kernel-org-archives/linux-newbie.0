From: "bj" <bhamal@wlink.com.np>
Subject: RE: System stops because /var/log not found after moving to   new partition
Date: Sun, 27 Feb 2005 10:12:11 +0545
Message-ID: <000201c51c84$ba33e0b0$0db3fea9@kath.state.gov>
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


Hi Ray !

Thank you for the prompt reply.

80 % of the solution worked .

1. I did mount hda5 & hda6 as below .

2. After I keyed in the symbolic links as below my commands could find the
lib .

3 But the sym link to /var did n't work & once I reboot , the system created
a /var by itself .The system created /var is mostly empty . If I delete that
auto created /var , and reboot , it creates the /var again .  The contents I
have listed below .

4. yes , the system stopped for 5 minutes looking to start the system logger
. After  it could not find it ,  the boot process move forward and the
normal login prompt did come( not single user but multi user login prompt )
. So you were right , the system didn't hang but just stopped for 5 minutes
trying to start the system logger .
.

I did mount hda5 & hda6 in the fstab .

Cat /etc/fstab gives the ff

LABEL=/                 /                       ext3    defaults        1 1
none                    /dev/pts                devpts  gid=5,mode=620  0 0
none                    /proc                   proc    defaults        0 0
/dev/hda5			/mnt/hda5			ext3	defaults	1 2
/dev/hda6			/mnt/hda6			ext3	defaults	1 3
none                    /dev/shm                tmpfs   defaults        0 0
/dev/hda3               swap                    swap    defaults        0 0
/dev/fd0                /mnt/floppy             auto    noauto,owner,kudzu 0
0
/dev/cdrom              /mnt/cdrom              iso9660
noauto,owner,kudzu,ro 0 0



The symbolic link also worked . After I keyed in the ff :-


cd /
ln -s /mnt/hda5/var
ln -s /mnt/hda5/tmp
ln -s /mnt/hda6/usr
ln -s /mnt/hda6/home

Once I cd /  and give the four link (ln ) commands three work .
The result running file command on the links :-

usr: symbolic link to /mnt/hda6/usr

tmp: symbolic link to /mnt/hda5/tmp


But the link to var didn't .

It gives no error message. But when I type reboot , it shows that it could
not find a file shutdown.pid under /var .
 Once I reboot , it gives quite few error messages that shows that it could
not still find /var.

It does stop around 5 minutes trying to start the system logger & after 5
minutes , it keep  boots successfully.

After I log in I notice a /var directory has been created .
This /var has been created  auto , as I didn't create it  .

The system is auto creating this directory & removing the sym link ,and so
it does not find the other needed files in /var.

Why do you think this is happening ?

In addition I would also like to have the command to mount a partition read
only such as /usr on a readonly partition.

Cheers,
bj


When I do ls -lR on the auto created /var , it gives out the ff contents :-

var:
total 4
drwxr-xr-x    3 root     root         4096 Feb 27 09:28 lib

var/lib:
total 8
-rw-------    1 root     root          512 Feb 27 09:28 random-seed
drwxr-xr-x    2 root     root         4096 Feb 27 09:22 rpm

var/lib/rpm:
total 308
-rw-r--r--    1 root     root         8192 Feb 27 09:22 __db.001
-rw-r--r--    1 root     root      1310720 Feb 27 09:22 __db.002
-rw-r--r--    1 root     root       360448 Feb 27 09:22 __db.003
-rw-r--r--    1 root     root        12288 Feb 27 09:22 Name
-rw-r--r--    1 root     root        12288 Feb 27 09:22 Packages



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
