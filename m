From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: __jmp_buf problem in setjmp/longjmp
Date: Thu, 11 Aug 2005 11:38:59 +0530
Message-ID: <C349E772C72290419567CFD84C26E0170A0009@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Vikas <vikas.g@ap.sony.com>, chuck@gelm.net
Cc: linux-newbie@vger.kernel.org


It is dependent of the processor type.
The jmp is will an assembly code specific to the processor.
You can find the implementation of the setjmp/longjmp in architecture
specific directories.

For instance, you can find the implementation for PPC in
"arch/ppc/xmon/setjmp.c".

Mukund Jampala

>Can you please tell me why for different platform we are using
different
>__jmp_buf[] size in setjmp/longjmp
>Is that dependent on ARCHitecture (that I think)
>And do we have a good illustration for that???
>
>-----Original Message-----
>From: linux-newbie-owner@vger.kernel.org
>[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of chuck gelm
>Sent: Tuesday, August 09, 2005 2:16 AM
>To: Mukund JB.
>Cc: linux-newbie@vger.kernel.org
>Subject: Re: Mount the SD card formatted using the DIGITAL CAMREA on
Linux
>box but HOW?
>
>Mukund JB. wrote:
>> Dear all,
>>
>> I have an SD card problem that mounts when formatted on windows but
>> fails when formatted on camera as you all know.
>>
>> Now, I an able mount the SD card formatted using the DIGITAL CAMREA
on
>> Linux box using the windows formatted SD cards first 512 bytes.
>
>  Uh, which is it?
>"formatted using the DIGITAL CAMREA"
>  or
>"windows formatted SD cards"
>
>  Is the SD card formatted by the camera or by windows?
>
>What is the result of "fdisk -l" of this SD card?
>
>I recall that you are using 'sfdisk' and that it reported an error
>in the partitioning scheme of that SD card.
>
>Of less significance:  How did the partitioning get corrupted?
>Did it happen after using 'sfdisk' to modify the SD card's partitions?
>If yes, perhaps using 'sfdisk' is not the appropriate application
>to modify the SD card's partitions.
>
>  I am guessing that you may need to use a partitioning application
>to restore the SD card to something that the camera will recognize.
>I fear that the application to accomplish this is not 'sfdisk'.
>
>HTH, Chuck
>
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie"
>in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
