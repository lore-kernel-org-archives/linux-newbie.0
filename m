From: "Tim Fletcher" <tfletcher@netfactoriel.com>
Subject: RE: Is a process running ?
Date: Mon, 28 Jul 2003 13:02:32 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NGBBLGNMLJPKEPIFPKLHMEEJGAAA.tfletcher@netfactoriel.com>
References: <000701c3550a$41308a80$ed64a8c0@descartes>
Reply-To: <tfletcher@netfactoriel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000701c3550a$41308a80$ed64a8c0@descartes>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "John T. Williams" <jtwilliams@vt.edu>, "Linux-Newbie@Vger. Kernel. Org" <linux-newbie@vger.kernel.org>

Thanks very much, works great :)

Tim

> -----Message d'origine-----
> De : John T. Williams [mailto:jtwilliams@vt.edu]
> Envoy=E9 : lundi 28 juillet 2003 15:14
> =C0 : tfletcher@netfactoriel.com; Linux-Newbie@Vger. Kernel. Org
> Objet : Re: Is a process running ?
>
>
> Something like this would do it
>
> -------------------  pythstart.sh ----------------------
> #!/bin/bash
>
> ps -A | grep -e "[ /]python2.1\>" 1> /dev/null 2> /dev/null
>
> if[ $? !=3D 0]; then
>     python2.1
> fi
>
> -----------------end pythstart.sh-----------------------
>
>
>
>
>
> ----- Original Message -----
> From: "Tim Fletcher" <tfletcher@netfactoriel.com>
> To: "Linux-Newbie@Vger. Kernel. Org" <linux-newbie@vger.kernel.org>
> Sent: Monday, July 28, 2003 2:20 AM
> Subject: Is a process running ?
>
>
> >
> > Hi all,
> >
> > i would like to write a simple shell script that checks for the exi=
stence
> of a certain programme, in this case python2.1. if the
> > programme is active, do nothing, if not, start it.
> >
> > i did think of doing a ps -A |grep python2.1, but then i have no id=
ea how
> to intergrate that in the shell script.
> >
> > any ideas would be very  welcome
> >
> > Thanks & HAND
> > Tim
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-new=
bie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
