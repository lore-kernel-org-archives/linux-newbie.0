From: Michal Nazarewicz <mina86@tlen.pl>
Subject: Re: remap_pfn_range() and mapping RAM
Date: Tue, 12 May 2009 20:56:19 +0200
Message-ID: <87zldi2lrg.fsf@erwin.mina86.com>
References: <87ab5koqhz.fsf@erwin.mina86.com>
	<1242063629.27006.8590.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:from:to:cc:subject
         :references:x-url:x-pgp-fp:x-pgp:date:in-reply-to:message-id
         :user-agent:mime-version:content-type;
        bh=9Aw0JhuQKUczSXlA/ld71E1F+iF5iM9G5puCIK2C8vU=;
        b=A6OmsZL7iH3v3ynomhPYraB9X+ChZc4oJwY1W7RsDS+k0ngfa7D5jgWTbWTfi76sX+
         dWvDwCBkO16bk7P3dr8OtCaQQ7Z7wh4D3HuYe/wrKr/UA8DWiSAHVdykE+bWG7NJBtCx
         hqM6II7HrpBlIXNKLyDh+X9C3k5n3e0gztvuk=
In-Reply-To: <1242063629.27006.8590.camel@localhost.localdomain> (Suresh
	Siddha's message of "Mon, 11 May 2009 10:40:29 -0700")
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: suresh.b.siddha@intel.com
Cc: linux-newbie@vger.kernel.org, venkatesh.pallipadi@intel.com

> On Sun, 2009-05-10 at 09:46 -0700, Michal Nazarewicz wrote:
>> While developing a method for mapping RAM memory into user space
>> I stumbled across Suresh Siddha's commit that "broke" my code:
>> 
>>   commit be03d9e8022030c16abf534e33e185bfc3d40eef
>>   x86, pat: fix warn_on_once() while mapping 0-1MB range with /dev/mem
>> 
>> I've used something along the lines of (error checking removed):
>> 
>> #v+
>> 	return remap_pfn_range(vma, vma->vm_start,
>> 	                       (start >> PAGE_SHIFT) + vma->vm_pgoff
>> 	                       vma->vm_end - vma->vm_start,
>> 	                       vma->vm_page_prot);
>> #v-
>> 
>> Reverting the be03... commit makes it work again but I guess it's not
>> a good way to solve this problem.

Suresh Siddha <suresh.b.siddha@intel.com> writes:
> This mainline commit:
>
> commit 4bb9c5c02153dfc89a6c73a6f32091413805ad7d
> Author: Pallipadi, Venkatesh <venkatesh.pallipadi@intel.com>
> Date:   Thu Mar 12 17:45:27 2009 -0700
>
> has fixed this issue with this portion of the patch:

Ah, thanks, it works great now!  And sorry for the bother (I should've
checked with 2.6.29.2 at least).

-- 
Best regards,                                         _     _
 .o. | Liege of Serenly Enlightened Majesty of      o' \,=./ `o
 ..o | Computer Science,  Michal "mina86" Nazarewicz   (o o)
 ooo +--<mina86*tlen.pl>--<jid:mina86*jabber.org>--ooO--(_)--Ooo--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
