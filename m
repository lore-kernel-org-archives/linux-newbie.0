From: Wladimir Foo <wfoo@linuxvoodoo.com>
Subject: Re: ISO Image
Date: Tue, 9 Jul 2002 14:31:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207091431.31217.wfoo@linuxvoodoo.com>
References: <5.1.0.14.1.20020709111338.0247e5f0@celine>
Reply-To: wfoo@linuxvoodoo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020709111338.0247e5f0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lx Newbie List <linux-newbie@vger.kernel.org>

Here are a few scripts that might help:

To create an ISO image from a directory:

-----cut-----
#!/bin/sh

DIRECTORY=`echo "$1/" | cut -d "/" -f1`
echo Creating ISO image called "$DIRECTORY".iso...
mkisofs -R -J -l "$1" > "$DIRECTORY.iso"

----end cut---

Just make it executable and run it like this:

./makeiso directory

where directory is where you have your files you want to put on CD. This will 
make an iso with the name directory.iso

Here's another script to burn iso's using cdrecord:

--cut---

#!/bin/sh
cdrecord -eject dev=1,0,0 speed=12 fs=16M -isosize -pad "$1"
sleep 2

--end cut--

Again, make this exe. after you've made changes to reflect your current 
hardware. Use cdrecord --scanbus to see what your dev= settings are and set 
the speed.

If you save this file as burniso.sh, just "burn" a cd with "burniso 
directory.iso".

That's it!

hope this helps,

Wlad.

On Tuesday 09 July 2002 02:17 pm, Ray Olszewski wrote:
> An iso9660 filesystem is intrinsically read only, as I recall. To do what
> you want, you need to --
>
>          1. cp the contents of the filesystem to a directory on an ordinary
> (e.g., ext2) filesystem.
>
>          2. Make the changes there.
>
>          3. Use a tool (such as mkisofs; I don't know if there are others)
> to turn the updated directory into an iso9660 image file.
>
>          4. Put the new iso9660 image on a CD (for example, with cdrecord).
>
> At 07:00 PM 7/9/02 +0200, Oliver Ob wrote:
> >This is what I would like to do: Updating a backup then burn new.
> >
> >I copied the old cd using
> >dd=if... of=/image.iso
> >
> >Now I mounted that iso
> >mount -o loop -t iso9660 image.iso /mnt/image
> >
> >It is there, no problems till here.
> >
> >Now it is mounted rw (according to mount)
> >I want to copy one file INTO it.
> >
> >But I get "READ ONLY FS"
> >
> >So what do I do wrong here? It IS mounted rw
> >
> >Please help, I need to get that done for tomorrow.

-- 
http://www.linuxvoodoo.com     

perl -le '$_="75>42833<33.=3?,13406577073890:;90833<330690<3!!";tr[0-?][ 
YXOUIWLVETHDCNM];print'

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
