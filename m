From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Trying to get GUI'ed
Date: 22 Oct 2002 11:28:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035282533.1744.23.camel@zebra.vil.ite.mee.com>
References: <200210212223.g9LMNrq15189@ev6.be.wanadoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210212223.g9LMNrq15189@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

Linux is slowly getting better and easier for people who don't want to
spend hours fiddling with it, but it isn't quite there yet.

Ok, here's what I use:

I currently have Red Hat 7.3 installed on my workstation. I have been
using Red Hat precisely because the installation is pretty friendly - I
can chose to take one of the default installs, or I can customise most
of the package choices.

At initial install, Red Hat doesn't give me 37 choices of which window
manager to use. If I'm installing Red Hat and using their desktop (which
is Gnome by default) then I'll get Sawfish as the window manager. I
_can_ change that during the install if I really want to, but I don't
actually _need_ to think about it to make it work. It works fairly well
for most things, and although I am thinking of trying something else,
it's partly because it's my _job_ to try different versions of things so
that I can advise the people at my company what they should use.

If you want an easy install that includes a (relatively) nice GUI, then
Red Hat may well be what you want.

By the way, I have found the Ximian Destop (which you install after X,
window manger and Gnome/KDE) to be really quite reliable and useful. It
seems to fix a lot of problems which I was having with Red Hat's default
setup.

If you don't want to do that, then you are _choosing_ to do it the
manual way, and that implies that you either have to install each option
and try it, or read a load of documentation.

The reason I ended up with the window manager I have is that previous
ones I've tried (like Afterstep, Enlightenment, gdm) all had something
in them that I didn't like, couldn't do or didn't work with something
else I was using. I can't tell you which ones are right for you
precisely because I am not you. If you want to use Gnome, Sawfish is a
good choice because it's _compatible_ with gnome right out of the box.
Afterstep, for example, has some lovely graphical things it can do, but
didn't work well with the menus I wanted to use - so I stopped using it.
This was some time ago, though, so it may have changed by now. I promise
that the best way to decide what you want is to try some.

If you don't have time to read lots, then chose a distribution that
gives you useful defaults (I liked Red Hat until version 8 which is all
strange and lacks most of what I like). If you don't have time to either
read lots or get a different distribution or try different options, go
and buy a Mac which gives you only a very few options and needs almost
no setting up, but is proprietary and expensive.


Paul.


On Tue, 2002-10-22 at 01:00, Heimo Claasen wrote:
> It would be interesting to go into more details with this, especially
> in _comparing_ different window managers:
> 
> > Incidentally, you don't _need_ a lot of the software you can get this
> > way - just directly configuring X will give you access to most of the
> > stuff. But you certainly need _some_ kind of window manager for it to be
> > useful.
> 
> Which is precisely what I'm looking for.
> 
> Actual example: that most recent Debian-3 install gave me a choice of
> three of them (gdm, kdm, xdm), and sure I was (newbie, thanks) at a loss
> for what to do. _No_ usefull description/help what the heck the
> difference would be.
> 
> But there are differences, and crucial ones: I'm struggling since ages
> to make a specific SCSI device run which quite obviously has some
> collision course with "some" of the X (windows?) management components.
> For instance, it would just not run under any of various Mandrake/KDE
> installs; it did run (shortly) with a tweaked Debian-2.2 and and what I
> was told was "window maker" (for some unrelated reason, that install had
> to be changed, and the SCSI device never ran again there).  Finally, a
> new Debian-3.0 install first _did_ have it run (there I was sure it was
> xdm which was used, but on the "frame buffer" kernel _without_ the
> XF86-..."4" install !) For again some unrelated reason, there had to
> be a re-install of this very Debian; I used not the "frame buffer" but
> the "compact" kernel install that time (more out of a feeling: there
> is no intelligible info joined to these procedures), had later enormous
> difficulties to get X working at all, and it never accepted the full
> range of the high-resoulution screen, _despite_ it's use of the
> XF86-.."4" version.  (Didn't manage to have it using the highest
> resolution; which is the one exactly needed for photo jobs _as_well_as
> the SCSI-connected film scanner.) But I chose "gdm" that time, and lo
> and behold, the dang SCSI device worked.  No real use though, as the
> full resolution screen is not available. Thank you.
> 
> I haven't _got_ fifteen month of idle time to go through twentyseven
> docs and sources in search of that ephemeral X screen handling detail
> (and there I'm sure that its something like this, because te device
> as such _does_ work) which collides with the device's output.
> 
> Thus, instead of sending people from one wall to the other, like in
> best kafkaesques traditions, it would be nice to have some clearly
> worded information of what the differences _are_ between those window
> managers.
> At looking at each one of their own specific doc-novels separately I
> would never ever get the _functional_ information I need, namely to find
> the comparably "simplest" one with the least potential of skrewing up
> the relation between the pixel output from that dang device and the wm's
> (not-too- broad-integration-of-most-sophisticated) screen handling
> elements.
> (By now I'm quite sure that it's one of those thousand files-bits of the
> Gtk environment which might be the culprit but to find that out would
> mean another fifteen months more of work and missed pay for not done
> real work.)
> 
> // Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-10-21
> The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
