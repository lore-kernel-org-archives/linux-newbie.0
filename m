From: Ray Olszewski <ray@comarre.com>
Subject: Re: Fedora core 4 and Totem Media Player??
Date: Sun, 30 Apr 2006 14:32:07 -0700
Message-ID: <44552CD7.60807@comarre.com>
References: <20060427200418.GA1963@lnx2.kvinet.com> <44515623.2030108@comarre.com> <20060430184053.GA1058@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060430184053.GA1058@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
[...]
>>The guts of xine is a library. On Debian, the package is:
>>
>>	libxine1 - the xine video/media player library, binary files
>>
>>The non-library package, called xine-ui, is just xine's own User 
>>Interface, which totem substitutes for (there's also a gxine frontend 
>>package). So look for something in Fedora with a similar name. The 
>>underlying library should be something like:
>>
>>	/usr/lib/libxine.so.1.12.0
>>
>>and there should also be an associated directory /usr/lib/xine/ with a 
>>bunch of plugins. Probably some other stuff too.
> 
> 
> 	Slackware 10.1 and 10.2 has this; Fedora Core 4 does not.. No
> mention of anything Xine except in the Totem docs; then only
> fleetingly..

I'm wondering now if Fedora 4 actually supports totem-xine, or if it 
just supports totem-gstreamer. Or if it is a single version that somehow 
supports both, at least potentially. You might check this; according to 
FSF, here's how: "To see what backend you are using check the "About 
box" of totem."

A bit of looking around led me to these additional details ...

1. The latest version of totem I can find in Fedora is 
totem-1.4.0-2.i386.rpm (found at the update site 
http://download.fedora.redhat.com/pub/fedora/linux/core/updates/5/i386/ 
). I wonder if you have updated to that version.

2. Debian Sid (Unstable) reports totem-xine at version 1.2.1-3 and 
totem-gstreamer also at version 1.2.1-3.

3. FSF lists 1.4.0 as the latest version; find it (as source) at 
http://ftp.acc.umu.se/pub/GNOME/sources/totem/1.4/ . Here -- at 
http://www.gnome.org/projects/totem/ -- FSF does confirm that totem 
comes in xine and gstreamer flavors, and it seems to think that Fedora 
(via yum) supports that form of the app.

4. I cannot find xinelib at the official Fedora update site, or at a 
couple of mirrors, which suggests it is no longer part of "official" 
Fedora for some (no doubt excellent) reason that Red Hat has failed to 
mention. I did find it at 
ftp://fr.rpmfind.net/linux/freshrpms/fedora/linux/4/xine-lib/ . The 
current version there is xine-lib-1.0.1-2.2.fc4.i386.rpm, dated March 
2005, a tiny bit newer that what Debian Sid offers (1.0.1-1.3). 
FreshRPMs is where xine upstream home page says to go, incidentally, to 
do Fedora installs.

5. For more distro-specific help, you might find is useful to read

http://stanton-finley.net/fedora_core_4_installation_notes.html#Xine

6. Downloading DVD images takes more time than I am willing to spend 
just to satisfy curoisity. So I'll just speculate that Peter might have 
an older image of Fedora than you do, and that xine was removed 
somewhere along the way, rather than being missing from the outset.

I know that all fo this isn't that much help, but perhaps it will take 
you in a useful direction.

(BTW, why are you using Fedora 4 and not Fedora 5? Since I don't use 
Fedora here, there might well be some good reason I am unaware of ... so 
I'm really just wondering.)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
