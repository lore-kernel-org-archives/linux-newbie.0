From: Ray Olszewski <ray@comarre.com>
Subject: Re: disabling X display Manager
Date: Wed, 11 Jun 2003 13:22:38 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030611131155.01fc60f8@celine>
References: <20030611.160313.-280611.0.matthewstapleton@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030611.160313.-280611.0.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Matthew Stapleton <matthewstapleton@juno.com>, linux-newbie@vger.kernel.org

At 04:03 PM 6/11/2003 -0400, Matthew Stapleton wrote:
>Hello,
>
>When I boot into linux (I have a dual boot system) the XDM is
>automatically started.  What file or files do I need to modify in order
>to disable this? Is there a linux equivalent to DOS's autoexec.bat?


How you disable xdm during boot/init varies a bit by distribution. But 
there are only 2 usual ways it gets started:

1. In /etc/inittab, some runlevels will start xdm (typically runlevel 
5).  If your distro does it this way, then look for a line like this one in 
/etc/inittab:
         # The default runlevel.
         id:6:initdefault:

and change it to read (probably)
         # The default runlevel.
         id:2:initdefault:

(This is the more common way of starting xdm.)


2. /etc/inittab will always start *some* init script (this is as close to 
autoexec.bat as you will get with Linux), and that script in turn 
customarily runs a bunch of other init scripts, each of which sets up some 
piece of the OS or starts some background process. Locations vary, but one 
example of where they are is
         /etc/init.d     for the actual scripts
         /etc/rc2.d      for symlinks to the ones run at runlevel 2
                         (there will be a corresponding /etc/rc?.d for
                         each runlevel, including an /etc/rcS.d for
                         single-user mode)

Look in the directory for the default runlevel for a symlink with a name 
something like "S99xdm". To stop xdm from starting during boot/init, remove 
this symlink.
(This is the less common method of starting xdm, but the one I am more 
familiar with, since Debian does it this way.)

I've simplified the description of the boot/init process quite a bit in the 
above (I've lonly mentioned single-user mode in passing, for example), but 
not in ways that are relevant to the question aout xdm.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
