From: Ray Olszewski <ray@comarre.com>
Subject: Re: Odd path changes with new Mozilla in Debian Sid/unstable
Date: Mon, 15 Dec 2003 15:30:52 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031215151834.01ed0e30@celine>
References: <1071528233.22206.38.camel@DebiAnarchist>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1071528233.22206.38.camel@DebiAnarchist>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie list <linux-newbie@vger.kernel.org>

I don't use Mozilla here so can't help you with most of what you ask about. 
I can clear up one bit of confusion, though.

At 09:43 AM 12/16/2003 +1100, Peter Garrett wrote:
[...]
>Can anyone explain what might have happened? BTW, "which mozilla"
>returns /usr/bin/mozilla, and checking "ls -al /usr/bin/mozilla" shows
>that it is a link to "/etc/alternatives/mozilla".
>"/usr/bin/MozillaFirebird" is not a link; it appears to be the
>executable binary, or the launch script for it.
>
>I'm cautious about altering the link for /usr/bin/mozilla, as I assume
>it is a way for Debian to find the binary... but then the link doesn't
>do what it's designed to do!

Are you sure? /etc/alternatives/mozilla will itself be a link to something, 
to whatever real app is supposed to be running as "mozilla". This is a 
standard bit of Debianish stuff ... if you look in /etc/alternatives, you 
should find you have links for any number of apps that come in many 
versions, including such basics (on my system, anyway) as vi,  editor, awk, 
and telnet. You need to see what the /etc/alternatives/mozilla symlink 
points to in order to figure out what is going on with your system. It 
might well point back to "/usr/bin/MozillaFirebird", for example.

As to your general problems ... please do recall that Sid is currently the 
Unstable version of Debian. It gets weird from time to time, though the 
weirdness is usually transitory ("dpkg-reconfigure" is one good response to 
this; so is waiting an hour and doing an apt-get update/upgrade).

Also, Sid changes often enough that saying you installed the "latest" of 
anything is no help ... you really should report a package version, unless 
(a) you literally installed just before you sent the message and (b) you 
hope for help only from someone who also installed just before reading the 
message.

Since "mozilla" is a wrapper package that installs other packages as 
dependencies (works the same way as the kernel packae James was asking 
about earlier today),  you may just have hit some sort of transient 
mismatch among the dependencies.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
