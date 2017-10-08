From: Christos Gkekas <chris.gekas@gmail.com>
Subject: Re: Understanding the wireless architecture
Date: Sun, 8 Oct 2017 14:12:34 +0100
Message-ID: <20171008131234.GA5228@inspiron>
References: <CAA2oCOnOMcQbh1bEyF5hZjfFGdsw7wWLh=y5rPO54OQnDgV5SQ@mail.gmail.com>
 <20171007172021.GA6184@lvzheng-thinkpad>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TYKjUGVIeHeNn6OmfJuZNHVz0M8kXLL3YjPLIL8nOhM=;
        b=tt2ZCirUOwSJTEgimS2dcci2D6tvOpzFMvXnpKJvsYO9havkjAuWc1jcqmZWayIOBV
         TxhIuDLDHXDmJ6oi1ZS1ZNxxHbeaqj1w0KPGX23owUs+D06mv5If7NSeyuWH6YmixfD/
         lSfHErykqzrsJkGVSHrYo18zxD9rzPvKWtaZxaP53XASSnyQY71CNluaBjAbBEzwDLSg
         K87GL+SFzaFr3QHU3kxvdJ7Fe1+5dM2Hq09fGCsLcqDURDJGOhgC5YpY+Gmdt3G4D6NH
         T25DjE11dzUV8GN7NKLhdgf3Oypacs6oQvFE5CYVHpbL6G3EiI0W+z46xzdqes7jfZz1
         NyLw==
Content-Disposition: inline
In-Reply-To: <20171007172021.GA6184@lvzheng-thinkpad>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Zheng Lv <lv.zheng.2015@gmail.com>
Cc: Madhu K <madhu.sk89@gmail.com>, linux-newbie@vger.kernel.org

On 08/10/17 01:20:21 +0800, Zheng Lv wrote:
> On Sat, Oct 07, 2017 at 09:23:04PM +0530, Madhu K wrote:
> > I am kernel newbie, I wanted to learn linux wireless architecture and
> > I want to write some wireless drivers. So please suggest me some
> > tutorials or documents which will help me to understand the linux
> > wireless device drivers architecture.
> 
> I am also newbie. Although I have no plan to learn wireless
> architecture, I do think that Linux kernel (device driver module)
> programming is not newbie-friendly.
> 
> In my opinion, LDD3 is somehow outdated. Wireless network is not
> covered, while there is a full chapter covering parallel port, which is
> hard for newbies to learn due to difficulty to buy appropriate hardware.
> 
> Moreover, many interfaces are updated. Semaphores have been replaced by
> mutexes long ago. There are also advanced .{read|write}_iter functions
> in file_operations which can replace {.read|.write}. I cannot understand
> the read_iter_zero function in drivers/char/mem.c after I read LDD3.
> 
> I wish a better resource for newbies to learn driver programming, maybe
> LDD4, maybe a more detailed book elsewhere.
> 
> Cheers
> Zheng Lv

The kernel is changing at a very rapid pace, so books quickly become out
of date. Perhaps the best source of information would be to check online
for tutorials and documentation. There is also a Documentation directory
in the kernel sources, you can also check there for information.

I did a quick online search and got many results, among which:
https://wireless.wiki.kernel.org/
https://www.linux.com/blog/linux-wireless-Networking-short-walk

Regards,
Chris

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
