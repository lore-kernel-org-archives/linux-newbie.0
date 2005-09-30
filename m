From: "P.Manohar" <pmanohar@lantana.cs.iitm.ernet.in>
Subject: Re: List of kernel symbols in 2.6.5 kernel.
Date: Fri, 30 Sep 2005 09:49:56 +0530 (IST)
Message-ID: <Pine.LNX.4.60.0509300947040.6908@lantana.cs.iitm.ernet.in>
References: <Pine.LNX.4.60.0509281140150.19139@lantana.cs.iitm.ernet.in>
 <1127894441.3192.0.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="101318933-1775856591-1128053996=:6908"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1127894441.3192.0.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Sergio Paracuellos <sparacuellos@lock-linux.com>
Cc: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--101318933-1775856591-1128053996=:6908
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE


thank you.  I tried with /proc/kallsyms.
In 2.6.9 if you set CONFIG_ALL_SYMBOLS  and recompile the kernel , then we=
=20
can have all the kernel symbols list.
That option is not there in 2.6.5 kernels.
In the latter case we are unable to get the list of all symbols. Any=20
suggestions on this.

thanks & regards,
P.manohar.

On Wed, 28 Sep 2005, Sergio Paracuellos wrote:

> El mi=C3=A9, 28-09-2005 a las 11:43 +0530, P.Manohar escribi=C3=B3:
>> hai all,
>>
>>      In 2.4 kernels we have the complete list of kernel symbols with
>> "ksyms -a", but in 2.6.5 the list is incomplete , is there any mechanism
>> for getting the complete list of kernel symbols and their associated mem=
oy
>> locations.
> Hi,
>
> You could try with:
>
> =09cat /proc/kallsyms
>
> Cheers,
>
> =09Sergio
>>
>> Any small help is appreciated.
>>
>> Thanks & Regards,
>> P.Manohar.
>> -
>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" =
in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--101318933-1775856591-1128053996=:6908--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
