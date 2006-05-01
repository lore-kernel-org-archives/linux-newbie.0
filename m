From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Fedora core 4 and Totem Media Player??
Date: Mon, 1 May 2006 10:30:32 -0400
Message-ID: <20060501143032.GA1208@lnx2.kvinet.com>
References: <20060427200418.GA1963@lnx2.kvinet.com> <44515623.2030108@comarre.com> <20060430184053.GA1058@lnx2.kvinet.com> <44552CD7.60807@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44552CD7.60807@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 04-30, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >	Slackware 10.1 and 10.2 has this; Fedora Core 4 does not.. No
> >mention of anything Xine except in the Totem docs; then only
> >fleetingly..
> 
> I'm wondering now if Fedora 4 actually supports totem-xine, or if it 
> just supports totem-gstreamer. Or if it is a single version that somehow 
> supports both, at least potentially. You might check this; according to 
> FSF, here's how: "To see what backend you are using check the "About 
> box" of totem."

	Much more light; "Movie Player using GStreamer v 0.8.10" So
Xine isn't in the loop at all for this particular version..




> A bit of looking around led me to these additional details ...
> 
> 1. The latest version of totem I can find in Fedora is 
> totem-1.4.0-2.i386.rpm (found at the update site 
> http://download.fedora.redhat.com/pub/fedora/linux/core/updates/5/i386/ 
> ). I wonder if you have updated to that version.

	Why can't I find all this stuff?? I erased the default
version and and installed above with the report of no less than 13
dependency failures.. Should I, maybe, have installed it on top of
what was there?? I wonder if RPM erases all the dependencies when
uninstalling... Slackware is looking good. <grin> No disrespect
intended.. I went back to the original and changed some preferences
with display names like: goom, the default; monoscope; smoothware;
synastasm, and the original fractals disappeared replaced by various
vertical coloured lines, dual horizontal lines, an oscilloscope type
trace filled in with colour, etc... Phew!!




> 2. Debian Sid (Unstable) reports totem-xine at version 1.2.1-3 and 
> totem-gstreamer also at version 1.2.1-3.
> 
> 3. FSF lists 1.4.0 as the latest version; find it (as source) at 
> http://ftp.acc.umu.se/pub/GNOME/sources/totem/1.4/ . Here -- at 
> http://www.gnome.org/projects/totem/ -- FSF does confirm that totem 
> comes in xine and gstreamer flavors, and it seems to think that Fedora 
> (via yum) supports that form of the app.

	There's a bazillion different selections but I still have to
wonder why the "default" install would not, out of the box, play a
normal file.. Don't ask, eh?? <grin>




> 4. I cannot find xinelib at the official Fedora update site, or at a 
> couple of mirrors, which suggests it is no longer part of "official" 
> Fedora for some (no doubt excellent) reason that Red Hat has failed to 
> mention. I did find it at 
> ftp://fr.rpmfind.net/linux/freshrpms/fedora/linux/4/xine-lib/ . The 
> current version there is xine-lib-1.0.1-2.2.fc4.i386.rpm, dated March 
> 2005, a tiny bit newer that what Debian Sid offers (1.0.1-1.3). 
> FreshRPMs is where xine upstream home page says to go, incidentally, to 
> do Fedora installs.

	In order to continue I'm going to have to install FC4 as a
work station so I have some tools to fiddle better.. All the URLS you
listed are very good, now bookmarked.. I may learn something yet..




> 5. For more distro-specific help, you might find is useful to read
> 
> http://stanton-finley.net/fedora_core_4_installation_notes.html#Xine

	I fetched that entire file.. Very detailed and worthwhile..
Thanks.. He has updated it to FC5 I note.. There's a lot more
activity around RH/Fedora it seems..




> 6. Downloading DVD images takes more time than I am willing to spend 
> just to satisfy curoisity. So I'll just speculate that Peter might have 
> an older image of Fedora than you do, and that xine was removed 
> somewhere along the way, rather than being missing from the outset.
> 
> I know that all fo this isn't that much help, but perhaps it will take 
> you in a useful direction.

	You've done more leg work over and above..... You've outlined
more help than I could do for myself in a month.. One of these days I
might get used to the GUI world.. Gnome, actually, seems pretty
nice.. Patrick, at Slackware, has dropped it in favour of KDE with
the latest version.. Too much code out there??




> (BTW, why are you using Fedora 4 and not Fedora 5? Since I don't use 
> Fedora here, there might well be some good reason I am unaware of ... so 
> I'm really just wondering.)

	I didn't know there was a Fedora 5 until yesterday and FC4
was the latest, I gather now a "close out", on eBay, part of my quest
to find a distribution I can recommend to the neighbours to pry them
from M$... I'm not doing too well.. One of my "selling" points to
them was a very powerful O/S costing them less than $10; compared to
M$'s hundred$ or so.. Also, since my "fastest" machine is way behind
state of the art today; I thought I'd better stick with "older" FC4;
(Duron 1.3)..... <grin> Appreciate!! I've tried a FC4 install on
various other machines with 600mHz or 233mHz CPU's and BIOS chips
circa <2000... No soap, even with plenty of SDRAM..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
