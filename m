From: Ramaraju G <ramarajug@ymail.com>
Subject: Re: kgdg over ethernet
Date: Sun, 9 Oct 2011 00:43:36 -0700 (PDT)
Message-ID: <1318146216.11293.YahooMailNeo@web111010.mail.gq1.yahoo.com>
References: <1317529952.98869.YahooMailNeo@web111006.mail.gq1.yahoo.com> <1317531086.95121.YahooMailNeo@web111008.mail.gq1.yahoo.com> <CAHnt0GUbih__HT8aPHQGEkfOD9YfMjriCMKr4dQLFnK=J4AzGg@mail.gmail.com>
Reply-To: Ramaraju G <ramarajug@ymail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024; t=1318146216; bh=OH0RTpPZCUoAgyKE2lVwFWau6DSnriQjOxzuLhQbsHk=; h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding; b=M6llKfA/TUFY+HGgWgvEEH6BvftWlDD6BGQnRFXMjV65LwbcdbZp4kwAJVvHc9XG1xFtpCbEo7sc9U4VTJliUyc2kfJGF7e/PRWQ5qkxPthST+EyTH/gS8PIeKBE/kW20rhv4e59zlu2yD/wqDCWdLxqKzPtO+dZHNfVRenDnoE=
In-Reply-To: <CAHnt0GUbih__HT8aPHQGEkfOD9YfMjriCMKr4dQLFnK=J4AzGg@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hi Peter,

thanks for the reply.
My intention is learning the kernel. So, i want to know what happens in=
itially in the boot sequence.
I am having Dell Inspiron laptop. It doesnt have facility to connect to=
 the docking station.

Could you give me some more pointers in setting up the VirtualBox + kgd=
b running in the guest OS, and then gdb in the host machine using named=
 pipes.

thanks
Raju

________________________________
=46rom: Peter Teoh <htmldeveloper@gmail.com>
To: Ramaraju G <ramarajug@ymail.com>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
Sent: Saturday, October 8, 2011 11:43 PM
Subject: Re: kgdg over ethernet


as u know, KGDB is an in-kernel debugger, as it modifies the linux kern=
el to be able to interact with serial port at an early stage of bootup.=
 =A0 =A0but ethernet port setup takes place much later in the bootup se=
quence. =A0=A0and so debugging over ethernet port is possible (netconso=
le, lookup kernel source's Documentation directory), but not when u wan=
t to know what is happening at an early stage.

if u just want to learn, I have done this before using VirtualBox + kgd=
b running in the guest OS, and then gdb in the host machine to connect =
to the guest via the serial port, or named pipes etc.

but if really need serial port, I am sure there exists a Docking statio=
n for your laptop....and it is hardware specific, so u have to go to th=
e specific hardware community to hunt for it. =A0 for example, mine is =
R400 Lenovo, so I found here:

http://support.lenovo.com/en_US/product-and-parts/detail.page?DocID=3DP=
D005598

where it mentioned how to get serial port (at least 3 different devices=
 are available).

but if u are electronic-savvy, perhaps u can search for the schematic a=
nd attach the serial port yourself, for example, for my R400 the schema=
tic is (plus several other model as well) here:

http://www.laptopschematic.com/lenovo-thinkpad-r400-schematic-diagram-m=
lb3d-6/

On Sun, Oct 2, 2011 at 12:51 PM, Ramaraju G <ramarajug@ymail.com> wrote=
:

>s
>Hi,
>
>How to enable kgdb over ethernet support in linux kernel 2.6.38 ?
>I dont have any serial port in my laptop.
>
>regards,
>Raju
>--
>To unsubscribe from this list: send the line "unsubscribe linux-newbie=
" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>


--=20
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
