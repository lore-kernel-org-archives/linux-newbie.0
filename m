From: Steven Ackerman <ackerman_steven@yahoo.com>
Subject: Re: Wireless Mouse/ USB selection
Date: Sat, 19 Jun 2004 17:18:06 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040620001806.84860.qmail@web14810.mail.yahoo.com>
References: <200406190947.40159.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200406190947.40159.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: LinuxNewbie <linux-newbie@vger.kernel.org>

Thank you everyone that responded. I really would have
thought that mouse.conf was a file common to linux
systems and not just a distrobution.

I'm sure that Richards suggestion would have worked
out fine, I just went about it with a different means.
Someone suggested I use Mandrakes "drakmouse" program.
I logged in as root, typed in "drakmouse" and got a
gui configurater for "mice". I chose Richards
suggestion of Generic 3 button PS2 mouse, rebooted my
machine and my mouse worked.

I was very happy. Thank you all for googleling and
looking into my issue. It was very frustrating for me.

Now I have hosed X from starting up. I'm going to post
to the list with a new message.

-Steve

--- pa3gcu <pa3gcu@zeelandnet.nl> wrote:
> On Saturday 19 June 2004 02:58, Steven Ackerman
> wrote:
> > Please see inline comments:
> >
> > --- pa3gcu <pa3gcu@zeelandnet.nl> wrote:
> > > > I have just installed Mandrake 9.1. I chose
> tty0
> > > > (com1?
> > >
> > > I am sure you mean /dev/ttyS0 not /dev/tty0
> >
> > I guess so. Whatever it was doesn't really matter.
> It
> > wasn't right. I believe it was the linux
> equivelant of
> > Com port 1. You would probably know better than I.
> >
> > > > I have installed M9.1 previously and I believe
> 
> I did some searching on google for your computer, i
> could not find any site 
> which actually stated what protocol the mouse use's,
> however my impression is 
> that it is a normal ps2 mouse.
> 
> I would do the following;
> 
> Start mandrake into init 3
> I cant remember which bootloader mandrake 9.1 used,
> if its lilo you need to 
> type the name of the boot image and 3 after it asin;
> linux 3
> replace linux with the name of the boot image.
> If its grub i belive all you need to do is select
> the boot image with the 
> arrow up/down keys and then type in 3 in the
> "options" box.
> Hit enter of course.
> 
> After booting login as root and type 'mouseconfig'
> Select "Generic PS2 Wheel Mouse"
> That takes care of the symlinks in /dev/
> 
> Your XF86Config(-4) file found in /etc/X11 may also
> need editing, a typical 
> entry for a wheel mouse is;
> 
> Section "InputDevice"
>         Identifier  "Mouse1"
>         Driver      "mouse"
>         Option       "Corepointer"
>         Option      "Device" "/dev/psaux"
>         Option      "Protocol" "IMPS/2"
>         Option       "Buttons" "5"
>         Option      "Emulate3Buttons" "off"
>         Option      "ZAxisMapping" "4 5"
> EndSection
> 
> After all that type init 5 to start X and see what
> happens.
> 
> -- 
> If the Linux community is a bunch of thieves because
> they
> try to imitate windows programs, then the Windows
> community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 



		
__________________________________
Do you Yahoo!?
Yahoo! Mail - 50x more storage than other providers!
http://promotions.yahoo.com/new_mail
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
