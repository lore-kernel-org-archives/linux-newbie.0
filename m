From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: playing ogg files with xmms
Date: Thu, 23 Sep 2004 02:17:14 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0409230140000.16536-100000@legolas.personal.engin.umich.edu>
References: <5.1.0.14.1.20040922144337.01ffe4e0@celine>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040922144337.01ffe4e0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 22 Sep 2004, at 5:13pm, Ray Olszewski wrote:

> At 05:08 PM 9/22/2004 -0400, Karthik Vishwanath wrote:
> >I am unable to play ogg-vorbis encoded files under xmms. mp3s are fine,
> >however. What must I install to be able to listen to the ogg files?
> >
> >System details: Athlon xp1500+ cpu, debian woody linux,
> >kernel-2.4.18-1-k7.
> 
> Do you have the ogg-vorbis codecs installed? On Sid, this is 
> libvorbisfile3. On Woody, it might still be libvorbis0. There are a couple 
> of other libraries needed too, but they should install as dependencies of 
> this one  ("apt-cache show" it to see what I mean if I am not being clear 
> here).
> 
> On Sid, the ogg stuff is listed in the "recommended" section of the xmms 
> "show" info, not in "dependencies". So that's probably what snagged you.
> 

xmms version is 1.2.10; libvorbis0 shows (in dpkg -s libvorbis0) as 
"installed ok". 

So, after sending off this email and before receiving responses I moved to
Sid (as I understand it, it meant replacing stable with unstable in
sources.list) - I then tried apt-get install libvorbisfile3 and got a slew
of messages:

=========
Reading Package Lists... Done
Building Dependency Tree... Done
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.

Since you only requested a single operation it is extremely likely that
the package is simply not installable and a bug report against
that package should be filed.
The following information may help to resolve the situation:

Sorry, but the following packages have unmet dependencies:
  kde: Depends: kdebase-audiolibs but it is not going to be installed or
                kdebase3-audiolibs but it is not installable
E: Sorry, broken packages
=========

How to proceed? 



Thanks! 

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
