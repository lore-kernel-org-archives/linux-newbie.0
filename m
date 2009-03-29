From: Joe Damato <ice799@gmail.com>
Subject: Re: [PATCH 1/2] x86: Add getter/setter static inlines for x86 
	descriptors
Date: Sun, 29 Mar 2009 14:50:39 -0700
Message-ID: <3605561d0903291450v516a7e9csaff4309c0cacb121@mail.gmail.com>
References: <cover.1238361501.git.ice799@gmail.com>
	 <76c37743d20e5737eadc747cbdddbc2beb11f074.1238361501.git.ice799@gmail.com>
	 <49CFE7E0.80500@zytor.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=fXA6TQZnDaJ3JDyC8oLMAEc0aWRAc6hv+mj6j0Mg4h4=;
        b=Sf1Ie2P9dg3M1CwIJYLeBPMhatNqEtaGfmWX4JVn0iVaA6feIOlsd0oWfr4aoC309z
         H4OW/g8W7SUQVlOkKv3KyV3mw+1zP5cHeLP62W6tg/yXgzo8eTSTm/uwWNB1PQrp0YO+
         6or/VuEcQloWyvvGzX5teiSA+njo5MR9ofFSw=
In-Reply-To: <49CFE7E0.80500@zytor.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-x86_64@vger.kernel.org, w@1wt.eu, mingo@elte.hu, jeremy@goop.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org

On Sun, Mar 29, 2009 at 2:28 PM, H. Peter Anvin <hpa@zytor.com> wrote:
> Joe Damato wrote:
>> Static inline getters/setters have been provided to encourage consum=
ers not to touch the internals of 32bit x86 descriptors directly.
>>
>> Signed-off-by: Joe Damato <ice799@gmail.com>
>
> Okay, what is the motivation for this?
>
> This is a serious question. =A0The x86 descriptors are so complex tha=
t
> it's not clear to me that this restriction makes the code any more
> clear. =A0Especially not with things like:
>
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 cpu->arch.gdt[i].b |=3D 0x00000100;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 desc_set_hi(tmp, =A0desc_get_hi(tmp) | =
0x00000100);
>
> This isn't an improvement. =A0If you're doing to so something like th=
is,
> you need to actually implement the *intent* here.

Hi -

In my first patch set several months ago I replaced the structure
desc_struct with bit fields that exposed the fields for IDT/LDT/TSS
entries. This patch set was rejected for several reasons, one of which
was that Linux is trying to move away from bit fields. I also received
other comments such as "take a smaller bite", etc.

So instead of the bit fields, I implemented static inline
getters/setters. I thought that this small change would be a good
first step to re-test the waters of submitting patches to the kernel
before I started to clean out more pieces of the x86 architecture
specific code.

I agree that this isn't very clear, but from comments I received on my
first set, I assumed that this was closer to what people wanted to see
in the kernel. I am happy to iterate and submit something better, but
I am clearly misunderstanding what people would like to see.

Any suggestions on how this first-timer can help are greatly appreciate=
d.

Joe
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
