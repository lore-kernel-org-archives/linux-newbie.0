From: james niland <bareego@yahoo.com>
Subject: Re: RAM and swap partition
Date: Sat, 7 Dec 2002 16:24:15 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021208002415.24931.qmail@web11406.mail.yahoo.com>
References: <200212072350.gB7NoKnl023626@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212072350.gB7NoKnl023626@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

The basic idea of the swap partition being double the
size of ram is that when your system has a crash it is
still capable of writing a core dump to the harddisk.
I think not many people really require that for a home
system or a system that is not critical.I know some
people who run happily without a swap at all. 
As long as you don't expect that your programs will
use more memory thant they used to before you upgraded
your memory and you don't run a critical system just
leave the swap at what it is. 
If you still want to change your swap partition, you
can make a new swap partition with eg fdisk and change
the entry for swap in /etc/fstab. 

James Niland





--- Heimo Claasen <hammer@revobild.net> wrote:
> As I'm increasing the RAM installed to the threefold
> of what there is
> now, I wonder if I have to change/resize the swap
> partition.
> 
> (At present the swap is a small bit larger, 364 MB,
> than memory installed.
> I sometimes read advice that the swap partitions
> should be _twice_ the
> installed RAM; but I wonder why: wouldn't this be in
> function of how
> many processes, and especially X-windows, are in use
> a a same time ?
> As the single main memory hog to run on this machine
> is just one, 1,
> application in one, again: 1, window, it dowsn't
> seem evident to waste
> over 2 GB of HD space ?)
> 
> If resizing is adviseable: What's the best procdure
> ?
> 
> As it is, with this (Mdk-)install, there is quite a
> large, almost
> empty partition devised as /home directory which
> would be the evident
> candidate to get cut and parted, and I would prefer
> to not touch at all
> on the other existing ones.  So I'd like best to
> define an all new
> "swap" and likewise new "/home" from that (emptied)
> /home space, and
> to redefine the old swap space of the HD as just
> some other data (or for
> the "users" /homes) storage.
> 
> // Heimo Claasen // <hammer at revobild dot net> //
> Brussels 2002-12-07
> The WebPlace of ReRead - and much to read  ==> 
> http://www.revobild.net
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
http://www.linux-learn.org/faqs


__________________________________________________
Do you Yahoo!?
Yahoo! Mail Plus - Powerful. Affordable. Sign up now.
http://mailplus.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
