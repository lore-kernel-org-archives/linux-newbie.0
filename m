From: Ray Olszewski <ray@comarre.com>
Subject: Re: smtp vs sendmail query
Date: Thu, 10 Aug 2006 12:55:46 -0700
Message-ID: <44DB8F42.8030604@comarre.com>
References: <000501c6a1f0$a79153a0$6900a8c0@ANCHORMAN> <Pine.LNX.4.64.0608101339210.15749@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0608101339210.15749@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

James Miller wrote:
> I think I'm finally ready to abandon Pine as my e-mail client and to 
> start using Mutt. I thought of doing this a few years ago, but looking 
> over Mutt documentation and config files left me bewildered. I'm sure I 
> will still be confused about some of the program's workings, but it 
> seems, after 4 years or so of using and admin'ing my Linux system(s), I 
> have good enough grasp of the program's basics and related e-mail 
> workings now that I'm ready to give it a serious go. This switch is also 
> partly precipitated by certain ways in which Pine has been failing me. 
> Despite what I've said above, the present message is not a Mutt-specific 
> query: I'll probably be directing those to the Mutt user list. What I'm 
> wondering about is something more fundamental about e-mail technology.
> 
> One of the things that kept me from using Mutt previously was the fact 
> that it does not do smtp, but rather apparently relies on other programs 
> such as sendmail for passing mail to servers that in turn pass it to 
> other servers and eventually to recipients. I don't care how stupid I 
> might sound to the initiated in saying this, but for the 
> technically-challenged such as myself, having an extra layer of program 
> activity between the e-mail client and the outgoing server is confusing: 
> it's just another set of configuration files to edit and keep current, 
> and another place to look for errors should problems arise. At the same 
> time, I suppose there are good reasons for having a separate program to 
> do mail passing to outgoing servers. The most sensible reason I can 
> think of is that e-mailing is often done in an institutional 
> environment, one that has a machine on its network dedicated to mailing 
> functions. I have no experience of working in such an environment, so 
> I'm guessing at this, but that seems like it could provide a sensible 
> explanation for the separation between e-mail client and outgoing mail 
> server.
> 
> Anyway, Pine does do smtp: you enter info about your smtp server in its 
> config file, and away you go with sending out your mail. Mutt, as I 
> understand it "will never do smtp" (quotation from a Mutt information 
> site I haven't checked for a couple years but which I assume to reflect 
> the current state of affairs). I will thus, I assume, need to look into 
> getting and setting up a program to interact with the smtp server I will 
> be sending mail through. Sendmail is one I recall reading about: can 
> anyone supply names of, and recommendations about, others? I want the 
> simplest possible program for this one-user (Debian) machine.
> 
> Finally, can anyone enlighten me as to why a program like Mutt--which is 
> actually the only e-mail client I know of that won't interact with smtp 
> servers--will not do smtp? Is it for puristic reasons, i.e., because it 
> would somehow contaminate the program's perceived function by 
> introducing extra functionality? I.e., a line in the sand against 
> feature-creep? Could it be for some sort of security reasons?
> 
> Sorry for the long message. Input will be appreciated.
> 
> Thanks, James
> 
> PS Recommendations for other text-mode e-mail clients would also be 
> appreciated.

James -- I don't know why (or even if, really) the authors of Mutt don't 
build in smtp support. I could guess, but you don't need uninformed 
guessing.

I'm replying only because you reminded us that you are a Debian user. 
The off-the-shelf smtp program for Debian is exim, and if you did 
anything resembling a standard install of any recent version of Debian, 
you already have exim4 on your system, along with a symlink that lets 
you run it as "sendmail":

	new-flagg:/home/autovcr# ls -l /usr/sbin/sendmail
	lrwxr-xr-x  1 root root 5 Aug 30  2005 /usr/sbin/sendmail -> exim4

The details on setting this up (this HowTo is for Debian-Sarge, but I 
expect Etch and Sid are almost the same) are at 
http://pkg-exim4.alioth.debian.org/README/README.Debian

The short version (for Sarge or Sid, probably Etch too): as root, run 
"dpkg-reconfigure exim4-config" and tell it (I think, if I understand 
your setup right) "mail sent by smarthost; no local mail". The 
"smarthost" is the "smtp server" you identified to Pine.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
