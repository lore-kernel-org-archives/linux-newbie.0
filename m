From: Ray Olszewski <ray@comarre.com>
Subject: Re: Re[2]: extra ordinary installation
Date: Wed, 15 May 2002 17:46:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020516004646.00e5fd68@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: =?Windows-1250?B?TWF0ZXVzeiCjb3Nrb3Q=?= <m.loskot@chello.pl>
Cc: linux-newbie@vger.kernel.org

Replies interepersed below.

At 01:10 AM 5/16/02 +0200, =?Windows-1250?B?TWF0ZXVzeiCjb3Nrb3Q=?= wrote:
>Hello Ray,
>
>Wednesday, May 15, 2002, 7:50:42 PM, you wrote:
>RO> Were I in your shoes, I would do one of two things:
>RO> 1. Don't reinstall at all.
>
>So, you suggest to make some FRESH installation ?

No, as what immediately followed this sentance should have made clear. I'm
suggesting you use the existing install on the existing hard disk.

>RO> Instead, put the new HD on the other IDE channel,
>RO> make some partitions and put filesystems on them, and mount those
partitions
>RO> in useful places (like /home) after copying the current contents of those
>RO> mount points to the corresponding partitions (mounted for this purpose at
>RO> some temporary mount points) on the new drive.
>
>You mean, that I have to move my current content (/home and other data)
>to new HD ?

Well, if you want to *use* the new HD, you certainly need to put *something*
on it. If you use an existing directory as a mount point for a partition,
the actual content of that directory will no longer be accessible. 

To be precise, I suggested *copying* the content, not *moving* it. That's
just cowardice on my part ... I find it safer to cp then rm then to mv ...
though others will disagree here.

>RO> 2. Do a fresh install of Linux on the new HD,
>
>That's right - Fresh Install, I got it.
>
>RO> then mount the old one (either
>RO> temporarily or permanently) on the other IDE channel. Copy over from
the old
>RO> HD only local content and customization stuff.
>
>What you mean under "local content and customization stuff" ?
>It could be some /etc/ files, configuraton and so on, for example
>named, dhcp config files for using it on new Fresh Instllation ?

I mean whatever you've created locally. That might be custom config files,
or applications you've written, or apps that you installed that did not come
with the distro. Or content -- text, images, video ... whatever you're
actually using the computer for.

>RO> As a loyal Debian user,
>
>Debian....It was My First Linux Distro ;)
>But...I gave up ;),Debaian is beautiful,but fall in love with
>Slackware  ;)))/
>
>RO> I have no recommendation between RH and Slackware
>RO> ... except that whatever distro you choose, you should use the latest
>RO> version (for RH, that's 7.3; for Slackware, 8.0), including ALL security
>RO> patches that are available online for it.
>
>Yes. you're right.
>So, could You recommend me some palces with kernel security patches ?
>I'm using actually 2.4.18, what kind of patches should I put into my
>kernel ?

That's one of the "downsides" of using Debian ... the distro's security
practices are pretty good, so I rely on the apt tools to keep my security up
to date. So I can't readily suggest sources other than the online update
site for whichever distro you use. (I know RH posts security patches, and I
assume Slackware does too.)

>Thanks a lot
>
>Regards
>
>p.s. Ray, Are you from Poland ?
>Sorry for my straight question, but your last name seems to be like
>polish.

No. My grandfather emigrated from Poland to the USA around 1890, as a very
young child.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
