From: Michael Scondo <michael_scondo@gmx.de>
Subject: Re: A way to transfer drives?
Date: Sat, 2 Nov 2002 22:53:13 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02110222531300.01093@betageuze>
References: <20021031.193901.134684264.0.lawson_whitney@juno.com>
Reply-To: michael_scondo@gmx.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021031.193901.134684264.0.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Am Freitag, 1. November 2002 01:30 schrieb lawson_whitney@juno.com:
> On Thu, 31 Oct 2002, 1stFlight wrote:
> >  I'm looking for a way to upgrade my HD and maintain file/directory
> > structure. I've got a 20GB  with partitions for / /home /usr how can I
> > copy/clone this drive over to it's 60B replacement? Thanks!
> >
> >          	Darryl
>
> I wouldn't copy/clone it, I'd make new partitions in proportion, mount
> them on new temporary mount points (make  some with mkdir if you
> don't have some handy) and use tartar to copy the
> filesystems:
> tartar / /newslash
> tartar /home /newhome
> .....
>
> tartar is what I call it, I chose the tar options for just such a use
>
> #!/bin/bash
> ##copy a directory or partition
> tar -C "$1" -cOl . | tar -C "$2" -xpf -
>

That's an idea, but I believe parted should be much faster.
I think compressing and decompressing would be a little bit slow ?

Regarding,
Michael
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
