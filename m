From: james niland <bareego@yahoo.com>
Subject: Re: Copying an audio CD
Date: Sat, 21 Dec 2002 06:00:36 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021221140036.6121.qmail@web11402.mail.yahoo.com>
References: <3E032DFC.30209@mega.ist.utl.pt>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E032DFC.30209@mega.ist.utl.pt>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org



--- "Paulo Jorge O. C. Matos" <pocm@mega.ist.utl.pt>
wrote:
> Hi all,
> 
> What's the best way to copy an audio cd under Linux?
> Is it possible with 
> cdrecord? what do I need?
> 
> Best regards,
> 
Under linux two programs are most widely used to do
the actual recording :
cdrecord for tao (track at once) and
cdrdao for dao (disc at once) modes.

cdrecord will do normal data discs and audio CDs with
2 second gaps between tracks. 
If you want to burn CDs that require other gaps
between tracks or some mixed mode CDs you'll often end
up using cdrdao.
I prefer to use cdrecord if I can, because I often
have troubles with cdrdao burned CDs over 500MB size,
but that might be my particular setup.

Now these programs are just command line programs you
give switches or point them to a TOC file.
Because many people don't like such there are frontend
programs that make burning CDs a lot user friendly.
XCDroast seems to be quite popular for that, I myself
like to use K3B(is kindof nero-ish). 
I wouldn't advise using Koncd, it's quite buggy imho.
There'll probably be lots more frontends out there,
just have a look on sourceforge.

Also these programs are used with SCSI burners. If you
have an ide burner your linux can run a SCSI emulation
for your ide burner, but you have to tell it to.
Depending on how you boot linux that is done in a
different way.

It would be a good thing to have a look in the linux
burner howto.
http://www.tldp.org/HOWTO/CD-Writing-HOWTO.html

Hope that helps
James Niland
PS am still a noob myself, any corrections welcome

__________________________________________________
Do you Yahoo!?
Yahoo! Mail Plus - Powerful. Affordable. Sign up now.
http://mailplus.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
