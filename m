From: Ray Olszewski <ray@comarre.com>
Subject: Re: ?Copying 'difficult' CD-ROM discs
Date: Sat, 17 Aug 2002 13:13:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020817130643.020e1040@celine>
References: <200208100843.50199.natarajan_k@hotpop.com>
 <5.1.0.14.1.20020817104733.020ef510@celine>
 <3D5E97ED.CEC2B73D@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000a01c2461c$f3b577e0$0200a8c0@toybox>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Matthias Schweinoch <matthias.schweinoch@epost.de>, linux-newbie@vger.kernel.org

At 08:36 PM 8/17/02 +0200, Matthias Schweinoch wrote:
>while we're on the subject of copying "difficult" CDs: has anyone tried to
>make copies of video CDs? i have several video CDs here which were created
>with win tools such as NERO or WINONCD. i can't get these copied on my linux
>box with the latest X-CD-ROAST... i haven't tried the command line approach
>yet...
>
>but before i get all too much into it: how das linux (cdrecord, mkisofs?)
>handle mixed-mode CDs - i think that's the problem with the VCDs. thank for
>the help.

I haven't actually done this yet,  but I've been reading up on it. VCDs are 
not iso format, so they need to be burned with different tools and ripped 
(in the same way that one rips CDs and DVDs) rather than read.

There is a (Debian) package called vcdtools that inclues an app called 
mkvcdfs. Its man page says the images it creates can be burned with cdrdao 
(but apparently not with cdrecord). Someday I'll have the time to try this 
out. If your someday comes sooner than mine, and you get this working, 
please tell us what the details are.

For ripping VCDs, there is a (Debian) package called vcdimager that 
converts the VCD content to regular mpeg.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
