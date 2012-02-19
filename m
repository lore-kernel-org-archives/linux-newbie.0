From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Subject: Buildroot compilation error
Date: Sun, 19 Feb 2012 11:38:32 -0500
Message-ID: <CALyraeMK=bEVkBtbi8xAm5aWrCbjGMTkArHygG78tJ86TzzNOw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=IaOjUtrsmIsidwr8D4aZKB+7FIK9cCMuygI7yRpKnic=;
        b=pD/ciJR/17eSbpd7jDN2R2cLOMILvbIZy4T3hyc+x+TK+cz07y0gxEJGCMtWJu4A9O
         QFOOsXxLXNtPKkXqvDU3HZYfirNnU6CWBauqQfVoqbnv3l+e+rmfwhXao1aQpiHvhgEX
         fAQFUEg4W8MYWFeC/BPjUu8GBDoqtSKrACYWY=
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-kernel-mail <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org
Cc: dhylands@gmail.com

Hello All,

I am using BuildRoot to compile my embedded linux and tool-chain.
After compiling most of the packages and tool-chain I am getting
following error. This occurs when compiling libnl-3.0

make[3]: Entering directory
`/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0/lib'
  CC     route/pktloc.lo

route/pktloc.c: In function =91read_pktlocs=92:
route/pktloc.c:127:34: error: =91YY_BUF_SIZE=92 undeclared (first use i=
n
this function)
route/pktloc.c:127:34: note: each undeclared identifier is reported
only once for each function it appears in
make[3]: *** [route/pktloc.lo] Error 1
make[3]: Leaving directory
`/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0/lib'
make[2]: *** [all] Error 2
make[2]: Leaving directory
`/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0/lib'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory
`/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-3.0'
make: *** [/home/sriram/buildroot/buildroot-2011.11/output/build/libnl-=
3.0/.stamp_built]
Error 2

Can anyone please help me what is going on in compilation. Do I need
to specify sysroot or path to lib.
Thanks in advance for the help.



--=20
Regards,
Sri.
