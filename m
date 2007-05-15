From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 15:16:47 +0530
Message-ID: <366312910705150246r356fa97cv96ccbf51779309cd@mail.gmail.com>
References: <20070515093423.1150.qmail@webmail81.rediffmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_159383_12638171.1179222407269"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=KTbWeKE8sdwD9w6WHgoaxF6fbTcFAN4DLd55AGD6Tft3H9f19FVMwcLg6i3AHFfdOlo3Mvg5dHf3PWEL3bMGqpTb20cmf+XvrdelYb23P4GcaZkKqNKU+X+c4kDr1LBf38Mi3rTKeu/8wyLoRwD7z1uTXwquENL6NGfDFJUrxsI=
In-Reply-To: <20070515093423.1150.qmail@webmail81.rediffmail.com>
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
To: rohit hooda <rohit13hooda@rediffmail.com>
Cc: Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, Bahadir Balban <bahadir.balban@gmail.com>

------=_Part_159383_12638171.1179222407269
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 15 May 2007 09:34:23 -0000, rohit hooda <rohit13hooda@rediffmail.com>
wrote:
>
>
>
>
> On Tue, 15 May 2007 pradeep singh wrote :
> >On 5/14/07, Bahadir Balban <bahadir.balban@gmail.com> wrote:
> >>
> >>On 5/14/07, Learning Linux <learninglinux4@gmail.com> wrote:
> >> > Ok, but how about an ISR, that does not take any locks? Why can't we
> >> > sleep in SUCH an ISR?
> >> > LL
> >> > -
> >>
> >>The killer reason why you can't sleep in an interrupt is because an
> >>interrupt is not associated with any context in the first place.
> >
> >
> >good enough, but i have a query regarding this then.
> >On a 8K kernel stack system, doesn't interrupts share the stack
> associated
> >with the current process which was interrupted?
> Yes, you are right.
> >Doesn't interrupt steals the CPU slice time allocated to the running
> process
> >to run?
> Yes
> >Doesn't it run in current process's context ?
> You got it worng here. It runs on behalf of the process, but in the
> current process's context.
> For interrupts we have a dirrerent context altogether.
>
Ok, that explains a bit.
how will you define an interrupt context?

Thanks
~psr

>
> >What am i missing here?
> There are two different contexts of execution
> Process context
> Interrupt context
> >
> >Thanks
> >~psr
> >
> Thanks,
> -Rohit
> >What
> >>is a context, then? It is the state information for a process. This
> >>includes the kernel and userspace stack pointers, the register set,
> >>and the page tables for that process. The scheduler has access to all
> >>this information, to preempt one process and run another. Contrary to
> >>this, an interrupt, depending on the version of your kernel and arch,
> >>uses a separate irq stack or the kernel stack of the interrupted
> >>process. An irq is not a context but merely a temporary execution to
> >>be concluded asap.
> >>
> >>Hope this helps,
> >>Bahadir
> >>
> >
> >
> >
> >-- play the game
>
>
> [image: Peanuts]<http://adworks.rediff.com/cgi-bin/AdWorks/click.cgi/www.rediff.com/signature-home.htm/1050715198@Middle5/1177315_1171298/1176420/1?PARTNER=3&OAS_QUERY=null+target=new+>




-- 
play the game

------=_Part_159383_12638171.1179222407269
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br><div><span class="gmail_quote">On 15 May 2007 09:34:23 -0000, <b class="gmail_sendername">rohit  hooda</b> &lt;<a href="mailto:rohit13hooda@rediffmail.com">rohit13hooda@rediffmail.com</a>&gt; wrote:</span><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
<p> &nbsp; <br><br><br> On Tue, 15 May 2007 pradeep singh wrote :<span class="q"><br> &gt;On 5/14/07, Bahadir Balban &lt;<a href="mailto:bahadir.balban@gmail.com" target="_blank" onclick="return top.js.OpenExtLink(window,event,this)">
bahadir.balban@gmail.com</a>&gt; wrote:<br> &gt;&gt;<br> &gt;&gt;On 5/14/07, Learning Linux &lt;<a href="mailto:learninglinux4@gmail.com" target="_blank" onclick="return top.js.OpenExtLink(window,event,this)">learninglinux4@gmail.com
</a>&gt; wrote:<br></span><span class="q"> &gt;&gt; &gt; Ok, but how about an ISR, that does not take any locks? Why can&#39;t we<br> &gt;&gt; &gt; sleep in SUCH an ISR?<br> &gt;&gt; &gt; LL<br> &gt;&gt; &gt; -<br> &gt;&gt;
<br> &gt;&gt;The killer reason why you can&#39;t sleep in an interrupt is because an<br> &gt;&gt;interrupt is not associated with any context in the first place.<br> &gt;<br> &gt;<br></span><span class="q"> &gt;good enough, but i have a query regarding this then.
<br></span><span class="q"> &gt;On a 8K kernel stack system, doesn&#39;t interrupts share the stack associated<br> &gt;with the current process which was interrupted?<br></span> Yes, you are right.<span class="q"><br> &gt;Doesn&#39;t interrupt steals the CPU slice time allocated to the running process
<br> &gt;to run?<br></span> Yes<span class="q"><br> &gt;Doesn&#39;t it run in current process&#39;s context ?<br></span> You got it worng here. It runs on behalf of the process, but in the current process&#39;s context. <br>
 For interrupts we have a dirrerent context altogether.</p></blockquote><div>Ok,&nbsp;that&nbsp;explains&nbsp;a&nbsp;bit.<br>how&nbsp;will&nbsp;you&nbsp;define&nbsp;an interrupt&nbsp;context?&nbsp;<br><br>Thanks&nbsp;<br>~psr&nbsp;</div><br><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
<p><span class="q"> &gt;<br> &gt;What am i missing here?<br></span> There are two different contexts of execution<br> Process context<br> Interrupt context<br> &gt;<br> &gt;Thanks<br> &gt;~psr<br> &gt;<br> Thanks,<br><span class="sg">
 -Rohit</span><span class="q"><br> &gt;What<br> &gt;&gt;is a context, then? It is the state information for a process. This<br> &gt;&gt;includes the kernel and userspace stack pointers, the register set,<br> &gt;&gt;and the page tables for that process. The scheduler has access to all
<br> &gt;&gt;this information, to preempt one process and run another. Contrary to<br> &gt;&gt;this, an interrupt, depending on the version of your kernel and arch,<br> &gt;&gt;uses a separate irq stack or the kernel stack of the interrupted
<br> &gt;&gt;process. An irq is not a context but merely a temporary execution to<br> &gt;&gt;be concluded asap.<br> &gt;&gt;<br> &gt;&gt;Hope this helps,<br> &gt;&gt;Bahadir<br> &gt;&gt;<br> &gt;<br> &gt;<br> &gt;<br> &gt;-- play the game
<br></span></p><br><br><table border="0" width="644" height="57" cellspacing="0" cellpadding="0" style="font-family: &quot;Bitstream Vera Sans [bitstream]&quot;; font-size: 11px; line-height: 15px"><tbody><tr><td><a href="http://adworks.rediff.com/cgi-bin/AdWorks/click.cgi/www.rediff.com/signature-home.htm/1050715198@Middle5/1177315_1171298/1176420/1?PARTNER=3&amp;OAS_QUERY=null+target=new+" target="_blank" onclick="return top.js.OpenExtLink(window,event,this)">
<img alt="Peanuts" border="0"></a></td></tr></tbody></table></blockquote></div><br><br clear="all"><br>-- <br>play the game 

------=_Part_159383_12638171.1179222407269--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

