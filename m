From: Arturas Moskvinas <arturas.moskvinas@gmail.com>
Subject: Re: HOW to FAT partition the device?
Date: Thu, 11 Aug 2005 17:52:40 +0300
Message-ID: <4a618d080508110752698621e@mail.gmail.com>
References: <C349E772C72290419567CFD84C26E0170A00B8@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E0170A00B8@mail.esn.co.in>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

> 
> Dear all,
> I have silly doubt regarding creating FAT partition on my SD Card.
> 
> Can I do it with fdisk? I tried it in the man-pages to find how to do
> it?
> I found nothing related to FAT.
> When I tried to create it with 'n' option, by default it is creating the
> ext2 fs & NOT FAT fs.

You can specify what partition type you want to create, press "l"
(small L) to view the list, and "t" to change the partition type...

Arturas M.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
