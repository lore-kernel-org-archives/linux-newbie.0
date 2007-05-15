From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 12:40:12 +0530
Message-ID: <366312910705150010p623f9732mc498f457245d23a1@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <366312910705142217geba69dbm98a6c0bf2aabb937@mail.gmail.com>
	 <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_158341_13137435.1179213012858"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=fqqBwelGOHvPmwuEhRhD+yswZiQnIxtx204Szo2W4QKc1SDLGrQsVavXrbDbPm+S1Tx9MQKfdkQeugLNfUaPWRgyrEEL9cFOYjtcn2IZvPwydYUW6tzgr8UBKckhKf7WTvEH2KLure3hXQOSdE4Cvq3HlUal43WEsUqqo3zcSXc=
In-Reply-To: <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
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
To: Dong Feng <middle.fengdong@gmail.com>
Cc: Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

------=_Part_158341_13137435.1179213012858
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 5/15/07, Dong Feng <middle.fengdong@gmail.com> wrote:
>
> >
> > good enough, but i have a query regarding this then.
> > On a 8K kernel stack system, doesn't interrupts share the stack
> associated
> > with the current process which was interrupted?
>
> Yes, I think so.
>
> Yes it does.
> > Doesn't interrupt steals the CPU slice time allocated to the running
> process
> > to run?
>
> I don't think so but I am not sure.


Aliter, i think so.How
 can an interrupt's execution time go unaccounted then?
I guess it does not, only the current processes running time is accounted
for.
Thoughts?

> Doesn't it run in current process's context ?
> >
>
> No. I think the concept of process context is a higher-level logical
> concept. Though the interrupt share stack with the interrupted
> process, in my opinion it logically does not share the context with
> the process.


Yes, you are right as i can infer. thats why ISRs are special kernel
control paths.
But the poster asked, why can't we make ISRs to share context with the
interrupted process if
it not holding any locks? This is rather a desing issues IMO rather
than imlementation, isnt it?


I guess even if it is possible, it would over complicate the handler code.
Better trying to keep it simple i guess. Please CMIIW

[snip]
>
> But I do not see the exact relationship between your specific queries
> and the original question. Could you elaborate?


My query here was related to your previous reply.Just wanted to pit some doubts
as raised by the orirignal poster.That's it.

Thank you
~psr




-- 
play the game

------=_Part_158341_13137435.1179213012858
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br><div><span class="gmail_quote">On 5/15/07, <b class="gmail_sendername">Dong Feng</b> &lt;<a href="mailto:middle.fengdong@gmail.com">middle.fengdong@gmail.com</a>&gt; wrote:</span><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
&gt;<br>&gt; good enough, but i have a query regarding this then.<br>&gt; On a 8K kernel stack system, doesn&#39;t interrupts share the stack associated<br>&gt; with the current process which was interrupted?<br><br>Yes, I think so.
<br><br>Yes it does.<br>&gt; Doesn&#39;t interrupt steals the CPU slice time allocated to the running process<br>&gt; to run?<br><br>I don&#39;t think so but I am not sure.</blockquote><div><br>Aliter,&nbsp;i&nbsp;think&nbsp;so.How&nbsp;can&nbsp;an&nbsp;interrupt&#39;s&nbsp;execution&nbsp;time&nbsp;go&nbsp;unaccounted&nbsp;then?&nbsp;
<br>I&nbsp;guess&nbsp;it&nbsp;does&nbsp;not,&nbsp;only&nbsp;the&nbsp;current&nbsp;processes&nbsp;running time&nbsp;is&nbsp;accounted for.<br>Thoughts?<br></div><br><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
&gt; Doesn&#39;t it run in current process&#39;s context ?<br>&gt;<br><br>No. I think the concept of process context is a higher-level logical<br>concept. Though the interrupt share stack with the interrupted<br>process, in my opinion it logically does not share the context with
<br>the process.</blockquote><div><br>Yes,&nbsp;you&nbsp;are&nbsp;right&nbsp;as&nbsp;i&nbsp;can&nbsp;infer.&nbsp;thats&nbsp;why&nbsp;ISRs&nbsp;are&nbsp;special&nbsp;kernel&nbsp;control&nbsp;paths.<br>But&nbsp;the&nbsp;poster&nbsp;asked,&nbsp;why&nbsp;can&#39;t&nbsp;we&nbsp;make&nbsp;ISRs&nbsp;to&nbsp;share&nbsp;context&nbsp;with&nbsp;the&nbsp;interrupted&nbsp;process&nbsp;if&nbsp;
<br>it&nbsp;not&nbsp;holding&nbsp;any&nbsp;locks?&nbsp;This&nbsp;is&nbsp;rather&nbsp;a&nbsp;desing&nbsp;issues&nbsp;IMO&nbsp;rather&nbsp;than&nbsp;imlementation,&nbsp;isnt&nbsp;it? <br><br>I guess even if it is possible, it would over complicate the handler code. Better trying to keep it simple i guess. Please CMIIW
<br></div><br><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
[snip]<br><br>But I do not see the exact relationship between your specific queries<br>and the original question. Could you elaborate?</blockquote><div><br>My&nbsp;query&nbsp;here&nbsp;was&nbsp;related&nbsp;to&nbsp;your&nbsp;previous&nbsp;reply.Just&nbsp;wanted&nbsp;to&nbsp;pit&nbsp;some&nbsp;doubts as raised by the orirignal 
poster.That&#39;s&nbsp;it.<br><br>Thank&nbsp;you<br>~psr&nbsp;</div><br></div><br><br clear="all"><br>-- <br>play the game 

------=_Part_158341_13137435.1179213012858--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

