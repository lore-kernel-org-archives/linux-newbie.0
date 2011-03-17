From: Aneesh Bhasin <contact.aneesh@gmail.com>
Subject: Re: smap output - unnamed entries and heap
Date: Thu, 17 Mar 2011 17:16:13 +0530
Message-ID: <AANLkTi=gN=DOU9bQtqdr1s44y5QgLn0W9_oRb9JTMWNa@mail.gmail.com>
References: <AANLkTik3N5j74eWastminNZLevPqoSCEiVCrX1vP66_k@mail.gmail.com>
 <20110315091412.de6eb63c.rdunlap@xenotime.net> <AANLkTikU_kPOoNv6gJiPOsmrkFDddTLQ-0--wViYyFxj@mail.gmail.com>
 <4D80C47C.80300@draigBrady.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type:content-transfer-encoding;
        bh=p6XKU7DEJiaDp2hD1Z++nNmSWAXqrqzH4Uye6kMOPDE=;
        b=SHWR988YC/onMoufSer2mwSOwygkxlknb/Kdz9I28UKU7Anm2Qa19KmRxXVr3Di3C4
         qQhpPqtwVlAkjJ7YAQhzQDFcPZ/5ZzCFYmBkRC/+H21RDWu3Dh09f93C8NVC19jA4mER
         9nE9vAjYfa0OWX6zK7xWGJCBjG1hSxAA4INpM=
In-Reply-To: <4D80C47C.80300@draigBrady.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?ISO-8859-1?Q?P=E1draig_Brady?= <P@draigbrady.com>
Cc: Randy Dunlap <rdunlap@xenotime.net>, linux-newbie <linux-newbie@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>

2011/3/16 P=E1draig Brady <P@draigbrady.com>:
> On 16/03/11 05:19, Aneesh Bhasin wrote:
>> Also, is there a way in linux (without using
>> dedicated tools like valgrind), to see how much heap or anonymous
>> memory is attributed to code arising from a particular library/binar=
y
>
> You might find ps_mem.py useful.
> If parses smaps and reports RAM usage of a program
>
> http://www.pixelbeat.org/scripts/ps_mem.py
>
> cheers,
> P=E1draig.

I did try that script. Unfortunately, I not only want the memory used
for my program but also, which library is contributing to that memory.
To that end, I have written a small script which parses the smap
output in a format more suitable for my analysis.

However, as I wrote earlier, there a lot of anonymous memory regions
listed in smap output (with permission rwxp) - and I do not know of
any way in which I could associate these memory mapping to a
particular library..

Any pointers in this regard will be highly appreciated :)

Regards,
Aneesh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
