From: Heimo Claasen <hammer@revobild.net>
Subject: Re: Trying to get GUI'ed
Date: 22 Oct 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210212223.g9LMNrq15189@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

It would be interesting to go into more details with this, especially
in _comparing_ different window managers:

> Incidentally, you don't _need_ a lot of the software you can get this
> way - just directly configuring X will give you access to most of the
> stuff. But you certainly need _some_ kind of window manager for it to be
> useful.

Which is precisely what I'm looking for.

Actual example: that most recent Debian-3 install gave me a choice of
three of them (gdm, kdm, xdm), and sure I was (newbie, thanks) at a loss
for what to do. _No_ usefull description/help what the heck the
difference would be.

But there are differences, and crucial ones: I'm struggling since ages
to make a specific SCSI device run which quite obviously has some
collision course with "some" of the X (windows?) management components.
For instance, it would just not run under any of various Mandrake/KDE
installs; it did run (shortly) with a tweaked Debian-2.2 and and what I
was told was "window maker" (for some unrelated reason, that install had
to be changed, and the SCSI device never ran again there).  Finally, a
new Debian-3.0 install first _did_ have it run (there I was sure it was
xdm which was used, but on the "frame buffer" kernel _without_ the
XF86-..."4" install !) For again some unrelated reason, there had to
be a re-install of this very Debian; I used not the "frame buffer" but
the "compact" kernel install that time (more out of a feeling: there
is no intelligible info joined to these procedures), had later enormous
difficulties to get X working at all, and it never accepted the full
range of the high-resoulution screen, _despite_ it's use of the
XF86-.."4" version.  (Didn't manage to have it using the highest
resolution; which is the one exactly needed for photo jobs _as_well_as
the SCSI-connected film scanner.) But I chose "gdm" that time, and lo
and behold, the dang SCSI device worked.  No real use though, as the
full resolution screen is not available. Thank you.

I haven't _got_ fifteen month of idle time to go through twentyseven
docs and sources in search of that ephemeral X screen handling detail
(and there I'm sure that its something like this, because te device
as such _does_ work) which collides with the device's output.

Thus, instead of sending people from one wall to the other, like in
best kafkaesques traditions, it would be nice to have some clearly
worded information of what the differences _are_ between those window
managers.
At looking at each one of their own specific doc-novels separately I
would never ever get the _functional_ information I need, namely to find
the comparably "simplest" one with the least potential of skrewing up
the relation between the pixel output from that dang device and the wm's
(not-too- broad-integration-of-most-sophisticated) screen handling
elements.
(By now I'm quite sure that it's one of those thousand files-bits of the
Gtk environment which might be the culprit but to find that out would
mean another fifteen months more of work and missed pay for not done
real work.)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-10-21
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
