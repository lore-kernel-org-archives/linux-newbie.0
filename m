From: "Ajay Singh \(ajaysi\)" <ajaysi@cisco.com>
Subject: RE: kernel porting query
Date: Fri, 16 Feb 2007 13:29:19 +0530
Message-ID: <677342AB6AE12D4DB59A9D473F40D74B028E0412@xmb-blr-416.apac.cisco.com>
References: <7783925d0702151816r7df63816ld9c69b56bdb0a0b9@mail.gmail.com> <677342AB6AE12D4DB59A9D473F40D74B028E0411@xmb-blr-416.apac.cisco.com> <db702f320702152042n4a8a1ac8md7f73458fdac57f5@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <db702f320702152042n4a8a1ac8md7f73458fdac57f5@mail.gmail.com>
DKIM-Signature: v=0.5; a=rsa-sha256; q=dns/txt; l=2206; t=1171612764; x=1172476764;
	c=relaxed/simple; s=inddkim2002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=ajaysi@cisco.com;
	z=From:=20=22Ajay=20Singh=20\(ajaysi\)=22=20<ajaysi@cisco.com>
	|Subject:=20RE=3A=20kernel=20porting=20query
	|Sender:=20;
	bh=V9YXVlgXlMBPwxJdLWxF6vPO9E8U8yL33O6Rqr0C94Y=;
	b=7NzzPclIkO5AQXQKQzXaNZf+f4J4HB2xzC3WbR1uPqSV1++uAHyNebvRgsJxZy/VToWodxaD
	jBkJqELIMzazClD/omybLWqZDAz4w1Ki3sG2M4MrtR5T6Kab1pp9pELo;
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, Rizvan <rizzkhan@gmail.com>

 

-----Original Message-----
From: Rizvan [mailto:rizzkhan@gmail.com] 
Sent: Friday, February 16, 2007 10:13 AM
To: Ajay Singh (ajaysi)
Subject: Re: kernel porting query

On 2/16/07, Ajay Singh (ajaysi) <ajaysi@cisco.com> wrote:
>
>
> <snip>
> 1) Can any one please shed some light on precisely and exactly what 
> are differences in different boards for which we need to port linux?
>
> The differences depends on the boards ... Mostly if they belong to the

> same family the differences could be mainly in the peripherials ...
> Interrupt mappings... Serial interface ... Memory sizes (if differnet 
> boards have different memory sizes) ... Sometimes some devices may be 
> moved to some other locations in the memory map (Look at memory map of

> your SoC on your board).
>
> 2) Also, I would appreciate if you could point out code portions / 
> source files that need to be changed in the process of porting Linux?
>
> Look in linux-2.6.20\arch\mips\mips-boards for help on porting to your

> board. You can add directory specific to your board here.
> I think you can start from xxx_setup.c file in the above directory.
>

Hi Ajay,

This is very good information, I have some issue with my board during
porting.
All things are same bet old and new board except clock frequency, still
my reboot (warm reset) is not working ? ANy idea ?

Ajay> Are you calling mips_reboot_setup() in your plat_mem_setup()? You
may have to modify/add code to mips_reboot_setup() specific to your
board.

Is this due to boot stramp or NAND Flash mapped to other address ?

Ajay> I don't think that can be the issue.

Ajay> Also please mail to the list so that others can also see your
queries and suggest better answers.

Ajay.

Thanks
Rizvan

> Good luck.
> Ajay.
>
> TIA,
>
> Rick
>
> --
> To unsubscribe from this list: send an email with "unsubscribe 
> kernelnewbies" to ecartis@nl.linux.org Please read the FAQ at 
> http://kernelnewbies.org/FAQ
>
> --
> To unsubscribe from this list: send an email with "unsubscribe 
> kernelnewbies" to ecartis@nl.linux.org Please read the FAQ at 
> http://kernelnewbies.org/FAQ
>
>


--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
