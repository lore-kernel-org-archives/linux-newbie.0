From: Don Petrowski <dpetrowski@ci.collierville.tn.us>
Subject: Re: Disk Image
Date: 10 Oct 2002 14:40:23 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034278824.2040.3.camel@workwatcher>
References: <000801c27090$43799c00$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c27090$43799c00$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

You can use the dd comand:

    dd if={hard drive}  of={filename}
    dd if=/dev/hda  of=disk1.img

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
