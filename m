From: Ray Olszewski <ray@comarre.com>
Subject: Re: System stops because /var/log not found after moving to   new partition
Date: Sat, 26 Feb 2005 18:43:24 -0800
Message-ID: <5.1.0.14.1.20050226182711.0c509598@celine>
References: <002401c51c19$11dccb90$0db3fea9@kath.state.gov>
Mime-Version: 1.0
In-Reply-To: <002401c51c19$11dccb90$0db3fea9@kath.state.gov>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: bhamal@wlink.com.np, linux-newbie@vger.kernel.org

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
>
>
>Bu I am facing one problem.
>
>When I boot my system logger does not see the /var/log which has been moved
>to the new location  .
>
>The system just hangs .

It should not really hang, though it might wait 3 minutes or so to revoder 
(a typical timeout for this sort of problem, but I'm just guessing at the 
value).

In any case, you do have a problem, and it is that your /etc/fstab does not 
contain entries to mount the other partitions. The file you attached only 
has an entry for the root filesystem:

LABEL=/                 /                       ext3    defaults        1 1
none                    /dev/pts

You need a series of entries for the other partitions. I don't have such a 
system running here, so I can only give you an approximate illustration of 
what you need, not a working example. On one of my systems --

/dev/hda4       /home   ext2    defaults                        0       2

-- mounts a separate partition at /home . You need similar entries for all 
your partitions. But if I read your description correctly, you have a 
different problem too ... you tried to put 2 top-level directories into a 
single partition.

You can do that, but doing it is a bit icky. What you need to do is 
something like this (I'll use /usr and /home in the example). In fstab, put

/dev/hda5       /custom1   ext3    defaults                        0       2

Then create 2 symlinks:

         ln -s /custom1/home     /home
         ln -s /custom1/usr      /usr

Oh, you will of course have o create the mount point /custom1 as well.


>When I boot in single mode by passing an argument to my kernel that does
>show in the dmesg in the new location .
>
>In addtion when I run a command like 'clear ' it shows that it could not
>find the library to run it .

I doubt it, at least for the actual example (I don't know what commends you 
think are "like" clear, so I can't generalize from your instance).

What you probably get is a message like this:

autovcr@kuryakin:~$ clear
-bash: clear: command not found

That's because the clear command is itself in /usr/bin, and your system is 
having trouble finding that directory. (clear only uses libraries that are 
normally in /lib, not ones in /usr/lib, so I doubt you are seeing clear 
unable to find libc6 or libncurses.)

>I have mounted hda5 & hda6 in my fstab .

Not the one you attached to your message.

>I did create soft link for my new var  , new tmp & new usr to the the /var ,
>/tmp , /usr as ffs :-
>
>ln -s /mnt/hda5/var  /var
>ln -s /mnt/hda5/tmp /tmp

This should serve; it is similar o my sugestion above.

>ln -s /mnt/hda6/usr /usr

This too.


>I moved the old files using the ff commands:-



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
>
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
