From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: tar for "full" floppy backup?
Date: Fri, 6 Dec 2002 19:53:40 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212061952490.1853-100000@athame.gmpexpress.net>
References: <200212062144.OAA17052@cu.imt.net>
 <Pine.LNX.4.50.0212061725310.1504-100000@athame.gmpexpress.net>
 <3DF1344D.C82F5DB9@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DF1344D.C82F5DB9@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

Take the b option out of there completely I think.  Blocks are used for
tapes but not normally disk devices such as floppy disks.

Jude <dashielljt(at)gmpexpress-dot-net>

On Fri, 6 Dec 2002, Chuck Gelm wrote:

> Howdy, dashielljt:
>
>  I was thinking along the same lines.  I am only familiar
> with the last option being 'f'.  Yet I noticed that the 'b'
> command needs an operator too.  Perhaps the operators are
> appended in the same order they are requested by the options.
> 'f' filename.ext or /dev/*
> 'b' block size
> 'k' ?
>  i.e.
> tar cvfbk /dev/fd0 1440 4 /
>       \\\
>        \\k = 4
>         \b = 1440
>          f = /dev/fd0
> ?
> HTH, Chuck
>
> dashielljt wrote:
> >
> > maybe tar cvbkf /dev ... will work.
> <snip>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
