From: Ray Olszewski <ray@comarre.com>
Subject: Re: tovid - videotrans ? (was Re: Convert .avi to .vob/Linux only??)
Date: Tue, 28 Feb 2006 13:47:34 -0800
Message-ID: <4404C4F6.1090705@comarre.com>
References: <20060224152430.GA1275@lnx2.kvinet.com> <43FF57EF.8030803@comarre.com> <4403B178.1070606@gelm.net> <20060228195752.GA1048@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060228195752.GA1048@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
[...]
> 	Update: I just found, buried in my shack, a 3 page txt copy of
> an article by Chris Stoddard; "DVD Authoring." I haven't a clue where
> I fetched it from.. It goes into some good details, some of which may
> not be needed for newer drives.. Worth a look see, maybe?
> 

http://linuxgazette.net/issue83/stoddard.html

It's dated 2002, which is a bit old. But then, so is your system, so it 
might be useful for advice on doing DVD burning with a system that is, 
by today's standards, a bit light on CPU power and RAM (and maybe HD 
space; i don't recall if you said).

As I skim through it, the one thing I realize that might be an issue for 
you is the codec your .avi files use. .avi is a container type (for 
combining video and audio), not a specification of how the video itself 
is encoded. These days, .avi *typically* means mpeg4 (aka DivX) video, 
but I doubr that was true for stuff encoded with strwamer (the vidcap 
application Stoddardf discusses). So you may have to do different 
transcoding to get from your video to the mpeg2 that DVDs expect.

Other parts look quite up to date. growisofs remains the current 
free-software standard for writing data DVDs, for example ... it's kind 
of a combination of mkisofs and cdrecord for DVDs. So while you won't 
find all the answers here, you should find it helpful.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
