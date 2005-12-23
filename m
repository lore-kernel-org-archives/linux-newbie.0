From: Eric Bambach <eric@cisu.net>
Subject: Re: kernel update fiasco (depmod)
Date: Fri, 23 Dec 2005 09:43:15 -0600
Message-ID: <200512230943.15725.eric@cisu.net>
References: <43ABBF61.5080708@arrakis.es>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43ABBF61.5080708@arrakis.es>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Andrew <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

On Friday 23 December 2005 03:12 am, Andrew wrote:
> Good morning,
>
> I have just installed Slackware-10.2 with kernel 2.4.31 on a Pentium =
100
> with 32Mb ram. All packets are from the 1st iso, which I downloaded a=
nd
> burned on cd. The problems start when I try to upgrade the kernel usi=
ng
> the Slackware packet kernel-generic-2.6.13 and the corresponding
> kernel-modules. The 3 symlinks in /boot all point to the right files.
> lilo.conf is set up correctly. I've run lilo -v repeatedly. But the
> system will not boot correctly as the files in /lib/modules/2.6.13
> (modules.dep, etc.) are not being created. (However, I can boot the
> system from a floppy with the 2.4.31 kernel). If I try running depmod
> after booting with the 2.6.13 I just get the message Killed, and the
> following lines appear in var/log/messages:
>
> Dec 23 10:47:45 fw kernel: Mem-info:
> Dec 23 10:47:45 fw kernel: Free swap:            0kB
> Dec 23 10:47:45 fw kernel: 8192 pages of RAM
> Dec 23 10:47:45 fw kernel: 0 pages of HIGHMEM
> Dec 23 10:47:45 fw kernel: 924 reserved pages
> Dec 23 10:47:45 fw kernel: 16 pages shared
> Dec 23 10:47:45 fw kernel: 0 pages swap cached
> Dec 23 10:47:45 fw kernel: 5 pages dirty
> Dec 23 10:47:45 fw kernel: 1 pages writeback
> Dec 23 10:47:45 fw kernel: 6298 pages mapped
> Dec 23 10:47:45 fw kernel: 618 pages slab
> Dec 23 10:47:45 fw kernel: 55 pages pagetables

Your machine is running out of memory and the command is being killed b=
y the=20
OOM killer. 32MB is quite slim nowadays and if you dont have a distribu=
tion=20
BUILT for low memory conditions you could experience this. I recommend=20
increasing your swap file (or creating one!).

See what the output of the command 'free' is and it will list all your =
memory=20
usage statistics including swap file size.

Google around for how to create a swap file its quite easy. You can ign=
ore the=20
PITA of creating a swap PARTITION, just use a swap FILE. The modern ker=
nel=20
more than support swap files and you dont have to re-organize your part=
itions=20
that way.

If you already have a swap file, just create another one and leave the =
first;=20
it will add to the swap pool.

> (The figures vary)
>
> I have tried redownloading and reinstalling the kernel, kernel-module=
s
> and module-init-tools tgzs. No difference. I replaced the hd (it was
> giving intermittent error messages) and reinstalled. No difference.
>
> Now what?
>
> TIA,
>
> Andrew
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
