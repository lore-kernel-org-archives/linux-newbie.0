From: Beolach <beolach@comcast.net>
Subject: Re: multiple X displays and nvidia
Date: Tue, 06 Apr 2004 22:02:05 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40737D3D.7060606@comcast.net>
References: <407279E5.9040805@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <407279E5.9040805@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Langdon-Davies <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I want to rephrase your description, just to make sure I understand your
issue correctly.  On your PII machine you have a nVidia graphics card
with dual-head, connected to two monitors; configured using Xinerama.
One of the monitors was set to display a local X screen, and the other
was set to display an X screen exported from your PIV machine.  After
switching from the xfree86 nv driver to nVidia's propriatary nvidia
driver, you are able to start X on one display, but trying to start on
the second fails.

Assuming I understood your problem correctly, this is probably caused by
some issue's the nvidia driver has with Xinerama.  The nvidia driver
provides what it calls 'TwinView', where multiple monitors are treated
as a single X screen; so as far as the actual X server is concerned, it
is the same as having one monitor.  Where you wanted the two monitors to
use seperate X screens, one local and one remote, you actually don't
want to use TwinView.  My best guess for why you are having this problem
is because the nvidia driver's TwinView sometimes conflicts with some
Xinerama configurations.  I think you should be able to edit your
XF86Config file so that everything works with the nvidia driver, but it
might be easier to just use the nv driver (unless you need OpenGL or
other hardware acceleration).  If you do want to try to thrash out a
working configuration w/ the nvidia drivers, try reading through the
README included with the nvidia driver (available online at:
<ftp://download.nvidia.com/XFree86/Linux-x86/1.0-5336/README>),
especially Appendix R (app-r).  Another place you might find some
answers is at nVidia's Linux Driver Forums; either in some previous post
or by starting a new thread for your particual issue.  The nVidia forum
is at: <http://www.nvnews.net/vbulletin/forumdisplay.php?s=&forumid=14>.

HTH,
Conway S. Smith


Andrew Langdon-Davies wrote:
> PII 266 Mandrake-9.2. Icewm 1.2.13pre3. XDM. XFree86 4.3.
> This machine also has (or rather, HAD) an X display exported from:
> PIV 1.8 G Mandrake-9.2. GDM. XFree86 4.3. (Started from inittab).
> The PII has a dual monitor display using Xinerama. Both video cards used
> the nv driver. Since installing nvidia drivers, only the remote display
> from the PIV starts. Commenting out the line in inittab allows the local
> display to start, after which trying to start the remote display from
> the command line fails. In both cases, the error message in
> XFree86.0.log or XFree86.1.log is:
>
> (EE) NVIDIA(0): Failed to allocate external video decoder object
> (EE) NVIDIA(0):  *** Aborting ***
>
> Fatal server error:
> AddScreen/ScreenInit failed for driver 0
>
> Any ideas anyone?
> TIA
> Andrew
>


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)

iD8DBQFAc305GL3AU+cCPDERAuYFAJ494veCh5wB9k4agyDfeIjWt/TptACeINhR
Ml7djz1YNLA09liOGqyUtnw=
=5VXB
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
