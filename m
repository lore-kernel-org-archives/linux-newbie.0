From: beolach@juno.com
Subject: Re: boot with numlock?
Date: Sat, 1 Nov 2003 02:28:44 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031031.182850.28675.541204@webmail10.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pete@shinners.org
Cc: linux-newbie@vger.kernel.org


Hi, Pete

For brief answer just skip to the down to the indented part.

This question is addressed in The Linux Documentation Project at
<http://www.tldp.org/> (which turns ten years old today! Hurray!).
There are two HOWTOs that pertain too your question:
The Linux Keyboard and Console HOWTO in more technical and abstract
(and less helpful, IMO) terms at:
<http://www.tldp.org/HOWTO/Keyboard-and-Console-HOWTO.html>.
The HOWTO covers a ton of info on linux keyboard & console; the
section on numlock is Section 10 "The keyboard LEDs" at:
<http://www.tldp.org/HOWTO/Keyboard-and-Console-HOWTO-10.html>.

A briefer (and better IMO) answer is in the Configuration HOWTO at
<http://www.tldp.org/HOWTO/Config-HOWTO/index.html>.  It's keyboard
section is at <http://www.tldp.org/HOWTO/Config-HOWTO/x43.html#AEN64>.
To quote this Configuration HOWTO:

    To enable NumLock on by default, add these lines to the startup
    script /etc/rc.d/rc.sysinit:
    
    for tty in /dev/tty[1-9]*; do
      setleds -D +num < $tty
    done

In this example, change the /dev/tty[1-9]* to however many consoles
you have on startup; for example my distro (Slackware) defaults to
having 6 initial consoles, so I would use: /dev/tty[1-6]*

Also note that (AFAIK) you can only set the default numlock status
for consoles that have been created; so if I boot up with the default
of 6 consoles, but later create a new virtual terminal (with openvt),
the new console would default to having numlock off.  This also means
that when you start X Windows, the numlock will most likely default to
off as well.  For X, I'm not sure how to set it to startup with numlock
on. Probably simple, but I haven't taken the time to research it.

Hope this helps,
Conway S. Smith

--------- .sig ---------
Why do programmers confuse Halloween with Christmas?
Because 31 OCT == 25 DEC.
--------- .sig ---------


-- Pete Shinners <pete@shinners.org> wrote:
>i have my bios set to boot with numlock on. i always want numlock on. 
>linux seems to default to numlock off on all the terminals. if i could 
>just fix the X terminal that would be good enough, but is there a way 
>for all the terminals to have the numlock on?


________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
