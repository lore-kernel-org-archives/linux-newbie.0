From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Sat, 10 May 2003 08:42:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030510082110.01eae2b0@celine>
References: <20030510100903.GA1586@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.NEB.4.33.0305101323240.10717-100000@sdf.lonestar.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Whether "Amin" gave convoluted instructions is not the first concern. First 
ask whether he gave correct advice.

I did not see the original posting, and I can't find it anywhere. Amin's 
response does not indicate whether the original posting mentioned the Linux 
distro involved, and he does not do so. And Amin's advice is not 
distro-neutral; not all distros use the runlevel setting to launch xdm (or 
gdm). Debian, for example, uses a script in /etc/init.d that gets called 
from runlevel 2 (which it uses as its default runlevel).

That said, whatever change is needed can almost certainly be done without a 
boot/init from a rescue disk or CD. Just log in via xdm (of gdm), open an 
xterm, su to root, make the needed changes as root, and reboot the system. 
The needed changes might be ...

         edit /etc/inittab to change the default runlevel from 5 to 2 or 3
         edit /etc/rc2.d to remove the symlink S99xdm

... or maybe something else that is distro specific.

Amin made reference to a "messy GUI" in his reply. Since I never saw the 
original message, and he did not quote any of it, it is possible that the 
original questioner indicated some reason why he or she could not actually 
use the GUI interface to open an xterm (or possibly even to log in). In 
that case ... typically, distros that run xdm also open a hidden console on 
/dev/tty1, which one can access by pressing CTRL-ALT-F1 when the xdm 
display is active. You can then log in, make any needed changes, and reboot.

Finally, if even that does not work, at the lilo prompt (assuming we're 
talking about an install that uses lilo), instead of accepting the default 
load, you can usually enter "linux single" to boot/init into single-user 
mode with a console rather than X presented.

Only after trying these options would I turn to using a rescur disk or CD, 
as Amin advices.

At 01:29 PM 5/10/2003 +0000, Charlotte Miller wrote:
>On Sat, 10 May 2003, Amin wrote:
> >
> > But you need to be able to access the file to be able to
> > edit it, and you can't do that when you're stuck in a messy
> > GUI.  You need to access it from a text-based command
> > prompt.  This is actually quite possible, and it gets easier
> > each time you do it:
> >
>These instructions sound rather convoluted.  Why would this individual
>need to boot from an installation CD just to edit a file?  I assume one
>needs root priviledges to edit /etc/innitab, but wouldn't it be alot
>easier to open a console, then su to root, then invoke a word processor
>and open the file with it?  Or invoke MC from that root console, navigate
>to the file using it, then use MC's editor to edit the runlevel argument?
>Please clarify on the need to do the editing from other bootable media.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
