From: Arturas Moskvinas <arturas.moskvinas@gmail.com>
Subject: Re: RPM Qs
Date: Fri, 30 Sep 2005 22:33:48 +0300
Message-ID: <4a618d080509301233t388276cega33d466dca8fe749@mail.gmail.com>
References: <faf407640509301133t72bae599v93fb711fd97f5aae@mail.gmail.com>
Reply-To: Arturas Moskvinas <arturas.moskvinas@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <faf407640509301133t72bae599v93fb711fd97f5aae@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Michael Medwid <mmedwid@gmail.com>
Cc: linux-newbie@vger.kernel.org

> I have had spotty success in loading RPMs from say here:
>
> http://download.fedora.redhat.com/pub/fedora/linux/core/updates/4/i386
>
> One common error is I click on one of the RPMs via FireFox and it goes
>  through "Preparing System Update" and ends up with  "Package Not
> Found".  About half the time that happens and half the time it
> actually installs.  e.g. I was able to load SNORT without any problem.
>
> Can someone comment on why I am seeing that specific error when I'm
> downloading the RPM directly from fedora.redhat.com?
>
> Also can you point me to how to go about trouble-shooting this kind of
> thing myself?  Where would I find a log of what happened during the
> installation?  Also where are the binary files typically installed?
> usr/bin?  user/sbin?
>
> And lastly when loading an RPM - should the package become launchable
> in the Gnome UI (as happens with most Windows applications)?  Or is
> that typically an extra step?

You should try and use a more user friendly program "yum". Whenever
you want to install a package from fedora official site, you simply
enter "yum install package_name" and it will download needed rpm with
all dependencies and so on.

Places where files are installed depends on what is being installed,
for example exutable files are place in /usr/bin, i think "service"
exutable files are placed into "/usr/sbin" (but i'm not sure about
this). Configuration files are placed into /etc directory. Docs are
placed into /usr/share/ and so on. Forget about madness there is on
WIndows platform, in Unix systems everything is in place where it
belongs.

About shortcuts, most graphical programs put shortcuts into "start"
menu automatically (at least in gnome environment, i do not know about
KDE desktop environment)

Arturas M.
P.S.: recommend reading www.fedorafaq.com, nice informational site...
P.S.S.: if you do not like console app yum, you can try and install
"yumex" a graphical frontend for yum...
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
