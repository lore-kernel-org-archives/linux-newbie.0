From: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Subject: Re: Reinstallation
Date: Thu, 1 Apr 2004 12:36:54 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404011236.55329.wheds8@ms66.hinet.net>
References: <200403302101.44326.pa3gcu@zeelandnet.nl> <5.1.0.14.1.20040330115239.01f82bc8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040330115239.01f82bc8@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

The message reads, from a Mandrake installation, ....There was an error 
installing packages XXX. Do you wish to continue. This goes through every 
package I selected.

File partitions. I used fdisk to partition and then put Reseirfs on them. 

Then I let Mandrake do  the partitioning automatically. 

The result was the same.

>
> "xxx program had  problems do you want to continue" is not an example. It
> is a paraphrase, and rather an uninformative one. Does the message really
> say nothing more informative than "had problems"? Does it really call each
> a "program", not a "package"? I doubt it ... I recall Knoppix as a Debian
> derivative, and the Debian style of messages is very different from what
> you are reporting ... but the best way to tell is to see an actual,
> complete example.


>
> I haven't installed Knoppix here, so I'm fishing a bit to think of what
> might be causing problems.
>
> Does the install kernel support Reiserfs out of the box? Might the root (/)
> partition need to be ext2 or ext3, for example? Or might you need to load a
> kernel module before doing package installation?
>
> Technically, Linux users do not "format" partitions ... we create
> partitions with fdisk (or a relative) and put filesystems on them with
> mke2fs (or the one appropriate for your filesystem type). Did you do both
> steps?
>
> Please describe the steps you are taking a bit more exactly, provide actual
> examples of error messages, and give us the structure of the system (such
> as the output of "df" and "uname -a" and "ls -l /" ... at this point, the
> description is so vague that I'm not really sure what else to ask for).
>
> PS - Kernels have names like 2.6.4 and 2.4.x, not 2.64 and 2.4x.
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
