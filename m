From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I see all my partitions?
Date: Wed, 18 Dec 2002 09:18:16 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021218091629.02111760@celine>
References: <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
 <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021218104722.GA3850@neon.pearbough.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

There is a small error of detail in axel's reply. He writes:

>To call fdisk for your primary IDE slave call "fdisk /dev/hda" and you
>will get something like this:

/dev/hda is the IDE primary *master*, not the IDE primary *slave* (which is 
/dev/hdb).

At 11:47 AM 12/18/02 +0100, axel@pearbough.net wrote:
[deleted]


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
