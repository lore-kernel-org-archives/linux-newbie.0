From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: CD writing in ext2 filesystem
Date: Thu, 25 Apr 2002 18:34:46 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02042518344606.04696@unix.pa3gcu>
References: <200204232318.55166.mssnlayam@cs.annauniv.edu> <1019641504.16651.14.camel@Zebra> <200204250727.51401.mssnlayam@cs.annauniv.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200204250727.51401.mssnlayam@cs.annauniv.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>, Paul Furness <paul.furness@vil.ite.mee.com>
Cc: GNU/Linux Newbie <linux-newbie@vger.kernel.org>

On Thursday 25 April 2002 17:00, Suriya Narayanan M S wrote:
> On Wednesday 24 April 2002 15:15, Paul Furness wrote:
>   > Is there a particular reason why you were trying to put an ext2 fiole
>   > system on the CD rather than an ISO9660 one?
>
> Yes. One would like to have all the filesystems to be of the same
> type. It would be easier to handle and there would be no
> inconsistencies. It (the one you use regularly) is the best filesystem
> to backup data.
>
> But the main advantage (of using ext2) is that you get a
> filesystem which is the same as your native system. Permissions,
> ownership, symlinks, pipes, device files..... (all the great features
> of ext2) get taken care of. Most of the above would
> not be possible with iso9660. The Rockridge extensions handle them
> well. However it too has a problem with the maximum depth
> of a directory tree.

UUM, excuse me for only thinking, but, if one creates a tarball and then 
burns it to a cd, one then has the same, or am i missing something here.?????

How do you think a linux distribution comes on a cdrom.????
Its iso9660 of course, but when its copied onto a H/D it has permissions of 
its piers.

I do not see your point of view here, if i am missing something please tell 
me, i am at a loss as to what in the world it could be.

>
> If you do not need your CD to be accessed on other OSs
> then ext2 is the best bet.
>
> Bye,
> Suriya Narayanan M S

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
