From: "Jonathan Kallay" <yoni@kallay.net>
Subject: Re: missing man and smbsh
Date: Sat, 21 Dec 2002 11:14:30 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <008f01c2a90c$0b43f560$6400a8c0@00arc>
References: <5.1.0.14.1.20021220191905.020c3c10@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Sorry about being short on the details- my machine is at work and I'm
starting a two week vacation (the perks of being a teacher).

The way I now understand it, dselect installs precompiled binaries rather
than compiling the source.  Since the configuration options for Samba are
set before compilation, I'll either have to work with the apt-get or dpkg
source building features or just download the source and build it the usual
way without the packaging.

As for the smbfs module, when I installed the smbfs package in dselect I
expected the smbfs module to be placed somewhere.  Shouldn't I be able to
insert the module without recompiling or reinstalling the kernel?

The missing man:  when I enter the command "man foo" I get a message like
"bash:  man not found"- as if it simply does not recognize the command.  If
I type "whereis man" it'll return something like "man: /usr/share/man
/usr/share/doc/man/man.8.gz" or something of the sort.
----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: <linux-newbie@vger.kernel.org>
Sent: Friday, December 20, 2002 10:26 PM
Subject: Re: missing man and smbsh


> At 10:17 PM 12/20/02 -0500, Jonathan Kallay wrote:
> >I'm running Debian 3.0 and have been working on setting up my machine on
a
> >Windows network.  I installed the packages samba, samba-common, swat,
smbfs
> >and smbclient.  When using smbmount I've gotten an error from the kernel-
I
> >tried running "modprobe smbfs", but the smbfs module couldn't been found.
I
> >also tried running smbsh but that couldn't be found either.
>
> What kernel are you using ("uname -a")? Last time I checked, Debian
> Woody  (3.0) installs 2.2.20-compact by default, and that binary doesn't
> include the smbfs module. You'll need a full-strength kernel, either one
> you get in binary form ("apt-cache search kernel-image" for the choices)
or
> that you compile yourself ("apt-cache kernel-source" for the choices).
>
> >I thought that perhaps there were setting that I did not correctly set
when
> >installing Samba (such as the -smbwrapper option).  So I tried using
dselect
> >to remove and reinstall Samba.  However, before compilation dselect
didn't
> >prompt for any options.
>
> I haven't done this is in a long time myself, so I don't recall what
> options it might prompt for.
>
> >After Samba was reinstalled, I discovered that the system could no longer
> >find man!
>
> You need to describe this "discovery" in a bit more detail to get any help
> with it. What command did you actually type and what was the response?
>
> >Anyone have any suggestions on what could have happened, and how
> >to get smbsh or smbmount to work properly?
>
>
>
> --
> -------------------------------------------"Never tell me the
odds!"--------
> Ray Olszewski -- Han Solo
> Palo Alto, California, USA   ray@comarre.com
> --------------------------------------------------------------------------
-----
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
