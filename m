From: Ray Olszewski <ray@comarre.com>
Subject: Re: System stops because /var/log not found after moving to   new partition
Date: Sat, 26 Feb 2005 18:59:29 -0800
Message-ID: <5.1.0.14.1.20050226185112.0c4db978@celine>
References: <002401c51c19$11dccb90$0db3fea9@kath.state.gov>
Mime-Version: 1.0
In-Reply-To: <002401c51c19$11dccb90$0db3fea9@kath.state.gov>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

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
>I did create soft link for my new var  , new tmp & new usr to the the /var ,
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
