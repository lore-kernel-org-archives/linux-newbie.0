From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: CD writing in ext2 filesystem
Date: 24 Apr 2002 10:45:04 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1019641504.16651.14.camel@Zebra>
References: <200204232318.55166.mssnlayam@cs.annauniv.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200204232318.55166.mssnlayam@cs.annauniv.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: mssnlayam@cs.annauniv.edu
Cc: linux-newbie@vger.kernel.org

Hmm. Well, when CDs are created, the file system used is called iso9660.
What I _think_ has happened is that you have created a file on your hard
disk inside which you have created an ext2 filesystem, but then then you
recorded that file onto a CD. As far as I know, cdrecord will try and
interpreate the file you give it as either a CD image file (ie an
iso9660 file system) or a ufs file system. What it MAY have done is
created an iso9660 image on the CD and copied your file containing the
ext2 onto the CD as a file. In other words, to get at it you need to
mount the CD (as iso9660) and then mount the file inside the CD file
system.

Try using mount without the -t option - it should recognise the file
system on the CD (if it is a working one) and mount it automatically.
you could then ls /mnt/cdrom and see if the file file.ext2 comes up.

Is there a particular reason why you were trying to put an ext2 fiole
system on the CD rather than an ISO9660 one?

Incidentally, if you just want to copy some stuff to a CD, the easiest
way is to use one of the nice graphical CD writing tools that are around
- try xcdroast, for example.

Hope that some of this helps...

Paul.


On Tue, 2002-04-23 at 18:48, Suriya Narayanan M S wrote:
> On Monday 22 April 2002 01:29, Pierre Rousselet wrote:
>   > Suriya Narayanan M S wrote:
>   > > # mount -t ext2 -o ro /dev/cdrom /mnt/cdrom
>   >
>   > Is there any error message following this command line ?
> Yes.
> mount: wrong fs type, bad option, bad superblock on /dev/cdrom, 
>        or too many mounted file systems
> --
> Guru Brahma Gurur Vishnu
> Gurur Dhevo Maheshwaraha
> Gurur Saakshaath Parabramha
> Thasmai Shree Gurave Namaha
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
