From: lawson_whitney@juno.com
Subject: Re: A way to transfer drives?
Date: Sat, 2 Nov 2002 19:57:35 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021103.170822.134684296.1.lawson_whitney@juno.com>
References: <02110222531300.01093@betageuze>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02110222531300.01093@betageuze>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: michael_scondo@gmx.de
Cc: linux-newbie@vger.kernel.org

On Sat, 2 Nov 2002, Michael Scondo wrote:

> > #!/bin/bash
> > ##copy a directory or partition
> > tar -C "$1" -cOl . | tar -C "$2" -xpf -
> >
>
> That's an idea, but I believe parted should be much faster.
> I think compressing and decompressing would be a little bit slow ?
>
It's not compressing and decompressing.  Tar only does that if you tell
it (with an option I,y,z,Z or the corresponding long names or
--use-compress-program).  Saving and restoring this way will also
defragment the filesystem.

> Regarding,
> Michael
> -
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
