From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Save data on DVD+R Drive??]
Date: Sun, 21 Dec 2003 08:12:53 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031221131253.GA472@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


On 12-20, Ray Olszewski wrote:
> At 10:21 AM 12/20/2003 -0500, Hal MacArgle wrote:
> >Greetings: I just acquired a HP 300i DVD+R drive, learning the ropes
> >with it..
> >
> >I've fetched Chris Stoddard's tome using the drive to burn video but
> >I would like to use it for simple data storage, taking advantage of
> >it's 4.7gB, using 'cdrecord' if possible..
> >
> >Can someone point me to where I may find something to get started
> >with??
> 
> I don't have one of these myself yet, but ...
> 
> 1. The man page for mkisofs says the iso9660 image files it makes will work 
> with DVDs.

	As I understand it from a friend, he has removed his CDR
drive and uses the DVD drive for _everything_ and, according to him,
much better and easier.. I've got to sort out what he really means.
<g>



> 2. There is a Debian-Sid package called "dvd+rw-tools" that includes (from 
> the package description) "a format utility for DVD+-RW media, a frontend to 
> mkisofs for burning DVD+-RW/R and some associated tools". I forget what 
> distro you use, but all the big ones are likely to have something similar.

	I have a choice between the recommended Debian +rw tools and
another version.. Another matter of sorting out what works for me
using Slackware 9.0/2.4.20.. Have one recommendation to recompile to
2.4.22 as being "better" but not sure why.. The learning curve has
been fired up yet again, eh?



> 3. There is also a Debian-Sid package dedrtools, described as: "dvdrtools 
> allows you to create both CDs and DVDs using recorders for both formats. It 
> supports writing data, audio mixed, multi-session, CD+, {insert DVD+RW, 
> DVD+R, etc format war here} on most types of CD and DVD recorders".
> 
> 4. There ised to be a Debian package called dvdrecord. But I cannot find a 
> current reference to it, so I infer that one of the above packages 
> (probably dvdrtools) contains that app.

	It seems like the distributions are getting further and
further apart.. I guess that's "normal." Redmond has the distinct
advantage along those lines but I find their "versions" just as
bad..<g>



> 5. As I read the man page for cdrecord (2.0+a19-6), it does not yet support 
> any DVD burning hardware (+ or -, R or RW). Instead, you want the similar 
> "dvdrecord" program that the above package provides.
> 
> I don't think there is very widespread experience with DVD burning on Linux 
> yet -- the drives are still a bit pricey and, I believe, burning takes a 
> very long time -- and the people who do it are, mostly, more interested in 
> video DVDs than in data DVDs. You may have to go to the home sites for 
> those applications to get more in the way of details, and even there it may 
> be sketchy.

	The experience will change as the price goes down.. Tiger has
a NEC RW+ for $95US plus freight as well as a RW+ / RW- combo for
$100US plus freight.. I bought a HP DVD300i, RW+ from eCost for $83US
including S&H. Marked "refurbished" but came in a brand new sealed
carton with two blank discs, 2 program discs (windoze, naturally) a
cable, device screws and an extensive manual in multi languages.. All
looked pristine.. The media discs prices have been reduced already..



> I'm not sure what "Chris Stoddard's tome" refers to, but this short article 
> by Stoddard about burning video DVDs --
> 
>         http://www.linuxgazette.com/issue83/stoddard.html
> 
> -- appears to be using (in the sample script at the end) the apps that I've 
> referred to above (though with different arguments to mkisofs to make 
> watchable DVDs rather than iso9660 ones).

	I have that and it's very informative and well written for
his particular RW+ device, but doesn't mention data storage, just
video.. I now know why some shows on the telly are out of sync audio
to video.. It's a whole new ball game with this old analog man..



> Also, this URL --
> 
>         http://www.ccp14.ac.uk/ccp14admin/linux-server/iso_images_to_dvdram/
> 
> -- talks about using "dd" to make data DVDs in certain cases.
> 
> Finally, this URL --
> 
>         http://linuxathome.com/
> 
> -- makes passing reference to "some use a patched version of cdrecord, 
> others use a program called prodvd", in the context of making video DVDs.

	I have the former already which confuses me more because they
talk about a "DVD-RAM" drive.. Is that different than RW+ or RW-??
The file system on the drive is "udf" but the details still escape me
at present.. Time will tell..



> I know this is not very much help, but I feared you would get none at all 
> here if I did not tell you the little I do know. From all of it, it appears 
> to me that the difference between video and data DVDs lies entirely in the 
> mkisofs step of the process, which is where you specify the filesystem type 
> that will be built in the image file it produces.

	Au contraire - very much help to prod the old grey cells as
it'll be sorted out with a wee bit of time.. As of now it seems most
of the leg work has been done by the RedHat and Mandrake camps with
Debian coming up fast.. Slackware not in the running so far but will
be I'm sure.. The streaming video capture gang seem to be favouring
Slackware 9.0+ now - we'll just have to see, eh?



> If you do get this working, I'd welcome the opportunityo to read about how 
> you did it.

	Will certainly share my leg work as I think this list is the
greatest and still consider myself a "newbie." 

Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
