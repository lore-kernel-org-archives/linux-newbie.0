From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Subject: Re: Buildroot compilation error
Date: Sun, 19 Feb 2012 16:17:43 -0500
Message-ID: <CALyraePxucQS2YvPc=+D+W6kX0sbY-C1ZsYZ+K6Q2QhuHaZvLQ@mail.gmail.com>
References: <CALyraeMK=bEVkBtbi8xAm5aWrCbjGMTkArHygG78tJ86TzzNOw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=aicaZEw9diPvATeX7B/nww5Uiqwkg/rpsHCTOYg0OQA=;
        b=uWMD2XMbe7+PeyfBDHCJVgIpY6V7dXCsMAoWMaOOYRpfj0ksaVPk58SVxK+9U3beJk
         xxNiuGikecaVYaqJjd+uw4MaU5lQWehDy6PvNP1/JKr5YxFfUW/iwFSKHvjudXctH7IG
         9ITGyHOUvTJO3N/4FSNrKV8gOhNj+oWdbePOw=
In-Reply-To: <CALyraeMK=bEVkBtbi8xAm5aWrCbjGMTkArHygG78tJ86TzzNOw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-kernel-mail <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org
Cc: dhylands@gmail.com

found solution by doing this.

I added following lines of code in
libnl-3.0/lib/route/pktloc_grammer.h

#ifndef YY_BUF_SIZE
#define YY_BUF_SIZE 16384
#endif

#ifndef YY_STATE_BUF_SIZE
#define YY_STATE_BUF_SIZE ((YY_BUF_SIZE + 2) * sizeof(yy_state_type))
#endif

Thanks,
Sri

On 2/19/12, Sri Ram Vemulpali <sri.ram.gmu06@gmail.com> wrote:
> Hello All,
>
> I am using BuildRoot to compile my embedded linux and tool-chain.
> After compiling most of the packages and tool-chain I am getting
> following error. This occurs when compiling libnl-3.0
>
> make[3]: Entering directory
> `/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0/lib'
>   CC     route/pktloc.lo
>
> route/pktloc.c: In function =91read_pktlocs=92:
> route/pktloc.c:127:34: error: =91YY_BUF_SIZE=92 undeclared (first use=
 in
> this function)
> route/pktloc.c:127:34: note: each undeclared identifier is reported
> only once for each function it appears in
> make[3]: *** [route/pktloc.lo] Error 1
> make[3]: Leaving directory
> `/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0/lib'
> make[2]: *** [all] Error 2
> make[2]: Leaving directory
> `/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0/lib'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory
> `/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0'
> make: ***
> [/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0/.sta=
mp_built]
> Error 2
>
> Can anyone please help me what is going on in compilation. Do I need
> to specify sysroot or path to lib.
> Thanks in advance for the help.
>
>
>
> --
> Regards,
> Sri.
>


--=20
Regards,
Sri.
