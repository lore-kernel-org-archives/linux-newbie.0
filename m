From: Amin <raihan@citech-bd.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Sat, 10 May 2003 22:09:17 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030510160917.GA890@localhost.localdomain>
References: <20030510100903.GA1586@localhost.localdomain> <5.1.0.14.1.20030510082110.01eae2b0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030510082110.01eae2b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, May 10, 2003 at 08:42:05AM -0700, Ray Olszewski
wrote:

> I did not see the original posting, and I can't find it
> anywhere. Amin's response does not indicate whether the
> original posting mentioned the Linux distro involved, and
> he does not do so. And Amin's advice is not

Sorry, I found the original post in Google Groups:
http://groups.google.com/groups?q=mlist.linux.newbie&ie=UTF-8&oe=UTF-8&hl=en&btnG=Google+Search

And here it is:

    From: Workman (david.rust@watkinsmfg.com)
    Subject: How do I stop GUI from autoloading?
    Newsgroups: mlist.linux.newbie
    This is the only article in this thread
    View: Original Format
    Date: 2003-03-30 08:00:16 PST
    
    I've FINALLY freed up one of my Pentiums to use as a
    Linux platform.  (I gotta get away from Microsoft!)
    
    I fought with it for an hour trying to get the install
    program to work, only to find out that my CD drive was
    screwed up (I think removable media drives are the
    weakest link in computers and CD drives are one of the
    worst).
    
    Swapped in a different CD drive and the installation
    took off like gangbusters.  Turbolinux Server 6.0 -
    Lite. Right now it's set up and seems to be working fine
    except that I tried to load the GUI (Gnome - I think)
    and I must have entered the wrong values for the monitor
    Vsync and Hsync.  So the GUI comes up and it's messed
    up. I can't do anything in it.  Damn! Looking back I see
    that my big mistake was in making the loading of the GUI
    automatic - so now I have to figure out how to stop it
    from loading so I can use one of the CLI configuration
    tools to alter the Vsync and Hsync values.
    
    Well - I've heard of the problem in the Linux discussion
    groups (trouble getting the monitor values right) so I
    know this isn't unusual but I think the other people
    were smart enough not to have the GUI load automatically
    and prevent the accessing of the CLI configuration
    tools. The documentation says that pressing
    Control-Alt-Backspace will kill the GUI but it doesn't
    work for me.  It's locked up when the GUI
    displays. Control-Alt-Delete won't reboot it.
    
    Well I wanted to learn about Linux, I guess I AM!
    
    I know I'll need to read more documentation. Meanwhile,
    any ideas, criticism, or encouragement?

> distro-neutral; not all distros use the runlevel setting
> to launch xdm (or gdm). Debian, for example, uses a script
> in /etc/init.d that gets called from runlevel 2 (which it
> uses as its default runlevel).

Sorry, I didn't know about this.  I assumed it was
controlled by ``inittab''.

> Amin made reference to a "messy GUI" in his reply. Since I
> never saw the original message, and he did not quote any
> of it, it is possible that the original questioner
> indicated some reason why he or she could not actually use
> the GUI interface to open an xterm (or possibly even to
> log in). In that case ... typically, distros that run xdm
> also open a hidden console on /dev/tty1, which one can
> access by pressing CTRL-ALT-F1 when the xdm display is
> active. You can then log in, make any needed changes, and
> reboot.

That is a good idea, but I was afraid that it would mess
around with X.  I tried it once (I'm using RH8.0), and it
seemed to hose my X server.

> Finally, if even that does not work, at the lilo prompt
> (assuming we're talking about an install that uses lilo),
> instead of accepting the default load, you can usually
> enter "linux single" to boot/init into single-user mode
> with a console rather than X presented.

I assumed Linux was the lone OS on the PC, so there was no
bootloader.

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
