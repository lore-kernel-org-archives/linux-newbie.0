From: Bhikkhu Mettavihari <linuxmet@col7.metta.lk>
Subject: Re: images -> DVD-slideshow ?
Date: Sun, 4 Jun 2006 07:56:21 +0600
Message-ID: <20060604075621.A26508@col7.metta.lk>
References: <200606020608.k5268MoK004233@skyinet.net> <44804628.5070106@gelm.net> <20060602154419.GA1686@lnx2.kvinet.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20060602154419.GA1686@lnx2.kvinet.com>; from haltec@kvinet.com on Fri, Jun 02, 2006 at 11:44:19AM -0400
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hal MacArgle <haltec@kvinet.com>, linux-newbie@vger.kernel.org

* Hal MacArgle <haltec@kvinet.com> [2006-06-04 07:40]:
> On 06-02, chuck gelm wrote:
> > Howdy:
> > 
> > What is your suggestion for an application that will convert
> > many (still) images into a DVD slideshow, perhaps with
> > background music?  I've been trying to obtain image2mpeg
> > with varying sucess.  I was able to get a version downloaded
> > and compiled.  I created an image (stream.ppm), but there
> > seems to be no mention of how to get the output file onto a DVD.
> > 
> > If the output DVD <image> is small, can it be placed on
> > a (650-700MB) CDROM and played on a standard DVD player?
> > If yes, how?  'growisofs' balks at writing to my CDROM media.
> > 
> > I am using Slackware v10.2 and understand *.tar.gz.
> > I am poorer at installing *.rpm, but will try if that is the only
> > offering of another application.  *.deb, I don't know.
> > 
> > Regards, Chuck
> 
> 	I really wish I could make a magic suggestion, as you have
> done for me in the past, but my brain is in meltdown mode with this
> stuff..
> 
> 	I haven't tried slide shows yet still stuck on editing
> streaming video with two, partially successful, routes: Linux Video
> Editor; http://lvempeg.sourceforge.net that compiles and installs
> under Slack10.2, but I've not, yet, been able to figure out how to
> actually edit videos, only preview.. It wont work with .avi files,
> just .vob's that I've converted with videotrans' -M flag.. (You
> discovered most that led up to this.) It, of course, requires a
> bazillion libs that, in turn, require more libs.. <grin> LVE has a
> DVDAuthoring-HOWTO that's interesting referring to many buzz words
> we're now immersed in.. Of course videotrans can convert to non muxed
> files; .mp2 and m2v..
> 
> Another much more powerful scheme I've installed is cinelerra:
> www.cinelerra.org
> the heroinewarrior.com version that only installs into FedoraCore 4,
> but includes all the deps in the 30mB rpm package.. I tried cinelerra
> tarball but never got it working under Slack10.2.. It's world class
> and you can do everything with it including washing dishes I think..
> 
> It requires a .vob file too and I've been able to do some simple
> editing but there are still many problems.. Work in progress with
> both of them of course.. Warp hours per usual.. The blurb says that
> cinelerra is "professional."
> 
> Cinelerra recommends Kino for blokes like me but I got nowhere with
> it, especially since it's sort of designed for digital camera to
> editor and back... The various codecs can drive one to drink too..
> <g>

Lovely, lively,
It was indeed hard to get started.
There is a list on cinelerra where you could get much info.

There is a link to a slackware site on www.cinelerra.org
if you do "wget -r -np to that site" you should get most of the 
dependencies. If you have any problems please email me privately on 
mettavihari@gmail.com or ask on the cinelerra mailing list.

I have manged to get cinelerra up working (without the bottle);-)
And once you get on it then it is like opium.
You cannot get off it again.;-)
It really is pro.

I will have a look at lvempeg.sf.net
It sounds interesting and challenging

There is also a interface for making dvd's but i have not mastered yet.
May be in about 1-2 weeks I should be able to help.

Mettavihari

-- 
A saying of the Buddha from: http://metta.lk/ 
Streaming Dhamma Video from: http://dharmavahini.tv/ 
The craving of the heedless man grows like a Maluva (all entangling) creeper. He runs hither and thither (from one life to another) like a monkey in the forest looking for fruit. 
Random Dhammapada Verse 334  
 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
