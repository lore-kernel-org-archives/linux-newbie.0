From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Reinstallation
Date: Thu, 1 Apr 2004 08:31:10 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404010831.10688.pa3gcu@zeelandnet.nl>
References: <200403302101.44326.pa3gcu@zeelandnet.nl> <5.1.0.14.1.20040330115239.01f82bc8@celine> <200404011236.55329.wheds8@ms66.hinet.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200404011236.55329.wheds8@ms66.hinet.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Cc: linux-newbie@vger.kernel.org

On Thursday 01 April 2004 06:36, S. Barret Dolph wrote:
> The message reads, from a Mandrake installation, ....There was an err=
or
> installing packages XXX. Do you wish to continue. This goes through e=
very
> package I selected.
>
> File partitions. I used fdisk to partition and then put Reseirfs on t=
hem.
>
> Then I let Mandrake do =A0the partitioning automatically.
>
> The result was the same.

If you used fdisk as you say and oyu created a reiserfs filesystem, the=
n its=20
madness to let Mandrake do it again.

The error message you are getting can be caused by two things.

1) No mount point defined in the partitions section of the install.
2) You source medium is corrupt, use MD5 to check it.

--=20
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
