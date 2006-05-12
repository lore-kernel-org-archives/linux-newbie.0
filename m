From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: New Linux & GPL isuues
Date: Fri, 12 May 2006 19:37:34 +0530
Message-ID: <AF63F67E8D577C4390B25443CBE3B9F709283C@esnmail.esntechnologies.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kari Hurtta <hurtta+linux-newbie@leija.mh.fmi.fi>
Cc: linux-newbie@vger.kernel.org

Dear Kari,

>You can not distribute resulting binary.

But how are they distributing the driver modules.
Is it valid from the module distributor point of view?

Can some one distribute it so?

Regards,
Mukund Jampala


>> I am planning to use a module in my Open Source project GPL claimed
>> module.
>> I have to buy it from the customer.
>>
>> The module is so build that it has 2 object files:
>> One object file will be provided with the source code which registers
>> itself to the kernel char driver interface and uses them.
>> The Second object file contains the proprietary code of the
>> manufacturer.
>> They build it this way and create a .ko file by linking them.
>> Later I can load this module into a running kernel module.
>>
>> If this is the case, the second object file is not open source.
>> Can you please elaborate on this and let me know if I can use this in
my
>> GPL based project.
>
>You can not distribute resulting binary.
>
>> Regards,
>> Mukund Jampala
>>
>
>/ Kari Hurtta
>
>
>>
>> -
>> To unsubscribe from this list: send the line "unsubscribe
linux-newbie"
>in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
>>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
