From: "J." <mailing-lists@xs4all.nl>
Subject: Re: remote admin
Date: Thu, 14 Apr 2005 19:14:52 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0504141835380.1414-100000@hestia>
References: <200504141040.02011.eric@cisu.net>
Reply-To: linux <linux-newbie@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504141040.02011.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

On Thu, 14 Apr 2005, Eric Bambach wrote:

> Ssh is the de facto standard for remote administration but It lacks the 
> ability to give you a GUI interface. 

What ? Search for SSH GUI and google returns +770,000 matches.. ! Other
than that it can be used to encrypt just about any connection, like for
example X .

> SSH Is quick and dirty 

Send a message to one of the SSH lists with that line in the subject. ;-) 

> remote administration and comes standard (or should ) on all Unix
> variants.  (openssh.com)
> 
> TightVNC is a rather "unrobust" remote X server but it gets the job done. This 
> will let you connect remotely and get an X GUI session open.
> 
> If you can afford it, ...........

<CUT>
...
</CUT>

Then take 10min's of your precious time and look at some of the +200
projects that provide OPEN/FREE remote X administration. 

Waf, waf..
The first computers were TIME-SHARING comp's . They had to be because they
were to expensive to buy. Don't tell me we have to buy software to work
remotely ??????? Back to the stone-age again.... Hmmzz.. Smell old Micro
soft users.. waf, waf..  

Sorry people, but if small schools have to start buying stuff for these
relatively simple but fundamental tasks then w're definitely on the wrong
track in the OSS galaxy.

> HTH!
> 
> On Friday 15 April 2005 12:39 am, S. Barret Dolph wrote:
> > I would like to be able to do some admin stuff on our school computers from
> > home. What is best way to do this? Are programs such as "Webmin" better
> > than remote logins or just different. 

Ehm, webmin is also a remote login .. No difference inbetween the two, if
you put it generaly like that. You always have to login to your system .

Let me just say this:

Webmin can provide a lot of things to you AND to someone who is NOT
you. Make sure you only allow connections from your static IP to your
schools static IP address by firewall and learn to use hosts.allow &
hosts.deny. Pump all data thru secure shell, ssl or any other form of
encryption. Keep an eye on the logfiles, pick decent passwords, restrict
acces and change the password a couple of times a year. 

Would be great of you also could setup a VPN, but is definitely not
required.

> > The administrative tasks are usually
> > more school administration than computer administration but not always just
> > that. For example, I am now working on getting chinese input on our school
> > computer. School administration work is usually just things like updating
> > documents and making sure that the latest materials are available to them.

Again, would be great if we would know what distro <-> pc you use and if
you know how to handle a X configuration.  Because your already almost
there... 

> > Cordially,
> > S. Barret Dolph
> > Taipei Taiwan

J.

--
Don't worry Ma'am. We're university students, - we know what we're doing.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
