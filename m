From: Ray Olszewski <ray@comarre.com>
Subject: Re: playing ogg files with xmms
Date: Thu, 23 Sep 2004 14:14:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040923140109.0205f000@celine>
References: <5.1.0.14.1.20040922144337.01ffe4e0@celine> <Pine.LNX.4.44.0409230140000.16536-100000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0409230140000.16536-100000@legolas.personal.
 engin.umich.edu>
References: <5.1.0.14.1.20040922144337.01ffe4e0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:17 AM 9/23/2004 -0400, Karthik Vishwanath wrote:
>On Wed, 22 Sep 2004, at 5:13pm, Ray Olszewski wrote:
>
> > At 05:08 PM 9/22/2004 -0400, Karthik Vishwanath wrote:
> > >I am unable to play ogg-vorbis encoded files under xmms. mp3s are fine,
> > >however. What must I install to be able to listen to the ogg files?
> > >
> > >System details: Athlon xp1500+ cpu, debian woody linux,
> > >kernel-2.4.18-1-k7.
> >
> > Do you have the ogg-vorbis codecs installed? On Sid, this is
> > libvorbisfile3. On Woody, it might still be libvorbis0. There are a couple
> > of other libraries needed too, but they should install as dependencies of
> > this one  ("apt-cache show" it to see what I mean if I am not being clear
> > here).
> >
> > On Sid, the ogg stuff is listed in the "recommended" section of the xmms
> > "show" info, not in "dependencies". So that's probably what snagged you.
> >
>
>xmms version is 1.2.10; libvorbis0 shows (in dpkg -s libvorbis0) as
>"installed ok".
>
>So, after sending off this email and before receiving responses I moved to
>Sid (as I understand it, it meant replacing stable with unstable in
>sources.list) - I then tried apt-get install libvorbisfile3 and got a slew
>of messages:
>
>=========
>Reading Package Lists... Done
>Building Dependency Tree... Done
>Some packages could not be installed. This may mean that you have
>requested an impossible situation or if you are using the unstable
>distribution that some required packages have not yet been created
>or been moved out of Incoming.
>
>Since you only requested a single operation it is extremely likely that
>the package is simply not installable and a bug report against
>that package should be filed.
>The following information may help to resolve the situation:
>
>Sorry, but the following packages have unmet dependencies:
>   kde: Depends: kdebase-audiolibs but it is not going to be installed or
>                 kdebase3-audiolibs but it is not installable
>E: Sorry, broken packages
>=========
>
>How to proceed?


I'm not quite clear what procedure you are describing. Did you changes 
/etc/apt/sources.list to poijnt to Sid (unstable) inmstead of woody 
(stable), then just try to apt-get the specific package? If so, I assume 
that what you quotred here is but a small fragment of the "slew" or 
messages you got.

Unless you REALLY know what you are doing and proceed VERY carefully, you 
can't just mix Woody and Sid packages. If you move to Sid, the first thing 
to do is an ...

         apt-get dist-upgrade

... which will reinstall pretty much every package you had installed with 
its Sid analog. Don't do that just to fix an xmms problem; do it only if 
you have a more general reason for wanting to use Sid. (The basic tradeoff 
is stability against currency. Upstream improvements, even bugfixes, other 
than security bugfixes, get into Sid months sooner than they get into 
Woody. And Sid uses the newer versions of the various toolchain components 
to, which sometimes matters to development. And ... I could run on and on, 
but it is incidental to your problem.

I'd suggest you switch sources.list back to Woody and do an ...

         apt-get dist-upgrade

... within Woody, just to make sure everything is current  and unsullied by 
Sid. Also, make sure these packages (or their Woody analogs) are installed: 
libogg0, libvorbis0a, libvorbisfile3. Also check and see if Woody still 
uses the separate package xmms-vorbis (Sid no longer does) and if it does, 
install that.

If xmms still does not work with ogg files, try installing vorbis-tools 
(again, the Sid name; Woody might be a bit different) and see if ogg123 
will play the files. If not, it may give you a more informative error 
message than xmms seems to ... or there may be something wrong with the 
actual ogg file.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
