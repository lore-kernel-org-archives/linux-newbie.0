From: G Anna <drguruolai@eth.net>
Subject: Setting EXTRAVERSION (was Re: Kernel error)
Date: 28 May 2002 21:14:00 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3ptzge0qn.fsf_-_@wobble.eth.net>
References: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
	<20020527165031.GA2875@cam.ac.uk>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020527165031.GA2875@cam.ac.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


> Date: Mon, 27 May 2002 17:50:31 +0100
> From: Steven Smith <sos22@cam.ac.uk>
> Subj: Re: Kernel error

(snip)

> My suggestion would be to compile a new kernel, and set
> EXTRAVERSION.  If the new kernel is version 2.4.5<extra>, then put
> the System.map in /boot/System.map-2.4.5<extra>.

I installed RH 7.1.  It came with 2.4.2-2 kernel.  I then upgraded the
kernel to 2.4.16.  While compiling the new 2.4.16 kernel I didn't not
set the EXTRAVERSION in /usr/src/linux/Makefile. Will this cause any
problem in the future?

What is the significance of this EXTRAVERSION?  Can I choose any value
for this variable?  Also, should this value always start with -, by
convention?

$ ls /lib/modules
2.4.16
2.4.2-2

$ uname -a
Linux wobble 2.4.16 #8 Tue May 14 14:15:58 IST 2002 i686 unknown

Thank you all for your time.

Cheers,
anna

-- 

(16) I  will  never  utter the sentence "But before I kill you, there's
     just one thing I want to know." - Peter Anspach in "The Top 100 
     Things I'd Do If I Ever Became An Evil Overlord"

                                            http://www.eviloverlord.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
