From: Halil Demirezen <kernel@bilmuh.ege.edu.tr>
Subject: Re: FDC and compilation parameters.
Date: Sat, 22 May 2004 21:45:29 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040522184529.GA9545@bilmuh.ege.edu.tr>
References: <20040521053958.GA31128@bilmuh.ege.edu.tr>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20040521053958.GA31128@bilmuh.ege.edu.tr>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Anyone there?



On Fri, May 21, 2004 at 08:39:58AM +0300, Halil Demirezen wrote:
> I am trying to write some test kernels to get the
> whole concept concrete. I am writing *.s and *.c
> codes all together. However, I could not find the
> exact CFLAGS to compile. Should I use -O2 or 
> -fomit-frame-pointer...
> 
> What do you offer me ? The kernel will be written in
> C ( some parts are asm) and there is no compression.
> I am linking it with using 
> 
>  ld -Ttext 0x10000 -s --oformat binary -o test.bin test.o
>  
> and writing it to the floppy as below:
> 
>  dd obs=512 seek=6 if=test.bin of=/dev/fd0
> 
> 
> However, there are some unexpected faults and the machine reboot.
> I am using I386 by the way ;).
> 
> And can anyone tell me where I can find a good document telling 
> how to program FDC. All the staff i found on net is confusing..
> 
> Thanks.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
