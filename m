From: Ulrich =?ISO-8859-1?Q?F=FCrst?= <heimwill@compuserve.de>
Subject: Re: BroadBand Connection
Date: Sun, 27 Feb 2005 17:26:27 +0100
Message-ID: <20050227172627.71add6a4@sarge>
References: <20050227044853.64B553AF0C@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <20050227044853.64B553AF0C@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

"Peter H." <heisspf@skyinet.net> wrote: 
> On the enclosed floppy in the package is a driver for Linux
> cnpro2~1.gz
> 
> Where do I copy that driver to on my HD 

I'd copy it to /usr/local/src/
there upack it and cd into the new directory. Then compile it. But
isnt't there a README nearby the cnpro2~1.gz file?

> and what in the kernel will I
> have to do to make things work for a broadband connection using make
> xconfig.
> 
There's a driver with the kernel, I guess:
on:
http://www.linuxquestions.org/questions/showthread.php?s=&postid=857504#post857504
There "maxut" writes:
> with cnet pro200 ethernet. module for cnet pro 200 is called "dmfe"
it's in the directory of your kernel source in (at least for the
kernel 2.6.8.)
/Documentation/networking/dmfe.txt
./drivers/net/tulip/dmfe.c

Just do a
$ find ./ -iname dmfe*
in your kernel source directory to find out for your kernel.

Ulrich
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
