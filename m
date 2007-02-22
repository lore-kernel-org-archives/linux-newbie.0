From: "Raseel Bhagat" <raseelbhagat@gmail.com>
Subject: Re: not getting command prompt at the console
Date: Thu, 22 Feb 2007 16:20:08 +0530
Message-ID: <f68850780702220250x57f4f678re104caecfeec6ef2@mail.gmail.com>
References: <b115cb5f0702220149wfbfc051qc8d0106b9e4ed98d@mail.gmail.com>
	 <20070222102540.GB31252@gateway.home>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=SOYFDvIzImzBwm3aeITlLyP6iAwF7KIWjs/H7y0h5pjB+QHBSty8Xqlz/7xEJZPZHZ5sBrNQySdqSD8vOglIJ74c60609pYGV99dAAv3U6I2Hrc4qFYzwBdo74zlSs7MpRNtd7azBqi24RzddXAdXPWp7ORyiR6Iv1v6HccmRXI=
In-Reply-To: <20070222102540.GB31252@gateway.home>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>, linux-mips@linux-mips.org

Hi Rajat,

On 2/22/07, Erik Mouw <mouw@nl.linux.org> wrote:
> On Thu, Feb 22, 2007 at 03:19:10PM +0530, Rajat Jain wrote:
> > Next, I expected to see a command prompt which never comes. At this
> > point if I debug, I find the processor executing the idle process.
> >
> > I am successfully hable to telnet to the board and fire whatever
> > commands I want though. How do I bring the prompt to the serial
> > console?
>
> Run a getty on the serial device (I suppose you're using a serial
> port).
> Could be that the serial driver changed or that you forgot to compile a
> driver for the serial device.
>

Also , assuming you are using a serial console , check your entries in
the inittab file .
It should look  something like :
ttyS0::respawn:/sbin/getty ttyS0 115200 linux
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
