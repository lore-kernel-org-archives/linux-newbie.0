From: Ray Olszewski <ray@comarre.com>
Subject: Re: security training suggestions
Date: Tue, 24 Feb 2004 13:15:05 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040224125157.0203fa88@celine>
References: <fc.004c4e0000512903004c4e0000512903.512ab7@palmertrinity.org>
 <fc.004c4e0000512903004c4e0000512903.512ab7@palmertrinity.org> <1077653258.3797.6.camel@Marx.fesnel.no-ip.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1077653258.3797.6.camel@Marx.fesnel.no-ip.org>
References: <fc.004c4e0000512903004c4e0000512903.512ab7@palmertrinity.org>
 <fc.004c4e0000512903004c4e0000512903.512ab7@palmertrinity.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:07 PM 2/24/2004 -0500, John T. Williams wrote:
>O'Reilly publishes a small book called "Essential System Administraion"
>for 14.95.  This book is about 130 pages long and not too technical.  It
>explains a lot about security and other admistrative tasks in linux and
>unix.  I would highly recomend this book to you as it contains pretty
>much everything you will probably want to know.  For the most part the
>trick to security on a linux box is to have a strong root password,
>change it fequently, never log in as root unless you need to do
>something only the root user can do, and never leave a root terminal
>open when you cannot see the computer.

While I certainly like this ORA book (and its companion, TCP/IP Network 
Administration), it is hardly sufficient to teach one how to secure a Linux 
system. Nor is the advice John offers here more than a general beginning to 
addressing security.

Even before one does the basics that John describes, he or she needs to 
make sure the Linux installation uses a distribution that keeps current 
with security patches (att the big-name ones do, I believe ... I know 
Debian does), and that the actual installation is the current version 
including all security patches.

Aside from password compromises, there are two other important sources of risk:

1. Services -- that is, any ways that the box can be accessed remotely. 
 From time to time, vulnerabilities are identified in services, even well 
maintained ones like BIND and Apache. These vulnerabilities can permit a 
remote user, even one without an account on the system, to gain root 
privileges.

2. Apps -- the same sorts of vulnerabilities are found from time to time in 
apps (even sometimes in the Linux kernel itself) that can be accessed only 
locally.  These can be exploited to let an ordinary user gain root privileges.

Since the original poster uses Red Hat, he needs to make sure he is on Red 
Hat's security list (actually, I only assume there is one ... if not, shame 
on Red Hat) and has applied, and continues to apply, all announced patches 
and updates. I thought the current Red Hat was 9.0, so depending on how 
conscientiously security patches are being produced for RH8.0, he may want 
to upgrade.

Finally, it is often the case that people protect their servers well from 
attacks from the Internet, but leavde them vulnerable to LAN-based attacks. 
(In practice, I do this, since I work from home and the physical site is 
secure.) In a school setting, the sysadmin should consider LANside 
vulnerabilities. Don't run unneeded services. Don't run any service that 
transmits passwords as cleartext (e.g., telnet, rsh, rcp, ftp, htaccess Web 
passwords over http). Instead, use encrypted alternatives (ssh, scp, sftp, 
https).

Beyond that, the original poster talked about "mischief", not just security 
problems as such. For the most part, once one gets past the security 
concerns John and I identified. the potential for mischief -- inappropriate 
uses by non-root users -- is probably no worse for Linux than for Windows, 
requiring the same sorts of AUP rules, and similar monitoring and 
enforcement policies. User passwords need to be both strong and kept in 
confidence by the users ... not just the root password.

Unfortunately, I don't know of any resources that address William's actual 
question. ORA used to publish a book specific to Linux and security, but I 
expect it is long out of date by now, perhaps no longer even evailable.

Having said all of this ... keeping a Linux system secure requires the same 
sorts of care needed to keep any multi-user system secure. If the school 
currently runs Windows servers (for example), its sysadmin already knows (I 
hope!) the principles needed to secure a server. Applying them to Linux is 
about the same ... I suspect a bit easier, just because fewer 
vulnerabilities last long enough for exploits to appear ... as applying 
them to Windows.

>On Tue, 2004-02-24 at 14:54, William Stanard wrote:
> > We are about to add our Linux box to our school's intranet (a 10.x.x.x
> > network); our network manager is afraid that, by adding a Linux box, we
> > will be opening ourselves up to mischief from our (my) students. Does
> > anyone know of any security training offerings in the southeastern US that
> > I and my network manager could attend to bring us up to speed on security
> > issues surrounding Linux.
> >
> > I am running Red Hat 8.0 (2.4.18-14) and plan to use Apache's httpd to
> > serve pages for the teachers and students within the school's intranet. I
> > will be teaching Linux to about ten students next fall.
> >
> > Bill Stanard





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
