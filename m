From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: CD writing in ext2 filesystem
Date: Thu, 25 Apr 2002 15:52:45 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02042515524505.04696@unix.pa3gcu>
References: <200204241631.59061.mssnlayam@cs.annauniv.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200204241631.59061.mssnlayam@cs.annauniv.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>, Pierre Rousselet <pierre.rousselet@wanadoo.fr>
Cc: GNU/Linux Newbie <linux-newbie@vger.kernel.org>

On Thursday 25 April 2002 01:24, Suriya Narayanan M S wrote:
> Hi,
> 	Thank you very much for help. Now I am able to write
> CDs in native ext2 format. This is very useful since there is
> no need to bother about long filenames, maximum depth, etc.
> I would like to summarize how to do it. This is for the benefit
> of others who are new to the list or have lost track of this
> discussion.

I cant imagen why you think you need to use what you have explained, the 
first thing is that if other's try your way then they will possably have the 
same problem i did with 'dd', with such a large file 650M dd will say;
dd: memory exhausted or at least it does here.
I have 256M and 300M swap, i dont know why it says that and to be honest i 
dont care. What i am going to explain is another way to do what you want but 
in my opinion "much easyer" and "cleaner".

Use a front end like xcdroast, configure xcdroast's H/D settings to the 
directory with all your files you want to burn.
Save setup and go to main screen.
Click "master tracks" and choose what you want to burn. You can now choose 
iso9660 options or leave them "as is" click on "Create session/image" click 
"calculate size", then click either "master to image" or "on the fly" thats 
it.

No need to create any files no need to "battle" with dd telling you that your 
memory is exhausted and no need to clean up afterwards and forall no need to 
have "extra" disk space to create such a large file on, (which really you 
dont need).

You will get long file names exachtly as you see it on your hard drive.
In my opinion that is one hell of a lot easier than your way.

No disrepects but why drive 1000 miles to go from a to b when the distance 
between the two is only 200 miles.


> 	The point to note is the block size has to be 4k.
>
> 	Create a file of the required size
> $ dd if=/dev/zero of=file.ext2 bs=650M count=1
> 	Create an ext2 filesystem in it. Block size 4096 is important
> $ mkfs.ext2 file.ext2 -b 4096
> $ mkdir mountdir
> # mount file.ext2 mountdir -o loop
> # cp something mountdir
> # umount mountdir
> 	Write the CD
> # cdrecord dev=0,0,0 speed=4 -data file.ext2
> 	Now mount the CD and use it
> # mount /dev/cdrom mountdir -t ext2 -o ro
>
> Thank you,
> Suriya Narayanan M S

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
