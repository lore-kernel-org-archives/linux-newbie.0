From: Ray Olszewski <ray@comarre.com>
Subject: Re: fixing sound
Date: Sun, 25 Apr 2004 14:36:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040425142611.02d29f00@celine>
References: <5.1.0.14.1.20040425082135.02d33358@celine> <Pine.LNX.4.44.0404251658070.11721-100000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0404251658070.11721-100000@legolas.personal.
 engin.umich.edu>
References: <5.1.0.14.1.20040425082135.02d33358@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:20 PM 4/25/2004 -0400, Karthik Vishwanath wrote:
[...]
> > 8. Throughout my response, I've interpreted "unable to hear audio" as
> > meaning that the system fails silently ... that is, the "cat" process runs
> > to its conclusion without objection, but no sound actually comes out. 
> (BTW,
> > this isn't a very good way to play sound files, but it should make noise
> > nonetheless.) If this interpretation is wrong, please correct it with
> > appropriate details.
> >
>
>I am sorry, I should've specified -- its not as if there is silence, I
>hear some weird buzzing noises on the cat command.

Oh, that's VERY different. You are getting sound, just not the sound you 
want to get. The "cat" approach is not a good way to try to play music 
files, not even .wav files ... the exact output you'll get is a bit 
unpredictable ... but "weird buzzing noises" are a definite possibility, 
even from a working system.

See the next set of comments below.

>Other things are that trying to play mp3 files via xmms gives a dialog box
>asking me to check:
>That the soundcard is configured alright
>The correct output plugin is selected
>No other program is accessing the soundcard

What userid are you using to run xmms? It needs either to be root or some 
userid that is a member of group "audio", based on this part of your 
response (deleted above):

># ls -lF /dev/dsp
>crw-rw----    1 root     audio     14,   3 Mar 14  2002 /dev/dsp

  If it isn't, you'll get the message from xmms that you report (it's a bit 
misleading, but it really is the one you get ... I had this exact problem 
on a new system last week), since xmms is running under a userid that does 
not have permission to write to /dev/dsp . Since (I think) your system has 
you as the only real user, you can select the easy fix of

         chmod 666 /dev/dsp

to avoid this problem. Or try running (say) mpg123 as root. Or add your 
preferred userid to the audio group (edit /etc/group, then do a brand new 
login using the userid) and try xmms again.

>I started with the first suggestion -- the output plugin selected is the
>OSS driver, and I don't think there are any other applications trying to
>access the soundcard.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
