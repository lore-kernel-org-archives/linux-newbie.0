From: Rajesh <rajeshkuri@gmail.com>
Subject: Re: kgdg over ethernet
Date: Sun, 9 Oct 2011 14:27:46 +0530
Message-ID: <CALp+=PBR3HuXpFu198Rwx8XEpGFuA1cdB01TwV41H1dDLyBuLw@mail.gmail.com>
References: <1317529952.98869.YahooMailNeo@web111006.mail.gq1.yahoo.com>
	<1317531086.95121.YahooMailNeo@web111008.mail.gq1.yahoo.com>
	<CAHnt0GUbih__HT8aPHQGEkfOD9YfMjriCMKr4dQLFnK=J4AzGg@mail.gmail.com>
	<1318146216.11293.YahooMailNeo@web111010.mail.gq1.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=tA3n2MOPvKF2qddOleo14D3RtXwkNanRvZmUbK6oMBA=;
        b=HiMe+Ay7AWSCXi4RPRkMVZqJMicYk0dZR7rwEvXEiG8xrc9Nm8wShb5g7/kJ/PNl1J
         x2dt9UnktyAspyaPcvakAjpaI8ekFzyDBDlEoTITH7OcVQPIIMF03PiBt88/1jXV1lKT
         9tpMSoL8HUvAJyc1HA+Kgvz0RIXQtM8q71wRU=
In-Reply-To: <1318146216.11293.YahooMailNeo@web111010.mail.gq1.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ramaraju G <ramarajug@ymail.com>
Cc: Peter Teoh <htmldeveloper@gmail.com>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Peter,

Me too curious to know and try to understand working of Linux Kernel
and implementation.
It would help many others in community trying to get into Kernel progra=
mming.

--Regards,
rajesh

On Sun, Oct 9, 2011 at 1:13 PM, Ramaraju G <ramarajug@ymail.com> wrote:
> Hi Peter,
>
> thanks for the reply.
> My intention is learning the kernel. So, i want to know what happens =
initially in the boot sequence.
> I am having Dell Inspiron laptop. It doesnt have facility to connect =
to the docking station.
>
> Could you give me some more pointers in setting up the VirtualBox + k=
gdb running in the guest OS, and then gdb in the host machine using nam=
ed pipes.
>
> thanks
> Raju
>
> ________________________________
> From: Peter Teoh <htmldeveloper@gmail.com>
> To: Ramaraju G <ramarajug@ymail.com>
> Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
> Sent: Saturday, October 8, 2011 11:43 PM
> Subject: Re: kgdg over ethernet
>
>
> as u know, KGDB is an in-kernel debugger, as it modifies the linux ke=
rnel to be able to interact with serial port at an early stage of bootu=
p. =A0 =A0but ethernet port setup takes place much later in the bootup =
sequence. =A0=A0and so debugging over ethernet port is possible (netcon=
sole, lookup kernel source's Documentation directory), but not when u w=
ant to know what is happening at an early stage.
>
> if u just want to learn, I have done this before using VirtualBox + k=
gdb running in the guest OS, and then gdb in the host machine to connec=
t to the guest via the serial port, or named pipes etc.
>
> but if really need serial port, I am sure there exists a Docking stat=
ion for your laptop....and it is hardware specific, so u have to go to =
the specific hardware community to hunt for it. =A0 for example, mine i=
s R400 Lenovo, so I found here:
>
> http://support.lenovo.com/en_US/product-and-parts/detail.page?DocID=3D=
PD005598
>
> where it mentioned how to get serial port (at least 3 different devic=
es are available).
>
> but if u are electronic-savvy, perhaps u can search for the schematic=
 and attach the serial port yourself, for example, for my R400 the sche=
matic is (plus several other model as well) here:
>
> http://www.laptopschematic.com/lenovo-thinkpad-r400-schematic-diagram=
-mlb3d-6/
>
> On Sun, Oct 2, 2011 at 12:51 PM, Ramaraju G <ramarajug@ymail.com> wro=
te:
>
>>s
>>Hi,
>>
>>How to enable kgdb over ethernet support in linux kernel 2.6.38 ?
>>I dont have any serial port in my laptop.
>>
>>regards,
>>Raju
>>--
>>To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
>>the body of a message to majordomo@vger.kernel.org
>>More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
>>Please read the FAQ at http://www.linux-learn.org/faqs
>>
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
