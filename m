From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Floppy problem
Date: Tue, 13 Apr 2004 08:03:30 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404130803.30882.pa3gcu@zeelandnet.nl>
References: <200404120733.45977.davidtief@abac.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200404120733.45977.davidtief@abac.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Tiefenbrunn <davidtief@abac.com>, linux-newbie@vger.kernel.org

On Monday 12 April 2004 13:33, David Tiefenbrunn wrote:
> Hi All,
>
> I now have my own complete Suse Linux Pro. install disks and manuals.
>
> I am logged into root.

That you should not do, ( i am presuming you mean logging into X as root).

> I want to make a bood floppy, but I keep getting errors:
> selected image doesn't exist on instllation medium.

Whats the command and whats the "eaxcht error message", all one can say here 
is;

You dont have the correct install disk in the drive and/or the path is 
incorrect.

> Then another error about valid floppy medium or valid root permissions.
>
> If I try to format it with Kfloppy, I get:
>  Cannot Format /dev/fd0u1440

Should that not be /dev/fd0

>
> No Such Device or Address.
>
> The Floppy Device icon on the desktop opens a window, and lists the files
> (DOS / win98) that are on it.
>
> For a while, the eject button wouldn't work.

SuSE uses devfs automount and several other (so called) new style plug and 
pray effects, what you are experiancing is an effect of the new style.

Why not do it the SuSE way, login as a normal user goto control center click 
on yast (you will then be asked to enter the root password) now try and do 
things the SuSE way.

>
> Thak you,
> Dave
>

-- 
If the Linux community is a bunch of theives because they
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
