From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: RE: Tar Exclude
Date: Wed, 13 Nov 2002 10:51:14 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0211131050500.29738-100000@router.windsormachine.com>
References: <078101c28b29$b4737260$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <078101c28b29$b4737260$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org



On Wed, 13 Nov 2002, Paul Kraus wrote:

> Also I just noticed I get an error about removing leading / from member
> names.
>
> Here is my archive.exclude
> /backup/advserver
> /backup/logs
> /backup/lost+found
> /backup/scripts
> /backup/tar.archive
>

Try putting

backup/advserver
backup/logs
backup/lost+found
backup/scripts
backup/tar.archive

Instead

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
