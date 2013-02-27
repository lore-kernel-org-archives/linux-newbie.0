From: Prashant Batra <prbatra.mail@gmail.com>
Subject: Re: understanding linux cache and free command
Date: Wed, 27 Feb 2013 11:05:36 +0530
Message-ID: <512D9B28.205@gmail.com>
References: <512CAF30.70805@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:message-id:date:from:user-agent:mime-version:to:cc
         :subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=f18hkCd2qYPTtkkEZx3jOhSdQkiE8kufyALVMT9cRVk=;
        b=wSOgPXpWdshtS6IPY1PCq/FH1Dt06XCcNKPs1ON+crFh5BmlZbTV3isCadbgYbYm8Q
         VsiE7Xd9Ni/Wt6CcqlS/f9UK2Ec/1YJsxjh7FWFOdtvK6ToJb64AAoLZrwBwkf+QTc8r
         uVO23wjSFjNhvv5wz5MrGyZi9e7jA72VeudTGf4En7HhrWpmleOjAdoYa78zg5pcfkAn
         swIVViCRV3Y/pDhFfOUNZ2FgwEFJwBehuXCrhFYoL7ViWYQl5L2TVUUF46+krTzrTz9S
         iL1bjAE5zB2ykDBHAStgjVu6r/EX6kGINrebmwJlWE3Nougr9L74nMGujE5obmpihG5q
         jkWw==
In-Reply-To: <512CAF30.70805@gmail.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Prashant Batra <prbatra.lists@gmail.com>, netdev@vger.kernel.org
Cc: linux-newbie@vger.kernel.org

Adding netdev for a bigger audience.

On Tuesday, February 26, 2013 6:18:48 PM, Prashant Batra wrote:
> Hi All,
>
> I have created few memory cache areas using "kmem_cache_create" and
> using it to allocate some memory.
>
> What I observe after some cache_alloc's and cache_free's is that
> /proc/slabinfo entries for my objects are good, meaning the number of
> objects go back to 0 after they are freed.
>
> But linux "free" command shows that some of the objects are cached and
> that keeps on increasing. I am not able to understand this behavior.
> Is it that kernel keeps the cache objects even after they are freed?
>
> #cat /proc/slabinfo
> my_cache         200    200   4096    1    1 : tunables   24   12    8
> : slabdata    200    200      0
>
> It shows 200 allocated objects from "my_cache"
>
> and
>
> #free -lm
>
>             total       used       free     shared    buffers     cached
> Mem:         48340        610      47730          0         96       130
>
> the cached objects keep on growing.
>
> After 5 mins in which I am doing some alloc and free-
>             total       used       free     shared    buffers     cached
> Mem:        48340        616      47723          0         96        137
>
> /proc/slabinfo remains the same.
>
> Any help is appreciated.
>
> Thanks,
> Prashant

