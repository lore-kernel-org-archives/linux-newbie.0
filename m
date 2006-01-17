From: Andrew <ald2@arrakis.es>
Subject: Re: undefined reference
Date: Tue, 17 Jan 2006 21:30:57 +0100
Message-ID: <43CD5401.5020107@arrakis.es>
References: <43CD4E31.3010001@arrakis.es> <Pine.LNX.4.62.0601172221490.2812@grinch.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.62.0601172221490.2812@grinch.ro>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

caszonyi@rdslink.ro wrote:

> On Tue, 17 Jan 2006, Andrew wrote:
>
>> Good evening,
>>
>> Trying to compile gqcam-0.8 or 0.9 on a Slackware-10.1 I get a lot of 
>> 'undefined reference' messages about libpng.so. I have version 1.2.8 
>> of libpng (the latest).
>>
>> Does anyone know what is wrong?
>>
>
> you forgot (or the configure script forgot) to add libz when lining 
> with libpng ?

The source doesn't use config, only make.

I found and installed a .tgz, but the app won't start as it doesn't find
libpng.so.2. Is my libpng too recent? Can I install an older one
alongside? Or can I try a symlink? (Without my computer exploding).

Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
