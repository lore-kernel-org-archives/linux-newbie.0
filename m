From: Ray Olszewski <ray@comarre.com>
Subject: Re: ISO Image
Date: Tue, 09 Jul 2002 11:17:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020709111338.0247e5f0@celine>
References: <3D2B16AC.C7ADA30@gmx.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D2B16AC.C7ADA30@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Oliver Ob <ob_ok@gmx.net>, Lx Newbie List <linux-newbie@vger.kernel.org>

An iso9660 filesystem is intrinsically read only, as I recall. To do what 
you want, you need to --

         1. cp the contents of the filesystem to a directory on an ordinary 
(e.g., ext2) filesystem.

         2. Make the changes there.

         3. Use a tool (such as mkisofs; I don't know if there are others) 
to turn the updated directory into an iso9660 image file.

         4. Put the new iso9660 image on a CD (for example, with cdrecord).

At 07:00 PM 7/9/02 +0200, Oliver Ob wrote:
>This is what I would like to do: Updating a backup then burn new.
>
>I copied the old cd using
>dd=if... of=/image.iso
>
>Now I mounted that iso
>mount -o loop -t iso9660 image.iso /mnt/image
>
>It is there, no problems till here.
>
>Now it is mounted rw (according to mount)
>I want to copy one file INTO it.
>
>But I get "READ ONLY FS"
>
>So what do I do wrong here? It IS mounted rw
>
>Please help, I need to get that done for tomorrow.



--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
