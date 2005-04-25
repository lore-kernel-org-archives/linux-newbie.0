From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: How to d/w form the CVS?
Date: Mon, 25 Apr 2005 17:47:33 +0530
Message-ID: <4EE0CBA31942E547B99B3D4BFAB34811454A1F@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: William Stanard <wstanard@palmertrinity.org>, linux-newbie@vger.kernel.org

Hi All,

I got the tslib package on the link below in a CVS repository of
arm.linux.org.uk. I am trying to do get that. I have a doubt here. 

Do I need to have a public IP to connect to the CVS? 
I have executed it as follows:
export CVSROOT=:pserver:cvs@pubcvs.arm.linux.org.uk:/mnt/src/cvsroot

where "/mnt/src/cvsroot" exists. What does the pserver mean?

Then if I say 

#cvs login
Logging in to :pserver:cvs@pubcvs.arm.linux.org.uk:2401/mnt/srv/cvsroot/
CVS passwd:
Cvs [login aborted]: connect to pubcvs.arm.linux.org.uk(212.18.232.187):
12402 failed: Network is unreachable.

What could be the problem?

Also, if I say chroot /mnt/src/cvsroot, according to what u told me and
the documentation, if I run a install script, it will launch in into
this directory. If so, please explain me how it works.

I am getting the following output when I run chroot.

#chroot /mnt/src
chroot: /bin/bash: No such file or directory

What does this mean?

Regards,
Mukund jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
