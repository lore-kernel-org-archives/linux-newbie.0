From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Tue, 14 Sep 2004 11:21:12 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200409141121.12145.pa3gcu@zeelandnet.nl>
References: <20040914094838.24782.qmail@web53605.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040914094838.24782.qmail@web53605.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Donald Duckie <schipperke2000@yahoo.com>
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

On Tuesday 14 Sep 2004 05:48, Donald Duckie wrote:
> hi!
>
> thank you very much :-)
> the make mrproper; make oldconfig; and make dep were
> all that was lacking . . . whew!!!
>
> for my next steps though, where can i find some
> information on snull_load and snull_unload?
> running them gave me the following errors:

No idea, but here is your answer(s).

> [aphrodite@aphrodite2 snull]$ snull_load
> ./snull.o: ELF file ./snull.o not for this
> architecture

You need to be root to insert modules.
As root do;
cd /to/where/snull_load/file/is
chmod a+x snull_load

./snull_load
But you will still get some errors because local0 and local1 are not know on 
your system, either define them in /etc/hosts or edit snull_load and replace 
local0 and local1 with an internal IP# as in.
ifconfig sn0 10.1.2.11
ifconfig sn1 10.1.2.12


> local0: Host name lookup failure
> ifconfig: `--help' gives usage information.
> local1: Host name lookup failure
> ifconfig: `--help' gives usage information.

They are not defined in /etc/hosts.

>
> [aphrodite@aphrodite2 snull]$ snull_unload
> sn0: unknown interface: No such device
> sn1: unknown interface: No such device
> snull: Operation not permitted

Because the ifconfig line had an invalid host nothing gets configured.

You can as root simply do;
cd /to/snull/dir
modprobe snull
ifconfig sn0 10.1.2.11 up
ifconfig sn1 10.1.2.12 up
route add -net 10.1.2.0 netmask 255.255.255.0 sn0
route add -net 10.1.2.0 netmask 255.255.255.0 sn1

You can also place the snull modules in /lib/modules/2.4.18/kernel/drivers/net
run depmod -a
place the following in /etc/modules.conf
alias sn0 snull
alias sn1 snull
Now if you use ifconfig to up the interface without loading the module first 
then it should get loaded automaticly altho, i have not tryed it here because 
i do not intend to use snX ifc's.

--
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
