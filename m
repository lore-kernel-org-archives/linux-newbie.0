From: James Miller <jamtat@mailsnare.net>
Subject: Re: font display problems after chmod
Date: Wed, 8 Sep 2004 23:09:38 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0409082215460.1371@debian-emach>
References: <5.1.0.14.1.20040908141216.01f3fa48@celine>
 <5.1.0.14.1.20040908141216.01f3fa48@celine> <5.1.0.14.1.20040908182124.020095a0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040908182124.020095a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 8 Sep 2004, Ray Olszewski wrote:

> But recall that I asked a lot about the gsfonts package. Did you confirm
> that it is installed and properly configured? You can check its files in
> the Debian Package info at www.debian.org . Basically, it includes a bunch
> of files in /usr/share/fonts/type1/gsfonts, plus a hints file in
> /etc/defoma/hints/gsfonts.hintsYou might make sure all are present and have
> reasonable permissions set.

I did check permissions for all subdirs and some font files under
/usr/share/fonts/type1/ and they were ok.  I'll look into gsfonts a bit
more - had trouble understanding what you said about that, so I did not
answer.

> Can you recall what settings (uid, gid, mode) these fonts had before you
> "corrected" them? And what fonts they were -- the ones in
> /usr/X11R6/lib/X11/fonts, the ones in /usr/share/fonts, or both? If they
> were installed by apt-get, how did they get misset in the first place (and
> the difference between what you saw and what I see here tells me they did
> get misset somehow)?

I did not fiddle with anything under /usr/X11R6/lib/X11/fonts, only with
those under /usr/share/fonts.  As I recall, mode was set to 444 on some,
and ownership was my user rather than root.  These fonts were not
installed by apt-get but rather, as I mentioned earlier, were transferred
from another (Windows) system or downloaded from the 'net.  Somehow, I
determined this is where they should go.  That they should have weird
permissions (a newbie having placed them there) is thus not out of order.

> Is it possible that in making the font and directory changes, you
> accidentally changed something else, probably something that needs to be
> 755 to 644?

I don't think so.  As I mentioned, I had initially erroneously changed
some subdirs to mode 644, but I corrected that (no fonts were working
after I did that, so it was a necessary fix).  I've rechecked mode and
permissions 2 or 3 times now, and all seems to be in order.  But I suppose
I should check again, since it sounds like some really simple basic thing
is wrong and I'm somehow overlooking it.

> Do other X apps that use fonts seem to be able to access them? I don't know
> what you have isntalled, so I can't be very specific here ... I have in
> mind apps like xmms or xine, that make incidental use of fonts in their
> display and configuration windows. (For example, if you have xmms
> installed, can you change the font used in the playlist display?)

I don't have xmms installed.  I tried creating a new OpenOffice document
and using random fonts (6 or so).  They all appeared correctly, in accord
with the font face selected.  Does that help?

> I should have asked this before: Is apt-get dist-upgrade exiting normally
> or is it reporting problems? I've assumed a normal exit, but I should learn
> not to make excessive assumptions when I can easily ask.

libdiscover1 gets held back.  I thought that got straightened out in a
previous apt-get dist-upgrade, but just now trying it reveals it's still
being held back.  Other than this, it seems to complete successfully.

> Also, apt-get's installer usually asks if you want to update or retain a
> lot of site-specific stuff. Are you possibly keeping some old config file
> that is introducing a problem? (Since I've no real idea what you have on
> your system, I can't be very specific here.)

Not that I can think of.  But I should probably ponder that a bit more.

> I don't have it here to check, but in a quick scan of the package contents
> in mozilla-browser, the one that catches my eye is
>
>          /usr/share/doc/mozilla-browser/enabling_truetype.html
>
> I don't know what actual fonts you are using, but it might benefit you to
> see what that instruction set says.

Ok.  I'll look.  I should mention that, though I may have confused things
a bit by speaking alot about Mozilla, it now works to some degree - at
least in the sense that fonts don't cause it to segfault.  It does,
occassionally disappear on normal use (segfault, I guess) and will
predictably fail when I try to view my Freesco router's admin page on the
local network as soon as I move the cursor over the "login" link.  But as
far as fonts not rendering, the apps that give me the most trouble since I
"fixed" font modes are xpdf/gv and Opera.  Opera is at least useable -
though very difficult to read pages in the weird font faces it uses.  The
pdf viewers are not cooperative, as I mentioned earlier.  So, Mozilla
figures in as having possibly precipitated the problem by segfaulting on a
fonts permission issue.  Resetting mode made Mozilla work somewhat more
normally, but fouled up the other apps.  This probably sounds as
hopelessly confusing to you as it does to me as I write it.

> Was this a side effect of a kernel upgrade? Or did an xfree86-xserver
> upgrade cause the XF86Config-4 file to be rewritten (had you made changes
> by hand to it that got lost)?

XF86Config-4 remained - no changes to it were lost.  I just began to get
screen jumbling in some console programs I use regularly - namely mc and
Pine (oops, another unofficial package I have installed).

> Moreover ... if you are having problems with X, is it possible that xfs
> (the X font server) is also having problems? Is the process even running?

Top tells me xfs is running, yes.

> How had you been doing this before the dist-upgrade? If you did it by way
> of entries in /etc/modules (the simplest way), and the module names did not
> change, I'm very surprised that they are not loading now.

I told Debian what NIC I had and that I wanted dhcp to run on it when I
did the installation and it apparently set it up in some config file.  It
brought up the network fine on bootup for some time.  I seem to have lost
that file when I got a kernel upgrade with an apt-get dist-upgrade I ran.
I posted about that to the list a couple of months ago, but the results
were inconclusive.

Thanks for trying to help.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
