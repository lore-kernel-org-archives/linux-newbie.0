From: Ray Olszewski <ray@comarre.com>
Subject: Re: Red-Hat Hardening
Date: Fri, 17 May 2002 11:21:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020517182157.03a2f3c0@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Sridhar J <sridharj.hyd@cxknetworks.com>, linux-newbie@vger.kernel.org

At 11:17 AM 5/17/02 +0530, Sridhar J wrote:
>Hi
>
>I have installed RH 7.2 on a PIII system successfully. Now, I plan to run it
>as a webserver with Apache. Now, how do I harden the OS, so as to have the
>maximum security. Buffer overflows, DOS attacks etc have to be protected
>against. I don't know much abt Linux, although I am trying to learn. I
>especially become confused by the number of files that have to be changed,
>such as /usr etc.

The question is meaningless as you pose it. To have "the maximum security",
you physically disconnect the system from the network and keep it in a
locked room ... ideally, powered down. This comment is not a quibble;
ANYTHING short of that involves tradeoffs between usefulness and security.
Anything that the system can do is potentially a security hole, and only you
(or the sysadmin) can decide on the appropriate tradeoffs to make for your
particular sutiation.

The short list of EASY things that you need to do are:

        1. Use a current version of Linux. RH 7.2 is not current; 7.3 is, I
believe.
        2. Apply all the patches and updates posted by your distro. I know
RH maintains a security updates site, and I think it maintains a *good*
update site for *paying* customers (the one for free riders has the stuff,
but it is slow and inconvenient, or was last time I looked).
        3. Subscribe to an appropriate security list so you are advised
promptly of new problems and the fixes. As a Debian user, I use
debian-security for this purpose. I expect RH has a security list; if not,
subscribe to one of the generic ones like bugtraq.
        4. Know what services you are running on the system, and don't run
any that you don't have a specific reason to run. Of course, don't run any
services (like telnet) that transmit passwords in unencrypted form.
        5. If you are providing off-LAN services from this host (the Web
server), and you have the resources for this, put it behind a firewall on a
LAN separate from your internal LAN (a setup usually called a DMZ). This
doesn't protect this system from compromise, but it protects your
workstations from being attacked by someone who does break into the server.
        6. Use good, unguessable passwords. 
        7. If you can use dedicated server for your firewall and your Apache
server, don't put on them any apps that they don't actually need. In
particular, keep compilers and interpreters (like Perl) off the firewall
and, to the degree possible, off the Web server. 
        8. Remember that you need to protect your servers from internal
(on-LAN) threats -- both attacks and simple user carelessness -- as well as
external attacks. DOn't trust traffic just because it comes from the LAN.


You might also find it beneficial to look at one or several of the
firewalling packages that are available. Examples are SeaWall, ShoreWall,
and EchoWall (the usual search engines should find them for you). There are
many others.


>If someone can write a step-by-step guide to setting up a firewall, install
>snort or a similar IDS, configure variuos options, I will jump with joy. I
>also will prominently display his name on my site,
>http://sridharj.focusindia.com and convert this guide into a tutorial,
>submit it to some of the best web sites in the world.
>
>I am a Technical Analyst and Writer and have a good rapport with
>SecurityFocus.com and a couple of such sites.

Have you looked at the existing resources, such as the huge amount of
material available at www.linuxdoc.org? It might be more profitable to find
something there that is pretty good and use your writing expertise to
improve it, rather than try to create yet another brand-new guide. The
technical content of the standard HowTos is usually pretty good, though the
writing can typically use improvement.

A guide to setting up "a" firewall is a pretty ambitious project. You
probably really want a guide to using Red Hat to set up a firewall, since a
lot of the "step-by-step" level of instruction is distribution (and
Linux-kernel-version) dependent. (I could write a Debian/Linux-2.4.x
firewall step-by-step guide, for example, but I'd get a lot of the specific
steps wrong were I to try one for RH.)  Or you might consider using one of
the mini-Linux-distros specifically adapted for firewalling, like LEAF
(leaf.sourceforge.net) ... or at least using a guide from it as a starting
point for what you want.

As to snort ... I don't use it myself, but a good starting place for you
would be the docs available at www.snort.org . If there are questions that
those docs do not answer, asking the specifics on this list (or a list where
more firewalling experts hang out, like leaf-user) might give you a good
start on a step-by-step guide for using snort on Red Hat.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
