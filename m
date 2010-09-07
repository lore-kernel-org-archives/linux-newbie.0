From: Om Narasimhan <om.nara@bluehatsoft.com>
Subject: Re: dear list
Date: Mon, 6 Sep 2010 21:26:54 -0700
Message-ID: <AANLkTimaujt+H6zs4XBfSTuMBq2nXt0G5+XqN3EeR=Ot@mail.gmail.com>
References: <4C81C017.7070104@qq.com>
	<AANLkTi=XvHbNHGGM9H=ewGv-n+Jv+c8cBrVFK2tn_DyC@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AANLkTi=XvHbNHGGM9H=ewGv-n+Jv+c8cBrVFK2tn_DyC@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: gaoqiang <834555262@qq.com>, linux-newbie@vger.kernel.org

http://kernelnewbies.org/FAQ/KernelCrossCompilation
check the last part, I have written how to get the preprocessed output.

HTH,
Om.

On Sun, Sep 5, 2010 at 9:57 PM, Peter Teoh <htmldeveloper@gmail.com> wr=
ote:
> On Sat, Sep 4, 2010 at 11:42 AM, gaoqiang <834555262@qq.com> wrote:
>> Recently,I got some trouble reading the kernel source. =A0There are =
so many
>> macro def in the source tree and I don't know whether some one wad d=
efined
>> or not.
>>
>> So,is there any way to just preprocessor to eliminate these macros ,
>> similiar to gcc -E ???
>>
>
> pros and cons...."-E" will generate so much intermediate output that
> you will be drowned in source codes.
>
> alternatively....it is better to zoom down via learning how to use
> ctags with "vi", and direct disassembly via "objdump" to see which
> macro it matches to.
>
> http://www.yolinux.com/TUTORIALS/LinuxTutorialAdvanced_vi.html
>
> but first u must generate the tag file with "make tags" on the kernel
> source first.
>
>>
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-newb=
ie" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
>>
>
>
>
> --
> Regards,
> Peter Teoh
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
