From: Ray Olszewski <ray@comarre.com>
Subject: Re: Save data on DVD+R Drive??
Date: Sat, 20 Dec 2003 11:30:10 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031220105515.01f9b3c0@celine>
References: <20031220152122.GA567@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031220152122.GA567@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:21 AM 12/20/2003 -0500, Hal MacArgle wrote:
>Greetings: I just acquired a HP 300i DVD+R drive, learning the ropes
>with it..
>
>I've fetched Chris Stoddard's tome using the drive to burn video but
>I would like to use it for simple data storage, taking advantage of
>it's 4.7gB, using 'cdrecord' if possible..
>
>Can someone point me to where I may find something to get started
>with??

I don't have one of these myself yet, but ...

1. The man page for mkisofs says the iso9660 image files it makes will work 
with DVDs.

2. There is a Debian-Sid package called "dvd+rw-tools" that includes (from 
the package description) "a format utility for DVD+-RW media, a frontend to 
mkisofs for burning DVD+-RW/R and some associated tools". I forget what 
distro you use, but all the big ones are likely to have something similar.

3. There is also a Debian-Sid package dedrtools, described as: "dvdrtools 
allows you to create both CDs and DVDs using recorders for both formats. It 
supports writing data, audio mixed, multi-session, CD+, {insert DVD+RW, 
DVD+R, etc format war here} on most types of CD and DVD recorders".

4. There ised to be a Debian package called dvdrecord. But I cannot find a 
current reference to it, so I infer that one of the above packages 
(probably dvdrtools) contains that app.

5. As I read the man page for cdrecord (2.0+a19-6), it does not yet support 
any DVD burning hardware (+ or -, R or RW). Instead, you want the similar 
"dvdrecord" program that the above package provides.

I don't think there is very widespread experience with DVD burning on Linux 
yet -- the drives are still a bit pricey and, I believe, burning takes a 
very long time -- and the people who do it are, mostly, more interested in 
video DVDs than in data DVDs. You may have to go to the home sites for 
those applications to get more in the way of details, and even there it may 
be sketchy.

I'm not sure what "Chris Stoddard's tome" refers to, but this short article 
by Stoddard about burning video DVDs --

         http://www.linuxgazette.com/issue83/stoddard.html

-- appears to be using (in the sample script at the end) the apps that I've 
referred to above (though with different arguments to mkisofs to make 
watchable DVDs rather than iso9660 ones).

Also, this URL --

         http://www.ccp14.ac.uk/ccp14admin/linux-server/iso_images_to_dvdram/

-- talks about using "dd" to make data DVDs in certain cases.

Finally, this URL --

         http://linuxathome.com/

-- makes passing reference to "some use a patched version of cdrecord, 
others use a program called prodvd", in the context of making video DVDs.

I know this is not very much help, but I feared you would get none at all 
here if I did not tell you the little I do know. From all of it, it appears 
to me that the difference between video and data DVDs lies entirely in the 
mkisofs step of the process, which is where you specify the filesystem type 
that will be built in the image file it produces.

If you do get this working, I'd welcome the opportunityo to read about how 
you did it.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
