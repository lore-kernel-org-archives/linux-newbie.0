From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: kgdg over ethernet
Date: Sun, 9 Oct 2011 22:15:08 +0800
Message-ID: <CAHnt0GX73GrbXtSiWBoHePsTEhnXvuQ_VSU8N=q2wyi9qSSKWg@mail.gmail.com>
References: <1317529952.98869.YahooMailNeo@web111006.mail.gq1.yahoo.com>
	<1317531086.95121.YahooMailNeo@web111008.mail.gq1.yahoo.com>
	<CAHnt0GUbih__HT8aPHQGEkfOD9YfMjriCMKr4dQLFnK=J4AzGg@mail.gmail.com>
	<1318146216.11293.YahooMailNeo@web111010.mail.gq1.yahoo.com>
	<CALp+=PBR3HuXpFu198Rwx8XEpGFuA1cdB01TwV41H1dDLyBuLw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=v6wRtC0nt290PnE7i1LPT2gvzwgvoYb2J4RnGM918aE=;
        b=cWYZybEb3vGaV8LdjGpnenvPsdNfwGlIia6h5JVx2WXi4kZe+mxW1eufE7cWiXZsKm
         d/zIjr9gkFN2mG0YMeoTCB2ebynnJBEzcvQEeiOosStZA1iNk0NMa02vSNi8tv+rBwyk
         ZE98jl8fMLIfNe5UqomxJLJQz8zctOKW1njIg=
In-Reply-To: <CALp+=PBR3HuXpFu198Rwx8XEpGFuA1cdB01TwV41H1dDLyBuLw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Rajesh <rajeshkuri@gmail.com>
Cc: Ramaraju G <ramarajug@ymail.com>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

good.....there is a kernel parameter:

earlyprintk=3Dvga where u can put into your bootloader.   see
Documentation/kernel-parameters.txt

and here is one link:

http://allmybrain.com/2010/04/29/debugging-linux-kernel-modules-with-vi=
rtualbox-and-kgdb/
http://techtooltip.wordpress.com/2008/09/12/using-host-serial-port-from=
-guest-in-virtual-box/

and here (the original URL is gone, but it is cached here in google gro=
up):

http://groups.google.com/group/linuxkernelnewbies/browse_thread/thread/=
169fd1ddce20287e/f449cabdf1a8cf80?lnk=3Dgst&q=3D%E4%B8%80%E7%A7%8D%E6%9=
6%B9%E4%BE%BF%E7%9A%84Linux%E5%86%85%E6%A0%B8%E8%B0%83%E8%AF%95%E6%96%B=
9%E6%B3%95%EF%BC%9AVirtualBox+%2B+KGDB#f449cabdf1a8cf80

sorry if u don't know chinese (the whole line above is one link - no
space in between).


On Sun, Oct 9, 2011 at 4:57 PM, Rajesh <rajeshkuri@gmail.com> wrote:
>
> Peter,
>
> Me too curious to know and try to understand working of Linux Kernel
> and implementation.
> It would help many others in community trying to get into Kernel prog=
ramming.
>
> --Regards,
> rajesh
>
> On Sun, Oct 9, 2011 at 1:13 PM, Ramaraju G <ramarajug@ymail.com> wrot=
e:
> > Hi Peter,
> >
> > thanks for the reply.
> > My intention is learning the kernel. So, i want to know what happen=
s initially in the boot sequence.
> > I am having Dell Inspiron laptop. It doesnt have facility to connec=
t to the docking station.
> >
> > Could you give me some more pointers in setting up the VirtualBox +=
 kgdb running in the guest OS, and then gdb in the host machine using n=
amed pipes.
> >
> > thanks
> > Raju
> >
> > ________________________________
> > From: Peter Teoh <htmldeveloper@gmail.com>
> > To: Ramaraju G <ramarajug@ymail.com>
> > Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
> > Sent: Saturday, October 8, 2011 11:43 PM
> > Subject: Re: kgdg over ethernet
> >
> >
> > as u know, KGDB is an in-kernel debugger, as it modifies the linux =
kernel to be able to interact with serial port at an early stage of boo=
tup. =A0 =A0but ethernet port setup takes place much later in the bootu=
p sequence. =A0=A0and so debugging over ethernet port is possible (netc=
onsole, lookup kernel source's Documentation directory), but not when u=
 want to know what is happening at an early stage.
> >
> > if u just want to learn, I have done this before using VirtualBox +=
 kgdb running in the guest OS, and then gdb in the host machine to conn=
ect to the guest via the serial port, or named pipes etc.
> >
> > but if really need serial port, I am sure there exists a Docking st=
ation for your laptop....and it is hardware specific, so u have to go t=
o the specific hardware community to hunt for it. =A0 for example, mine=
 is R400 Lenovo, so I found here:
> >
> > http://support.lenovo.com/en_US/product-and-parts/detail.page?DocID=
=3DPD005598
> >
> > where it mentioned how to get serial port (at least 3 different dev=
ices are available).
> >
> > but if u are electronic-savvy, perhaps u can search for the schemat=
ic and attach the serial port yourself, for example, for my R400 the sc=
hematic is (plus several other model as well) here:
> >
> > http://www.laptopschematic.com/lenovo-thinkpad-r400-schematic-diagr=
am-mlb3d-6/
> >
> > On Sun, Oct 2, 2011 at 12:51 PM, Ramaraju G <ramarajug@ymail.com> w=
rote:
> >
> >>s
> >>Hi,
> >>
> >>How to enable kgdb over ethernet support in linux kernel 2.6.38 ?
> >>I dont have any serial port in my laptop.
> >>
> >>regards,
> >>Raju
> >>--
> >>To unsubscribe from this list: send the line "unsubscribe linux-new=
bie" in
> >>the body of a message to majordomo@vger.kernel.org
> >>More majordomo info at =A0http://vger.kernel.org/majordomo-info.htm=
l
> >>Please read the FAQ at http://www.linux-learn.org/faqs
> >>
> >
> >
> > --
> > Regards,
> > Peter Teoh
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-new=
bie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at =A0http://vger.kernel.org/majordomo-info.htm=
l
> > Please read the FAQ at http://www.linux-learn.org/faqs
> >



--
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
