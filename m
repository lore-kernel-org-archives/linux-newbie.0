From: Zheng Lv <lv.zheng.2015@gmail.com>
Subject: Re: Understanding the wireless architecture
Date: Sun, 8 Oct 2017 01:20:21 +0800
Message-ID: <20171007172021.GA6184@lvzheng-thinkpad>
References: <CAA2oCOnOMcQbh1bEyF5hZjfFGdsw7wWLh=y5rPO54OQnDgV5SQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gdJNXuKB5A2LEht/KQkkPzPvVgQj2lZyBZVSw8xnnYo=;
        b=j/TRNPbxkbY7ETLNHH784r6uBPdHp1FduKczHy20uI+yuaa95xDmksOKLbuT55wtKx
         o63XIcVqMXYkTvUZwgGc1Ot6wCSKUjDT6CvvXNNA8rAeA2J40QhTTG14jhzsCBg2MO8V
         eF7GxefeANJF+9a51ekg8Pdu4cqaqMUC5Z9xswKhwBscuOA1sf17aBy5oWVJ/hJ1xuvA
         ubnxboUs3luhw/rT4VrhvnOw61vIuZ2sRbmKfVI3yTXxtq3Lb7DmLDZwdvnuaGlaN2xP
         bYAwrSVXKuhxJeAdeVnNrKC7yCvTd89sOizJueyeGdvxbHIacDLMlC71MqahHGwfOE0C
         cQFA==
Content-Disposition: inline
In-Reply-To: <CAA2oCOnOMcQbh1bEyF5hZjfFGdsw7wWLh=y5rPO54OQnDgV5SQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Madhu K <madhu.sk89@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Sat, Oct 07, 2017 at 09:23:04PM +0530, Madhu K wrote:
> I am kernel newbie, I wanted to learn linux wireless architecture and
> I want to write some wireless drivers. So please suggest me some
> tutorials or documents which will help me to understand the linux
> wireless device drivers architecture.

I am also newbie. Although I have no plan to learn wireless
architecture, I do think that Linux kernel (device driver module)
programming is not newbie-friendly.

In my opinion, LDD3 is somehow outdated. Wireless network is not
covered, while there is a full chapter covering parallel port, which is
hard for newbies to learn due to difficulty to buy appropriate hardware.

Moreover, many interfaces are updated. Semaphores have been replaced by
mutexes long ago. There are also advanced .{read|write}_iter functions
in file_operations which can replace {.read|.write}. I cannot understand
the read_iter_zero function in drivers/char/mem.c after I read LDD3.

I wish a better resource for newbies to learn driver programming, maybe
LDD4, maybe a more detailed book elsewhere.

Cheers
Zheng Lv
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
