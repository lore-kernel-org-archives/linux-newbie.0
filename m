From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE:  Re: how to print a 64  bit variable in Linux
Date: Thu, 21 Jul 2005 19:40:52 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811611394@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: SVisor <svisor@lycos.com>, linux-newbie@vger.kernel.org

Thanks Svisor,

I missed seeing the printf man pages.
Thanks for the help.

Regards,
Mukund Jampala


>-----Original Message-----
>From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-
>owner@vger.kernel.org] On Behalf Of SVisor
>Sent: Thursday, July 21, 2005 7:13 PM
>To: linux-newbie@vger.kernel.org
>Subject: Re: how to print a 64 bit variable in Linux
>
>Mukund JB. wrote:
>> Dear all,
>> I have a truly miniature doubt here. sorry for asking this but I
>struggled enough before coming here.
>>
>> How do I print 8 byte (long long type) value in Linux?
>
>long long in dw;
>printf( "%lld",dw );
>
>"man 3 printf"
>Or did I not understand your question.
>
>>
>> Regards,
>> Mukund Jampala
>>
>>
>> -
>> To unsubscribe from this list: send the line "unsubscribe
linux-newbie"
>in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
>>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
