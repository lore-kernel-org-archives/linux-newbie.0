From: Ray Olszewski <ray@comarre.com>
Subject: RE: System stops because /var/log not found after moving to    new partition
Date: Sun, 27 Feb 2005 08:42:46 -0800
Message-ID: <5.1.0.14.1.20050227080737.0209d820@celine>
References: <5.1.0.14.1.20050226185112.0c4db978@celine> <000201c51c84$ba33e0b0$0db3fea9@kath.state.gov>
Mime-Version: 1.0
In-Reply-To: <000201c51c84$ba33e0b0$0db3fea9@kath.state.gov>
References: <5.1.0.14.1.20050226185112.0c4db978@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:12 AM 2/27/2005 +0545, bj wrote:
[...]
>Hi Ray !
>
>Thank you for the prompt reply.
>
>80 % of the solution worked .
>
>1. I did mount hda5 & hda6 as below .

That looks good. But I still wish you had done what I asked and provided 
the output of df.

>2. After I keyed in the symbolic links as below my commands could find the
>lib .

I am still puzzled as to why this fix solves the library problem. I wish 
you had answered my earlier question about where the ncurses5 library is 
kept on your system.

>3 But the sym link to /var did n't work & once I reboot , the system created
>a /var by itself .The system created /var is mostly empty . If I delete that
>auto created /var , and reboot , it creates the /var again .  The contents I
>have listed below .

The commands you transcribed below are incomplete and should not work. Not 
any of them.  I asked you to provide the output of "ls -l /" this time 
around, and you did not. Please do so, along with a correct transcription 
of the commands you are using to create the symlinks.

>4. yes , the system stopped for 5 minutes looking to start the system logger
>. After  it could not find it ,  the boot process move forward and the
>normal login prompt did come( not single user but multi user login prompt )
>. So you were right , the system didn't hang but just stopped for 5 minutes
>trying to start the system logger .
>.
>
>I did mount hda5 & hda6 in the fstab .
>
>Cat /etc/fstab gives the ff
>
>LABEL=/                 /                       ext3    defaults        1 1
>none                    /dev/pts                devpts  gid=5,mode=620  0 0
>none                    /proc                   proc    defaults        0 0
>/dev/hda5                       /mnt/hda5                       ext3 
>defaults        1 2
>/dev/hda6                       /mnt/hda6                       ext3 
>defaults        1 3
>none                    /dev/shm                tmpfs   defaults        0 0
>/dev/hda3               swap                    swap    defaults        0 0
>/dev/fd0                /mnt/floppy             auto    noauto,owner,kudzu 0
>0
>/dev/cdrom              /mnt/cdrom              iso9660
>noauto,owner,kudzu,ro 0 0

What does "ff" mean? You use it several times.

>The symbolic link also worked . After I keyed in the ff :-
>
>
>cd /
>ln -s /mnt/hda5/var
>ln -s /mnt/hda5/tmp
>ln -s /mnt/hda6/usr
>ln -s /mnt/hda6/home

As I wrote above, these are incomplete. They should be of the form
         ln -s /mnt/hda6/usr     /usr

It is possible that your current problem arises from nothing more than your 
entering 3 of the commands correctly and the fourth (the one for /var) 
incorrectly.

Or you may have entered them too late ... after syslogd has started.

Or you may have removed the actual /usr, /tmp, and /home directories, 
allowing ln -s to recreate them as symlinks ... but forgotten to remove 
/var (this *might* be what you mean by "has been created auto" below), 
which would cause even a correct symlink command to fail.

Or some other init script may be doing something (for example, noticing 
that /var is absent and creating it) that interferes with your symlink 
approach.

Or maybe something else. It's hard to say without more detail.

Please, next time, provide the diagnostics I ask for, instead of (or in 
addition to) the ones you think are interesting.

>Once I cd /  and give the four link (ln ) commands three work .
>The result running file command on the links :-

I don't know what this sentence means, specifically the phrase "running 
file command on the links :-".


>usr: symbolic link to /mnt/hda6/usr
>
>tmp: symbolic link to /mnt/hda5/tmp
>
>
>But the link to var didn't .
>
>It gives no error message. But when I type reboot , it shows that it could
>not find a file shutdown.pid under /var .
>  Once I reboot , it gives quite few error messages that shows that it could
>not still find /var.

I assume we are talking about a normal multi-user boot/init here (another 
thing you may recall my asking you to be specific about in my prior 
response). In any case, it is impossible to interpret these messages when 
you tell us neither what they say or when in the boot/init process they 
appear. For example, are the messages really about /var, or might they be 
about /var/log ?

>It does stop around 5 minutes trying to start the system logger & after 5
>minutes , it keep  boots successfully.
>
>After I log in I notice a /var directory has been created .
>This /var has been created  auto , as I didn't create it  .
>
>The system is auto creating this directory & removing the sym link ,and so
>it does not find the other needed files in /var.
>
>Why do you think this is happening ?
>
>In addition I would also like to have the command to mount a partition read
>only such as /usr on a readonly partition.

         mount  -o remount,ro /dev/whateveritis /usr

is one way. Read the man page for mount for the details.

But remember that in your setup, your /usr directory is *not* its own 
partition (which is why I used the "somethingorother" above, lacking a real 
example from your system).


>Cheers,
>bj
>
>
>When I do ls -lR on the auto created /var , it gives out the ff contents :-
>
>var:
>total 4
>drwxr-xr-x    3 root     root         4096 Feb 27 09:28 lib
>
>var/lib:
>total 8
>-rw-------    1 root     root          512 Feb 27 09:28 random-seed
>drwxr-xr-x    2 root     root         4096 Feb 27 09:22 rpm
>
>var/lib/rpm:
>total 308
>-rw-r--r--    1 root     root         8192 Feb 27 09:22 __db.001
>-rw-r--r--    1 root     root      1310720 Feb 27 09:22 __db.002
>-rw-r--r--    1 root     root       360448 Feb 27 09:22 __db.003
>-rw-r--r--    1 root     root        12288 Feb 27 09:22 Name
>-rw-r--r--    1 root     root        12288 Feb 27 09:22 Packages

OK. As I aked before, I want to see the output of ...

         ls -l /
         df
         find / -name libncurses*                (I didn't give the actual 
command before; I
                                         just asked where libncurses5 was 
located)

... and all actual error messages (not summaries or paraphrases) that you see.

Also, please provide the output of

         ls -l /mnt/hda5
         ls -l /mnt/hda6


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
