From: Beolach <beolach@comcast.net>
Subject: Re: Save data on DVD+R Drive??
Date: Sat, 20 Dec 2003 15:33:22 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FE4CE32.2060503@comcast.net>
References: <5.1.0.14.1.20031220105515.01f9b3c0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031220105515.01f9b3c0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> At 10:21 AM 12/20/2003 -0500, Hal MacArgle wrote:
> 
>> Greetings: I just acquired a HP 300i DVD+R drive, learning the ropes
>> with it..
>>
>> I've fetched Chris Stoddard's tome using the drive to burn video but
>> I would like to use it for simple data storage, taking advantage of
>> it's 4.7gB, using 'cdrecord' if possible..
>>
>> Can someone point me to where I may find something to get started
>> with??
> 
> 
> I don't have one of these myself yet, but ...
> 
> 1. The man page for mkisofs says the iso9660 image files it makes will 
> work with DVDs.
> 
> 2. There is a Debian-Sid package called "dvd+rw-tools" that includes 
> (from the package description) "a format utility for DVD+-RW media, a 
> frontend to mkisofs for burning DVD+-RW/R and some associated tools". I 
> forget what distro you use, but all the big ones are likely to have 
> something similar.
> 
As Hal uses Slackware, I thought I'd just point out that Slackware 
includes this package as well.  However, it is included in 9.1 & 
current, but not in 9.0 (which Hal's sig indicates he has).  You can 
download the Slackware dvd+rw-tools package from 
<ftp://ftp.slackware.com/pub/slackware/slackware-9.1/slackware/ap/dvd+rw-tools-5.12.4.7.4-i486-1.tgz>.

> 3. There is also a Debian-Sid package dedrtools, described as: 
> "dvdrtools allows you to create both CDs and DVDs using recorders for 
> both formats. It supports writing data, audio mixed, multi-session, CD+, 
> {insert DVD+RW, DVD+R, etc format war here} on most types of CD and DVD 
> recorders".
> 
I don't see this in a Slackware package.  But my (completely uneducated) 
guess is dvd+rw-tools has everything you need for most tasks.

> 4. There ised to be a Debian package called dvdrecord. But I cannot find 
> a current reference to it, so I infer that one of the above packages 
> (probably dvdrtools) contains that app.
> 
> 5. As I read the man page for cdrecord (2.0+a19-6), it does not yet 
> support any DVD burning hardware (+ or -, R or RW). Instead, you want 
> the similar "dvdrecord" program that the above package provides.
> 
It doesn't look like 'dvdrecord' is included in the Slackware package. 
The 4 programs it has are 'dvd+rw-mediainfo', 'dvd+rw-booktype', 
'growisofs', and 'dvd+rw-format'.

[snip]
> 
> If you do get this working, I'd welcome the opportunityo to read about 
> how you did it.
> 
I second that.  It would be nice to know at least what programs you end 
up using.


HTH,
Conway S. Smith

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
