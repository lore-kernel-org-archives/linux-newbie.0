From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 13:42:32 +0530
Message-ID: <366312910705150112r60834c7dt5111a452d808ceff@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <366312910705142217geba69dbm98a6c0bf2aabb937@mail.gmail.com>
	 <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
	 <366312910705150010p623f9732mc498f457245d23a1@mail.gmail.com>
	 <a2ebde260705150028j16cc12a2ya6d5906c97ce193b@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_158813_5644331.1179216752720"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=t/WcrPr2bqHwH+k37mRaqa59c7V5qX+3lv/Q/pD+ANsbAHQQUCXNVEqErA0458d/Pp9l8bmM+9n/twRhbC3QMGEqV6DAz0PvZIQs6CE3str5+c9FESPu8B17qhqcUbdGE9BHAC+YeSaWIOqInqVACFpbuOYY/31NXwy+01YPD8Q=
In-Reply-To: <a2ebde260705150028j16cc12a2ya6d5906c97ce193b@mail.gmail.com>
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

------=_Part_158813_5644331.1179216752720
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 5/15/07, Dong Feng <middle.fengdong@gmail.com> wrote:
>
> > >
> > > I don't think so but I am not sure.
> >
> > Aliter, i think so.How can an interrupt's execution time go
> > unaccounted then?
> > I guess it does not, only the current processes running
> > time is accounted for.
> > Thoughts?
> >
>
> The interrupt handler's execution time will definitely defer the
> execution of the process, but I think it does not steal the process's
> time slice (the time_slice field not subtracted).


Ok, if i accept this, how does that explains this-

Following code snippet is from main schedule() function[kernel 2.6.20.1] -

now = sched_clock();
if(likely((long long)(now - prev->timestamp) < NS_MAX_SLEEP_AVG)) {
       run_time = now - prev->timestamp;
       /* blah blah */
} else
            run_time = NS_MAX_SLEEP_AVG;

Now,
AFAIK runtime = now - prev->timestamp; will get you a value which (
prev->timestamp is *stamped* during previous
switching of the tasks) is difference of this previous stamp and now value.
Assuming before this schedule() an interrupt was served, then where did the
time spent in ISR accounting is adjusted? I guess this is the code, where
it is checking for a *possible*  runtime to overshoot its stipulated
NS_MAX_SLEEP_AVG and resetting this. Isn't it?
And exactly why would that happen?
Perhaps because the process was about to expire its slice when somebody
barged in and stole its share and also overshot the stipulated time(may be
very less though).

Can you help me in clearing this?

> > > Doesn't it run in current process's context ?
> > > >
> > >
> > > No. I think the concept of process context is a higher-level logical
> > > concept. Though the interrupt share stack with the interrupted
> > > process, in my opinion it logically does not share the context with
> > > the process.
> >
> > Yes, you are right as i can infer. thats why ISRs
> > are special kernel control paths.
> > But the poster asked, why can't we make ISRs to
> > share context with the interrupted process
> > if
> > it not holding any locks? This is rather a desing issues
> > IMO rather than imlementation, isnt it?
> >
> > I guess even if it is possible, it would over complicate the handler
> code.
> > Better trying to keep it simple i guess. Please CMIIW
>
> My understanding is, the ISR is in different context from the process
> because of the definition of term *context*. In my opinion, to say two
> code pieces running in the same context means that two pieces of code
> has some logical relationship to meet a common objective. That's why I
> said *context* is a higher-level logical concept. It's not a concept
> defined in the level of hardware or code implementation, but instead
> in the level of logical. I think, by its definition, it makes no sense
> to say an ISR share context with the process interrupted by it because
> an ISR just randomly interrupts a process, with no logical
> relationship.


Right agreed.

Thanks
~psr


-- 
play the game

------=_Part_158813_5644331.1179216752720
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br><div><span class="gmail_quote">On 5/15/07, <b class="gmail_sendername">Dong Feng</b> &lt;<a href="mailto:middle.fengdong@gmail.com" target="_blank" onclick="return top.js.OpenExtLink(window,event,this)">middle.fengdong@gmail.com
</a>&gt; wrote:</span><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
 &gt; &gt;<br>&gt; &gt; I don&#39;t think so but I am not sure.<br>&gt;<br>&gt; Aliter, i think so.How can an interrupt&#39;s execution time go<br>&gt; unaccounted then?<br>&gt; I guess it does not, only the current processes running 
