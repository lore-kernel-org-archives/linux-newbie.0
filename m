From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Screen size
Date: Tue, 27 Aug 2002 05:55:53 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0208270555530D.02211@unix.pa3gcu>
References: <5.1.0.14.1.20020826192017.025d7d90@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020826192017.025d7d90@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, Riley Williams <Riley@Williams.Name>, Linux Newbies <linux-newbie@vger.kernel.org>

On Tuesday 27 August 2002 02:28, Ray Olszewski wrote:
>
> Richard said more about the framebuffer than I know, but that is, I think,
> not what you are asking about. The man page for lilo.conf includes this bit
> (about the vga= parameter)--
>
>                If this variable is omitted, the VGA  mode  setting
>                contained in the kernel image is used. (And that is
>                set at compile time using the SVGA_MODE variable in
>                the  kernel Makefile, and can later be changed with
>                the rdev(8) program.)

Yes vga= works that way however it has to be turned on in the kernel 
otherwise it wont work like it should at boottime. That option is;
CONFIG_VIDEO_SELECT
I think most distro's have it in thier standard included kernel.
If that is the case one can define vga=xxx in lilo.conf and rerun lilo.

>
>  From the man page for rdev, it *appears* that it can change the SVGA
> setting while Linux is running if invoked as vidmode. Take a look and see
> if this is what you are looking for (I didn't test it here). You might also
> check if one of RH's init scripts is executing a vidmode command ... it is
> certainly a candidate for your mysterious "something".

Nope, vidmode AFAIK does not do that.

>
>
> --
> -------------------------------------------"Never tell me the
> odds!"-------- Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> ---------------------------------------------------------------------------

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
