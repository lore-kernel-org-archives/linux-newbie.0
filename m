From: Peter <heisspf@skyinet.net>
Subject: Re: XMMS Distorted MP3 Sound
Date: Fri, 28 Jan 2005 16:35:17 +0800
Message-ID: <20050128163517.2bff09bf@skyinet.net>
References: <20050127075714.796A23B710@heisspf>
	<5.1.0.14.1.20050127094430.02ac3bc0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050127094430.02ac3bc0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org



> At 03:57 PM 1/27/2005 +0800, Peter H. wrote:
> 
> >Hi,
> >
> >In slackware10 for some time trying to play mp3 files I get a very
> >distorted sound with xmms-1.2.10. Whereas in Fedora2 mp3 files do not play
> >at all with xmms-1.2.10 in fact they don't enter the play list. In both the
> >plugin for mpeg is enabled. Playing from MusicCDs is no problem.
> >
> >As far as I can remember xmms used to play mp3 files or am I deceived, and
> >I cannot tell when it exactly started
> >
> >Anyhow what could be the reason? Xine, gxine, totem, mpg321 and snack all 
> >play mp3 files distortion free.

On Thu, 27 Jan 2005 10:24:15 -0800
Ray Olszewski <ray@comarre.com> wrote:
> 
> For the distro that doesn't play them at all, or even show them in the 
> playlist (if they don't "enter the playlist", how do you even *attempt* 
> actually to play them?), my first guess would be that you are mistaken in 
> assuming that the mp3 plugin is properly installed. Or possibly the 
> filenames use an extension that xmms does not recognise as MP3 (see if you 
> have "Detect files by content (instead of file extension)" enabled in 
> Preferences ->Audio I/O Plugins ->MPEG ... ->Configure).

In Fedora-2 where mp3 files do not load into xmms "Configure" is disabled
when one clicks on MPEG Layer......

> For the distro that does play them, I'd suspect a mismatch between xmms and 
> the sound driver; double check what "output" driver xmms is using (in 
> Preferences-> Audio I/O Plugins) and if it is compatible with your kernel's 
> sound drivers (if you are using ALSA, you might need to add some of the 
> OSS-compatibility modules). You might see if other file types (ogg, even 
> wav) play properly from the hard disk (not from a CD; that normally uses a 
> direct connection between the CD drive and the sound card and is irrelevent 
> to this diagnosis because it bypasses the kernel's sound stuff). Also 
> confirm that the other playback apps, like mpg321 and xine, work on that 
> distro, if you haven't already done this (I can't be sure from what you 
> wrote if you did those tests with both distros or just Fedora).
> 

I am only using Slackware. Fedora is just there for nostalgic reason
and checking like in this case. In Slackware all other playback apps as
mentioned above as well as kaboodle and juk of kde play .mp3 files properly.
Xmms plays.wav files from the hd very clear. I did not check
other playbacks in Fedora.

> along with a more 
> descriptive characterization of the Slackware version of the symptom.
> 
The distortion in xmms playing .mp3 files is so awful that one quickly
cuts the sound off. The output driver in xmms is ALSA.

I checked now xmms again and found the problem: the equalizer was set on
putting it off makes mp3 files play properly.

Thanks & regrads
-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
