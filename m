From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: Re: a sound problem solution?
Date: Tue, 11 Jan 2005 12:39:20 +0000
Message-ID: <41E3C8F8.80607@comcast.net>
References: <Pine.LNX.4.58.0501102258510.7477@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0501102258510.7477@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

James Miller wrote:

>...So, all would be fine if I could
>just keep my computer from suddenly ceasing to output sound for unknown
>reasons. I'm not really interested in troubleshooting the sound server so
>much as I am in a way of possibly resetting it short of rebooting the
>machine. Is there a way to do this, i.e., to shutdown, then restart the
>sound server to see if I can get the sound back without a reboot?
>
>A few details, in case it's helpful. This is Ubuntu, a Debian variant.
>Sound hardware uses the snd_via82xx module--auto-detected and set up by
>the OS on installation. Things I've noted that cause sound output to
>cease: plugging/unplugging the speakers while the computer is running;
>plugging a usb device into a hub mounted on top of the computer case; and
>today I can't say that anything in particular caused this. The symptom is
>an end to all sounds: no music will play, nor will system sounds. Only the
>PC speaker remains operational. Sound comes back after a reboot. I'm
>hoping there's a way to stop, then restart the sound server and that this
>might resolve the problem when it occurs. I think this distro must use the
>ALSA sound server, if I've understood correctly these technical details.
>
>Any advice? Go back to using a stereo-type device for sound and just use
>my computer for computing, perhaps?
>

On my distro (Gentoo), when I wish to restart a daemon, I type:

/etc/init.d/<daemonname> restart

or

/etc/init.d/<daemonname> stop
/etc/init.d/<daemonname> start

NOTICE:  Do not include the < or the> on either side of the name.

I've not used any Debian varients, so I hope this helps.

Jeremy Abbott
jkbullfrog@comcast.net
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
