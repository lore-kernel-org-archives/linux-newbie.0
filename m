From: Ray Olszewski <ray@comarre.com>
Subject: Re: Screen size
Date: Mon, 26 Aug 2002 19:28:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020826192017.025d7d90@celine>
References: <Pine.LNX.4.21.0208261501060.8397-100000@Consulate.UFP.CX>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0208261501060.8397-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Riley Williams <Riley@Williams.Name>, Linux Newbies <linux-newbie@vger.kernel.org>

See below.

At 03:08 PM 8/26/02 +0100, Riley Williams wrote:
>Hi there.
>
>We're talking about a Red Hat 7.3 system here, but the question is
>probably equally relevant both to earlier Red Hat systems and to
>other distributions as well. We are also NOT talking about X-Windows
>but about the virtual text consoles.
>
>When one is booting into Linux, one can specify "vga=1" on the kernel
>command line to specify that one wishes to have an 80x50 text screen.
>How does one specify this after Linux has finished booting?
>
>The reason I ask is that although it's specified on the command line,
>something during the init process switches it back to 80x25 lines. I'd
>prefer to have it in 80x50 mode on this computer though.

Hmmm ... "something"?

Richard said more about the framebuffer than I know, but that is, I think, 
not what you are asking about. The man page for lilo.conf includes this bit 
(about the vga= parameter)--

               If this variable is omitted, the VGA  mode  setting
               contained in the kernel image is used. (And that is
               set at compile time using the SVGA_MODE variable in
               the  kernel Makefile, and can later be changed with
               the rdev(8) program.)

 From the man page for rdev, it *appears* that it can change the SVGA 
setting while Linux is running if invoked as vidmode. Take a look and see 
if this is what you are looking for (I didn't test it here). You might also 
check if one of RH's init scripts is executing a vidmode command ... it is 
certainly a candidate for your mysterious "something".


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
