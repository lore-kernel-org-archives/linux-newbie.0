From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: Tar Exclude
Date: Wed, 13 Nov 2002 10:22:04 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0211131021190.29738-100000@router.windsormachine.com>
References: <077901c28b27$c6fd7540$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <077901c28b27$c6fd7540$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

On Wed, 13 Nov 2002, Paul Kraus wrote:

> When running tar with the exclude set tar creates a 10k empty tar file.
>
> I have a script that tars a all the sub directories of a directory into
> individual tar files for each subdirectory. I have an exclude file that
> is set to skip some of the folders I don't want tarred. This works but
> it creates the empty tar files. Is this normal? Can it be set not to do
> this?

How about showing us the line out of the script that calls tar, and a
sample of your exclude line.  Tar can be... tempermental when it comes to
exclude's.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
