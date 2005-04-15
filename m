From: Peter <peterg@fishinternet.com.au>
Subject: Re: remote admin
Date: Sat, 16 Apr 2005 00:05:33 +1000
Message-ID: <1113573934.10338.7.camel@localhost.localdomain>
References: <200504142239.24316.wheds8@ms66.hinet.net>
	 <200504141040.02011.eric@cisu.net>
	 <20050415074715.5845d80b.qwms-avib@dea.spamcon.org>
	 <200504141602.15453.eric@cisu.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504141602.15453.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: eric@cisu.net
Cc: qwms-avib@dea.spamcon.org, hgf4-wgsm@dea.spamcon.org, Linux-Newbie <linux-newbie@vger.kernel.org>

On Thu, 2005-04-14 at 16:02 -0500, Eric Bambach wrote:
> On Thursday 14 April 2005 02:47 pm, qwms-avib@dea.spamcon.org wrote:
> > Eric Bambach wrote:
> > > Ssh is the de facto standard for remote administration
> > > but It lacks the ability to give you a GUI interface.
> >
> > Getting a GUI interface for ssh is easy.  Simply start
> > ssh from an xterm, login to the remote server and execute
> > xterm.  This will cause a remote xterm to appear on your
> > local X display.
> >
> > Instead of a remote xterm, you can start a remote
> > window manager (or other X application) the same way.
> 
> Hehe, I stand corrected. I suppose *I* usually think of it as more of a 
> console administration app. Anyways, this is not a good solution if you are 
> logging in from a windows or "other" OS based machine. You would have to 
> install a local X-server which may or may not be practical or useful.
> 
> Additionally, as others pointed out you can tunnel X connections over SSH. 
> While this is true the X protocol by itself is quite heavy and lag and 
> interactivity will be less than spectacular on anything less than 10Mbit. 
> This is why I suggested NX Server for GUI administration because it does some 
> quite spectacular compression and caching I havent seen in other projects 
> (though I admit I havent done alot of diggin on the subject, only raw X, 
> lbxproxy, ssh compression, and VNC each of which has its own caveats)
> > Cheers,
> > Steven

You don't have to pay for an NX server: for example...

http://www.osnews.com/story.php?news_id=8139

An interview with Fabian Franz and Kurt Pfeifle regarding the FreeNX
server. 

I played with it on my small home network and it works well.

Unofficial Debian packages here:

http://kanotix.com/files/debian/freenx/

They may also exist in Debian Sid, I haven't checked (I'm running Ubuntu
here at the moment)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
