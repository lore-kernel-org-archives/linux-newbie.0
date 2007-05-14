From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 18:22:52 +0530
Message-ID: <366312910705140552o6a507cbbl806f2ad0efc9d90c@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <4648552D.3060808@aitel.hist.no>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_147142_10372041.1179147172409"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=FF4j0ndCpcpn1eTy6P59gSViUYdQY9MdjEHUPuCD54vrJDuvm7yBKCN9gE/u5yp2wtaN4ZH9864Lbr9unB/ZbELyAk2i0T+r6k6fSTrNAMWBVAJVypYvBNr5Sagm5k0Wtp1lfwlZh7jGInkHlzEFUSX8qsmMas77oKi3+IO+8eA=
In-Reply-To: <4648552D.3060808@aitel.hist.no>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: Helge Hafting <helge.hafting@aitel.hist.no>
Cc: Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

------=_Part_147142_10372041.1179147172409
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 5/14/07, Helge Hafting <helge.hafting@aitel.hist.no> wrote:
>
> Learning Linux wrote:
> > I have a very basic doubt here ... what makes it impossible to sleep
> > in an ISR? I mean, I know that the kernel preemption is disabled and
> > the kernel will panic, but I could not understand why?
> First: an ISR is meant to be very quick. It is supposed to do only a
> minimum of work needed to service the interrupt, then exit.
> This is important, as other interrupts might be blocked during your ISR.
> Sleeping is out of question, even a long-running loop in no-no.
>
> Second: You don't ever need to sleep in an ISR anyway.
> Complicated work that might take time or might need to sleep
> is not supposed to be in an ISR.  If you think you have a need,
> tell us what you're up to and hopefully someone will explain
> how do do things properly.
>
> When an interrupt happens that needs complicated servicing, the
> ISR don't do the whole job.  It just acknowledges the interrupt,
> perhaps does a few things with the device in question, then it
> exits. It leaves the rest of the work for a bottom half or kernel
> thread or something like that.  Kernel threads may sleep . . .


Helge, i think the Original poster wants to know why *exactly*
cannot you sleep?
What prevents me from sleeping?

What is this complicated processing which force an ISR not to sleep?

Thanks

Helge Hafting
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


-- 
play the game

------=_Part_147142_10372041.1179147172409
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br><div><span class="gmail_quote">On 5/14/07, <b class="gmail_sendername">Helge Hafting</b> &lt;<a href="mailto:helge.hafting@aitel.hist.no">helge.hafting@aitel.hist.no</a>&gt; wrote:</span><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
Learning Linux wrote:<br>&gt; I have a very basic doubt here ... what makes it impossible to sleep<br>&gt; in an ISR? I mean, I know that the kernel preemption is disabled and<br>&gt; the kernel will panic, but I could not understand why?
<br>First: an ISR is meant to be very quick. It is supposed to do only a<br>minimum of work needed to service the interrupt, then exit.<br>This is important, as other interrupts might be blocked during your ISR.<br>Sleeping is out of question, even a long-running loop in no-no.
<br><br>Second: You don&#39;t ever need to sleep in an ISR anyway.<br>Complicated work that might take time or might need to sleep<br>is not supposed to be in an ISR.&nbsp;&nbsp;If you think you have a need,<br>tell us what you&#39;re up to and hopefully someone will explain
<br>how do do things properly.<br><br>When an interrupt happens that needs complicated servicing, the<br>ISR don&#39;t do the whole job.&nbsp;&nbsp;It just acknowledges the interrupt,<br>perhaps does a few things with the device in question, then it
<br>exits. It leaves the rest of the work for a bottom half or kernel<br>thread or something like that.&nbsp;&nbsp;Kernel threads may sleep . . .</blockquote><div><br>Helge,&nbsp;i&nbsp;think&nbsp;the&nbsp;Original&nbsp;poster&nbsp;wants&nbsp;to&nbsp;know&nbsp;why&nbsp;*exactly* cannot&nbsp;you&nbsp;sleep?&nbsp;
</div>What prevents me from sleeping?<br> <br>What is this complicated processing which force an ISR not to sleep? <br><br>Thanks<br><br><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
Helge Hafting<br><br>--<br>To unsubscribe from this list: send an email with<br>&quot;unsubscribe kernelnewbies&quot; to <a href="mailto:ecartis@nl.linux.org">ecartis@nl.linux.org</a><br>Please read the FAQ at <a href="http://kernelnewbies.org/FAQ">
http://kernelnewbies.org/FAQ</a><br><br></blockquote></div><br><br clear="all"><br>-- <br>play the game 

------=_Part_147142_10372041.1179147172409--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