<br>&gt; time is accounted for.<br>&gt; Thoughts?<br>&gt;<br><br>The interrupt handler&#39;s execution time will definitely defer the<br>execution of the process, but I think it does not steal the process&#39;s<br>time slice (the time_slice field not subtracted). 
</blockquote><div><br>Ok, if i accept this, how does that explains this-&nbsp; <br><br>Following code snippet is from main schedule() function[kernel <a href="http://2.6.20.1">2.6.20.1</a>] - <br><br>now = sched_clock();<br>if(likely((long long)(now - prev-&gt;timestamp) &lt; NS_MAX_SLEEP_AVG)) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run_time = now - prev-&gt;timestamp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* blah blah */<br>} else<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run_time = NS_MAX_SLEEP_AVG;<br><br>Now, AFAIK&nbsp;runtime&nbsp;=&nbsp;now&nbsp;-&nbsp;prev-&gt;timestamp;&nbsp;will&nbsp;get&nbsp;you&nbsp;a&nbsp;value&nbsp;which&nbsp;(&nbsp;prev-&gt;timestamp&nbsp;is&nbsp;*stamped*&nbsp;during&nbsp;previous switching&nbsp;of&nbsp;the&nbsp;tasks)&nbsp;is&nbsp;difference&nbsp;of&nbsp;this&nbsp;previous&nbsp;stamp&nbsp;and&nbsp;now&nbsp;value.&nbsp;
<br>Assuming before this schedule() an interrupt was served, then where did the time spent in ISR accounting is adjusted? I guess this is the code, where it&nbsp;is&nbsp;checking&nbsp;for&nbsp;a&nbsp;*possible*&nbsp; runtime to overshoot its stipulated&nbsp; NS_MAX_SLEEP_AVG and resetting this. Isn&#39;t it? 
<br>And&nbsp;exactly&nbsp;why&nbsp;would&nbsp;that&nbsp;happen?&nbsp;<br>Perhaps because the process was about to expire its slice when somebody barged in and stole its share and also overshot the stipulated time(may be very less though). <br><br>Can you help me in clearing this? 
<br></div><br><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
 &gt; &gt; &gt; Doesn&#39;t it run in current process&#39;s context ?<br>&gt; &gt; &gt;<br>&gt; &gt;<br>&gt; &gt; No. I think the concept of process context is a higher-level logical<br>&gt; &gt; concept. Though the interrupt share stack with the interrupted 
<br>&gt; &gt; process, in my opinion it logically does not share the context with<br>&gt; &gt; the process.<br>&gt;<br>&gt; Yes, you are right as i can infer. thats why ISRs<br>&gt; are special kernel control paths.<br>&gt; But the poster asked, why can&#39;t we make ISRs to 
<br>&gt; share context with the interrupted process<br>&gt; if<br>&gt; it not holding any locks? This is rather a desing issues<br>&gt; IMO rather than imlementation, isnt it?<br>&gt;<br>&gt; I guess even if it is possible, it would over complicate the handler code. 
<br>&gt; Better trying to keep it simple i guess. Please CMIIW<br><br>My understanding is, the ISR is in different context from the process<br>because of the definition of term *context*. In my opinion, to say two<br>code pieces running in the same context means that two pieces of code 
<br>has some logical relationship to meet a common objective. That&#39;s why I<br>said *context* is a higher-level logical concept. It&#39;s not a concept<br>defined in the level of hardware or code implementation, but instead 
<br>in the level of logical. I think, by its definition, it makes no sense<br>to say an ISR share context with the process interrupted by it because<br>an ISR just randomly interrupts a process, with no logical<br>relationship.
</blockquote><div><br>Right&nbsp;agreed.&nbsp;&nbsp;</div></div><br>Thanks <br>~psr<br><br clear="all"><br>-- <br>play the game  

------=_Part_158813_5644331.1179216752720--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

