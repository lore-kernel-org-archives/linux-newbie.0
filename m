From: James Miller <jamtat@mailsnare.net>
Subject: Re: booting from USB drive (without BIOS support)
Date: Sun, 18 Jul 2004 10:18:49 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407181009140.1363@debian-emach>
References: <Pine.LNX.4.58.0407060808130.1337@debian-emach>
 <200407072234.44993.eric@cisu.net> <Pine.LNX.4.58.0407131124430.1337@debian-emach>
 <200407172313.54584.eric@cisu.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200407172313.54584.eric@cisu.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 17 Jul 2004, Eric Bambach wrote:

> 2.2.26 eh? Ill take a look.

Thanks.  Much appreciated.

> The ones marked -prepatch? No, You shouldn't neccesarily apply these. They are
> testing versions in between releases. If you are on a desktop or can stand a
> few bugs, or need a new feature, then you can download the full source, and
> then apply the patch. However, generally you should wait for the full
> release. The numbering without the -preX at the end. eg. 2.2.26 not
> 2.2.27-pre2.

The ones I'm talking about - taking the case of the kernel I've mentioned
as an example - are listed like this: patch-2.2.26.gz.  Is this the
prepatch of which you speak, or something else?  They're right in the same
directory with the kernels, down toward the bottom.

> > As further follow up on this whole issue, I've discovered that the initrd
> > method of booting/running from USB is an entirely different option than
> > the kernel patch option.  If one sets up an initrd, one can use just a
> --snip--
>
> Yep. Two ways to do the same thing. I think I remember hitting on that or
> somewhere close in my explanations before.

Yes, you did.  It's just taken awhile for the details of all this to sink
in, so I'm doubtless repeating things.  I did it mainly for the purpose of
making a concise summary, in hopes that others trying to do this and
searching the web for info might come across the information I've
discovered and presented in the way I've presented it (as opposed to the
FAQ item at linux-usb.org) and find it useful.  I think repetition could
be helpful in this.  That said, thanks for offering clarification on this
fundamental issue.

> Anyways heres a quick hack for 2.2.26. I couldn't try it out because I think
<snip>

Thanks for that.  I'll see if I can find some time to try it soon.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
