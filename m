From: Heimo Claasen <hammer@revobild.net>
Subject: Re: /cdrom fails to unmount
Date: 24 Jul 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307241851.h6OIotZ5180340@www2.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: "e.a./CC" <jamtat@mailsnare.net>

Sorry for the "convoluted style", James - perhaps it stems from trying
not to get entagled with terms I'm not too sure about.

And yes, this is how I see it too:
> if the user mounts the CDROM, then navigates into the
> /whatever/cdrom directory using MC, then exits MC (F10), the OS will
> continue to "think" the cdrom is being accessed...
> So, while there's no process running that's actively trying to access the
> cdrom (not one that the user can find, anyway), the computer/OS acts as
> though there is such a process tying up the cdrom, and therefore won't
> allow the user to umount/eject the media.

I'm searching for a good "visual" analogy - maybe fishing from a boat
could be, the boat being the "user" floating on the "System" waters, the
rod the "application": Usually, you would anchor somewhere, cast with the
rod, and draw whatever is hooked towards the boat; the boat wouldn't
move.  Not so in Linux waters - if the bait is hooked (most probably on
the branch of a file-tree under the surface, <bg>) the boat is drawn
there and "anchored" _there_.  So you're not allowed to cut that
submarine branch - this would set the boat adrift -, you first have to
lift the anchor and fasten the boat elsewhere. And someone else may be
fishing there too, and having been hooked up at the same invisible
branch. So this "user" has to move his booat too first, before you
may take a dive and tear the dang branch out of the water to recover
your precious bait.

Maybe someone else finds a better formulation - the point is that in
*nixish systems there's no difference between "current" and "working"
directory.  The (part the user may use of the) whole OS "moves to" the
(sub)dir where some task is done. As a "device" - at the surface - is
treated the same way like a (data) file or a directory, the boat/user
must get off from there first before it can be unmounted.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-07-
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
