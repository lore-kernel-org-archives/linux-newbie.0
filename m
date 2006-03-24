From: Stephen Samuel <samnospam@bcgreen.com>
Subject: Re: Lexar Jump Drive & Linux??
Date: Fri, 24 Mar 2006 14:43:36 -0800
Message-ID: <44247618.4060701@bcgreen.com>
References: <20060324213842.GA1272@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20060324213842.GA1272@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Greetings: One year ago I bought a Lexar 256mB Jump Drive; put an
> ext2 FS on it and used it to transport small files from one Linux
> machine to another, all running 2.4.XX kernels, and mounting the
> drive as /dev/sda1, per dmesg...
>
> All of a sudden I couldn't write to it unless the files were less
> than 30mB total size.. I figured the drive must be bad; still in
> warranty according to Lexar, so I contacted their support people..
>
> First off they say I must reformat the drive using Windows and
> included instructions for doing this with Win98SE or XP... SE didn't
> even see the drive so I fetched the newest driver from their site and
> never did get it to work...
>
> Then I went to an XP machine and was able to format the drive as per
> their instructions so it now seems to work fine as long as it's
> formatted FAT32  (VFAT)...
>
> Am I presuming I have to _not_ use a Linux FS with this or other jump
> or flash drives?? (I do have a UL641 64mB drive that's fine ext2, so
> far) I've been telling some that the Lexar 256 drive works with
> Linux.. I'll have to retract that unless I can figure out what
> happened, eh?? Any comments. TIA.. (Of course the drive 'specs' don't
> list Linux, as usual.) :^(
>   

Shoulda stopped at step 1.. They had it specified as
working with Se. If that didn't work then you could tell
them it was broken and get a replacement.
Now that you have it working with XP, it's a lot harder
to scream at them for having a dead drive.
:-)

Hey, they gave the specs, not me.


If it was working with Linux to begin with, I'd say that
most things were fine... There may have been some
problems with reading/writing certain blocks in the
device. I'd try exercising it with something like the
'badblock' command in Linux.

Did you have any errors associated with the drive in
/var/log/messages?

You can also run the system with heavy debugging...

Presuming it's just a desktop (as opposed to a heavily loaded
server which would produce lots of I/O if you do the following):


echo "*.debug /tmp/debug" >> /etc/syslog.conf

killall -HUP syslogd

That'll have syslog putting lots of stuff in /tmp/debug...
(( Notice the double '>>' on the 'echo' command.. that says
APPEND (as opposed to trashing the whole file )).

then you can go:
tail -f /tmp/debug
and look for any interesting I/O errors or something
else while playing with the drive...

One thing that I'll have to ask (OK: 2)

1) have you always remembered to unmount the device before
pulling it out??
2) did you try doing a full FSCK?

I'd also suggest using ext3fs, which is a good bit more
resilient than ext2fs to having the drive accidently pulled out
without an unmount.

-- 
Stephen Samuel +1(778)861-7641             samnospam@bcgreen.com
		   http://www.bcgreen.com/
   Powerful committed communication. Transformation touching
     the jewel within each person and bringing it to light.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
