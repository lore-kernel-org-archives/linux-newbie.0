From: Ray Olszewski <ray@comarre.com>
Subject: Re: remote X sessions
Date: Mon, 05 Jan 2004 23:32:42 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040105231746.01f6e080@celine>
References: <1073371557.10949.4.camel@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1073371557.10949.4.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:45 AM 1/6/2004 -0500, Jacob Langley wrote:
>I've been all over the internet tonight looking for exactly what I want
>and I can't find it.  What I'd like to be able to do is type something
>like
>
>$ startx
>
>Maybe with a whole lot of command line options even and be able to open
>an X session running fluxbox or twm or some other light window manager
>on a completely separate machine on my lan.  I'm so rarely in a window
>manager now that I'd like to be able to just use one off another
>computer and stick to a console only install on my main system since I'm
>the only person that uses it.  Any ideas or places to look would be
>appreciated.

This sort of question -- "Where do I find [name of application]?" is almost 
always a distro-specific question. And you don't say what distro you are using.

First step for you is to search your distro's package database for "startx" 
(that is in fact the correct name for the app that does what you want ... 
or at least what I *think* you want). For example, in Debian, this app is 
part of the package xbase-clients .

The upstream source for X11 is www.xfree86.org ... I imagine the "startrx" 
app is available there.

But I am not *certain* that I understand what you want. X is a server that 
has to run on the workstation that you are working at. Using the X server, 
you can run X clients -- specific applications that use X as their UI -- on 
other hosts. But

If you want to run an X-like interface on a remote machine that your 
workstation can access, you might do better to look at the client-server 
combo VNC. You run vnc-server on the remote host, and vnc-client, also 
called a viewer, on the workstation (clients exists for Linux and Windows, 
maybe other OSs too). There are several VNC clients for Linux, some 
requiring X on the workstation, at least one using SVGA directly.

Here too, check your distro's packaging system for the parts of VNC. Or you 
can go to the upstream site, http://www.realvnc.com/ .



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
