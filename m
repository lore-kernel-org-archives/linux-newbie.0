From: "Anna G. Zapata" <azapata@du.edu>
Subject: RE: GTK
Date: Wed, 21 Apr 2004 11:21:13 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <HBEJLOFMLEPBMAAEFNFDOEPLCGAA.azapata@du.edu>
References: <1082500650.25073.25.camel@DebiAnarchist>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1082500650.25073.25.camel@DebiAnarchist>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Garrett <peterg@fishinternet.com.au>, linux-newbie list <linux-newbie@vger.kernel.org>

Hello Peter,

Thanks for you help.  I did install GNOME, I know that for sure.  My problems with GTK is that I'm trying to install
Nessus.  Keep in mind that I never had a problem running the GUI for nessus, but now that I've moved to RH Enterprise
for the workstation, it can't find GTK (this is a fresh install).  This is the error I get:

# sh nessus-installer.sh
The command 'gtk-config' was not found in your $PATH.
The nessus client will be built without its GUI...

I am not sure what I'm doing wrong.  GTK looks far to complicated for me to even begin to understand.  I tried to
install GTK from their main website, but the make file doesn't exist and it won't install.  I'm very confused.

Thanks,

Anna

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Peter Garrett
Sent: Tuesday, April 20, 2004 4:38 PM
To: linux-newbie list
Subject: Re: GTK


Anna:

On Wed, 2004-04-21 at 06:17, Anna G. Zapata wrote:
> Hello all,
>
> I am currently running RH enterprise work station.  Is GTK installed on there, because if it is, I can't manage to
find
> it.  If not, then how do I go about getting it and installed for use?

> Redhat normally ships with GNOME desktop as default. If you have GNOME you have GTK:
GNOME uses GTK.

If you need to find it and its bits, the easy start way is probably

1. Run "updatedb" from the command line as root
2. type "locate gtk | more"

(those commands without the quotes, of course)

I suspect this will give you plenty of gtk related files to look at...
*grins*. Hit the space bar to see "more"... I don't know if this is what
you need to know, so please don't be insulted if I assumed you wouldn't
know these things...

Hope that helps, at least...

Peter


> Thanks.  Please let me know if I forgot any other pertinent information.
>
> Anna Zapata
> UTS - Network Security
> 303.871.2009
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
