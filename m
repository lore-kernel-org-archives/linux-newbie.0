From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-RW-Drive
Date: Wed, 29 Dec 2004 08:15:57 -0800
Message-ID: <5.1.0.14.1.20041229074910.0217b010@celine>
References: <20041229070643.E79E71737F@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041229070643.E79E71737F@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-673D27F4"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

I'm coming into this discussion fairly late, so I'll try not to duplicate 
what others have already covered.

At 03:06 PM 12/29/2004 +0800, Peter H. wrote:

>Season Greetings,
>
>Slackware 10, Kernel 2.4.26
>
>I got myself an Asus Atapi CD-RW-Drive and I am not sure if this was the 
>right
>choice for Linux.

ATAPI drives are pretty standard things these days, so I'd be surprised if 
there was any special problem with this model as such. Any model will 
occasionally have an individual defective drive though, so you shouldn't 
completely rule out that possibility. But the rest of what you write leaves 
me guessing that you do not have a drive problem.

>  I was able to make it work following the instruction of the
>program xcdroast, however, some things seem strange.
>
>I always get error messages telling not to use atapi instead scsi.

Others have said a lot here already, but I want to raise more fundamental 
puzzlement. I didn't know cdrecord (see below) was even able to burn to 
atapi devices under 2.4.x kernels. You might want to report the error 
messages in more detail.

>I had a CD with picture files on. When I copied them to the HD I can't open
>them and copying back to the CD I can't open them as well any longer. In fact
>I can not mount the CD anymore. Only xcdroast can.
>$ mount /mnt/cdrom
>mount: Not a directory

People have pretty much ignored this part of your message, and it's because 
(I think) it lacks any helpful detail. But it really is the heart of your 
inquiry, so you would benefit, I think, from filling in the missing pieces 
for us.

1. What kind of picture files?

2. How did you copy them to the HD? I'd assume you mean you mounted the CD, 
then used cp to transfer them ... but I've been burned before by assuming 
the "obvious" answers to things left out of trouble reports.

3. What application are you using to try to open them? How does it fail? Do 
the pictures display successfully in some other setting (if yes, details, 
please)?

4. How do you copy them back to the CD? (I don't even have a guess about 
this one.)

5. As to your mount problem ... what does the entry in /etc/fstab for 
/mnt/cdrom look like?

>Trying too boot Knoppix 3.4 from the CD I get only a blank screen. Booting
>from CD and then switching to HD, Knoppix works alright.

I didn't see any responses to this one either, probably for the same reason 
as above. I would point out that this is (probably; you don't actually say) 
only a CD-reading issue, unrelated to any xcdroast issues you have. It is 
probably some problem specific to Knoppix CDs, an area where I have no 
experience ... perhaps a Knoppix user here can address this part separate 
from the rest of your query?

>It seems that xcdroast can only write .wav and .iso files?????

xcdroast is just a user interface to other applications that do the actual 
work. The actual writer (on my systems anyway) is cdrecord, and it can 
*write* anything you care to write.

The real issue is whether you can *read* what's written afterwards. The 
normal file types for reading are:

         iso (contains an iso9660 filesystem that can be mounted by any 
kernel that supports that filesystem type, or by any standard version of 
Windows or MacOS); and

         wav (plays in any CD player that can physically read a CD-RW disk 
and any Linux, Windows, or Mac software that knows how to treat a CD drive 
as a music source).

If you are trying to write some other type of file, you might want to tell 
us what it is and how you are trying to read it after it gets written.

>Questions:
>
>Is there a better CD-RW-Drive for Linux than Asus? The shop is willing to
>exxchange.
>
>Are there better programs than xcdroast to R+W and which?


The other standard one is cdrdao. I'm under the impression that it has 
lagged relative to cdrecord, though, so it *probably* is not a solution to 
any of your problems.





-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.296 / Virus Database: 265.6.6 - Release Date: 12/28/2004


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
