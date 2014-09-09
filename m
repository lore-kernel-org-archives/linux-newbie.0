From: Hubert CHAUMETTE <hubert.chaumette@wanadoo.fr>
Subject: Re: x86_64_defconfig and i386_defconfig: What is the difference?
Date: Tue, 09 Sep 2014 17:28:36 +0200
Message-ID: <540F1CA4.9090806@wanadoo.fr>
References: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>            <540F094F.3040904@gmail.com> <75730.1410272873@turing-police.cc.vt.edu> <5c5bb43b899f41d0baa2d358168e9b39@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5c5bb43b899f41d0baa2d358168e9b39@DM2PR05MB671.namprd05.prod.outlook.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Rajat Jain <rajatjain@juniper.net>, "Valdis.Kletnieks@vt.edu" <Valdis.Kletnieks@vt.edu>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@kernelnewbies.org>


Le 09/09/2014 17:11, Rajat Jain a =E9crit :
> Hi,
>
> Thank you all for your responses. I got the answer I was looking for:
>
>> Hello Rajat,
>>
>> Indeed, the i386 is for 32bits kernels, and x86_64 for 64 bits ones.=
 If you
>> generate the configurations using "make ARCH=3Dx86 defconfig" and "m=
ake
>> ARCH=3Di386 defconfig", you can easily compare the resulting configu=
rations :
>>
>> .config from i386_defconfig :
>> #
>> # Automatically generated file; DO NOT EDIT.
>> # Linux/i386 3.17.0-rc1 Kernel Configuration # # CONFIG_64BIT is not=
 set
>> CONFIG_X86_32=3Dy CONFIG_X86=3Dy CONFIG_INSTRUCTION_DECODER=3Dy
>> CONFIG_OUTPUT_FORMAT=3D"elf32-i386"
>> CONFIG_ARCH_DEFCONFIG=3D"arch/x86/configs/i386_defconfig"
>> ...
>>
>> .config from x86_64_defconfig :
>> #
>> # Automatically generated file; DO NOT EDIT.
>> # Linux/x86 3.17.0-rc1 Kernel Configuration # CONFIG_64BIT=3Dy
>> CONFIG_X86_64=3Dy CONFIG_X86=3Dy CONFIG_INSTRUCTION_DECODER=3Dy
>> CONFIG_OUTPUT_FORMAT=3D"elf64-x86-64"
>> CONFIG_ARCH_DEFCONFIG=3D"arch/x86/configs/x86_64_defconfig"
>> ...
>>
>> As you can see, i386 is the 32 bits variant of the x86 architecture.=
 There are of
>> course many more differences between these two configurations.
>>
>> Regards,
>>
>> Hubert
> Thanks all again,
>
> Rajat
>
>
>> -----Original Message-----
>> From: Valdis.Kletnieks@vt.edu [mailto:Valdis.Kletnieks@vt.edu]
>> Sent: Tuesday, September 09, 2014 7:28 AM
>> To: Matthias Brugger
>> Cc: Rajat Jain; linux-newbie@vger.kernel.org; kernelnewbies
>> Subject: Re: x86_64_defconfig and i386_defconfig: What is the differ=
ence?
>>
>> On Tue, 09 Sep 2014 16:06:07 +0200, Matthias Brugger said:
>>
>>>> Can someone tell me if the i386 one is to be used when we want to
>>>> build for a 32bit machine and the x86_64 is to be used for 64 bit =
machine?
>>> You can build the kernel with any architecture for any architecture=
=2E
>>> This is called cross-compiling. The homepage [0] should explain you
>>> how to do that.
>> Right, but you still need to use a .config appropriate for the targe=
t machine,
>> which is what I think Rajat was asking about.
>>
>> A defconfig is usually only known verified to boot on a few (possibl=
y one)
>> examples of that architecture hardware.  For embedded ARM, it may be=
 one
>> specific development board or hardware device.  For x86, I think the=
y try to
>> keep it "will probably kind of sort of boot on generic PC hardware w=
ith a
>> common distro, but anything fancylike a webcam or better graphics th=
an "vga
>> tty emulation" may not work".
>>
>> A defconfig is pretty much just a proof of concept starting point fo=
r an actual
>> working config for a given hardware system.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

Sorry, I mistakenly replied only to the OP.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
