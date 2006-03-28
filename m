From: Ray Olszewski <ray@comarre.com>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Mon, 27 Mar 2006 21:20:07 -0800
Message-ID: <4428C787.50804@comarre.com>
References: <200603280259.k2S2xxLA004035@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200603280259.k2S2xxLA004035@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter wrote:
> Thanks Hal!
> 
> As I mentioned in another mail your suggestion of "cat file > /dev/lp0" works 
> in root when there is no Internet connection. However, I cannot print when 
> disconnected using "cat file | lpr". Giving lpq it will just sit doing nothing 
> when not connected.

Right. This is pretty consistent with the rest of what you have 
reported. The kernel driver itself works just fine (that's the piece 
that connects the device pseudofile /dev/lp0 to the parallel port, hence 
to the printer). But cupsd (the printer daemon that listens on UDP port 
631 and/or a Unix port) is somehow misconfigured to require networking 
to be active.

One possibility is that your printer database (in /etc/printcap, the one 
lpr uses, or in /etc/cups/printers.conf, the one cupsd uses) is set to 
identify all printers, even local ones, as remote printers. This could 
cause them to become inaccessible if your network interface is not 
configured. You would fix this by fixing printcap &/or printers.conf ... 
I can't be more specific without seeing the actual contents of the files.

A more involved possibility is that for some reason you have cupsd set 
to listen only on the network interface's address and not also on 
localhost (I believe it defaults to listening on all interfaces, so this 
would be a local error; check /etc/cups/cupsd.conf). So if your 
networking is not active ... by which I mean eth0 (or perhaps ppp0) is 
not configured (which could happen if you get it configured via DHCP (or 
PPPoE) ... I don't know the details of your Internet connection, so I'm 
guessing pretty openly here) ... there is no place for cupsd to listen.

Check this with "netstat -ln |grep 631" to see what cupsd is listening 
on. Check this when you are not connected to the network (with the exact 
meaning of "not connected" being the state your host was in when it 
would not print). If cupsd is listening properly, you should see 
something about like this:

	udp        0      0 0.0.0.0:631             0.0.0.0:*

If you don't then your problem is a misconfiguration of CUPS and 
networking. I can't tell you how to fix this without seeing your system 
setup, but look at whatever init script starts cupsd, as well as 
cupsd.conf, to see if either is limiting the interfaces cupsd will 
listen on.

Depending on lpr expects about printers (from their printcap entries), 
it may also fail if there is nothing listening on port 515/tcp.

All of this really is just a bunch of guesses, though.

> I installed kernel 2.6.13 and the above is the same. However, there is a 
> provision for parallel port for local printer in gnome-cups-manager unlike in 
> kernel 2.4.14.4 there is that provision only for Network printer. 

I'm a bit confused here, Peter. CUPS is a service for managing access to 
printers (an alternative to lpd), not part of a kernel. I can well 
imagine that the versions of Slackware that install the two kernels are 
different enough that they also have different versions of CUPS. But 
once more, this is NOT a kernel problem, at least not from what you are 
reporting about your tests.

> Beside the 
> point with 2.6.13 I have no sound since module snd_via82xx can not be found. 
> Beats me.

Are you using OSS or ALSA sound? From kernel source (I actually checked 
2.6.11, not .13), the relevant OSS module appears to be SOUND_VIA82CXXX. 
But 2.6.x kernels are supposed to use ALSA sound, with the relevant name 
the one you list (snd-via82xx).

I'm not quite sure what your phrase "module snd_via82xx can not be 
found" means. Do you mean that the kernel fails to load it? Or that you 
yourself cannot find snd-via82xx.ko, by a manual search, in 
/lib/modules/2.6.13? Or that it is not listed in 
/lib/modules/2.6.13/modules.dep? Or something else?

You may need to check whether Slackware provides modules for precompiled 
kernels in multiple packages. I can't think of any other reason why a 
precompiled 2.6.x kernel should be missing this module. (Well, I suppose 
it could be compiled in directly, but then your sound should work ... 
and that's not a very usual practice except for embedded systems.

> 
> Regards

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
