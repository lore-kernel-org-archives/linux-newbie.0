From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: The best way to backup a Linux workstation?
Date: Tue, 18 Mar 2003 13:04:54 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0303181304130.12864-100000@router.windsormachine.com>
References: <000f01c2ed78$90927150$7301a8c0@c0003>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000f01c2ed78$90927150$7301a8c0@c0003>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ola Theander <ola.theander@otsystem.com>
Cc: linux-newbie@vger.kernel.org

On Tue, 18 Mar 2003, Ola Theander wrote:

> Dear subscribers.
>
> I would like to know the recommended way to backup a Linux workstation.
> Currently I use tar to pack a number of directories to a single file which I
> save on a CD. One problem I've noticed with this approach is that tar seems
> to ignore all hidden files i.e. files beginning with a '.' and there doesn't
> seem to be a switch to change this. This is a problem for me since some
> files, such as .profile, that I want to backup is ignored.
>
> Any help on this matter would be greatly appreciated.
>
> Kind regards, Ola Theander
>

What does your tar line look like?  My tar backs up anything starting with
a ., it's just a matter of having the right syntax.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
