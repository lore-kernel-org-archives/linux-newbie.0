From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 10:47:54 +0530
Message-ID: <366312910705142217geba69dbm98a6c0bf2aabb937@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_157389_2355371.1179206274153"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=Ue1Ss41EAXCzYjYGy2vLtuYdySVWudqqEsjdoyOSjP9+1jnSjGddEInog4SWjqIrSt/SMTSbXl13YL2CcZTYTzUe9V2ggiD4sHqsbJoblUtZofDJceHwUPBesdGdUiW/R6d3e+Th1LQLKz2uwhjbk2BmmrY/OwpTAABDggX+/HE=
In-Reply-To: <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
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
To: Bahadir Balban <bahadir.balban@gmail.com>
Cc: Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

------=_Part_157389_2355371.1179206274153
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 5/14/07, Bahadir Balban <bahadir.balban@gmail.com> wrote:
>
> On 5/14/07, Learning Linux <learninglinux4@gmail.com> wrote:
> > Ok, but how about an ISR, that does not take any locks? Why can't we
> > sleep in SUCH an ISR?
> > LL
> > -
>
> The killer reason why you can't sleep in an interrupt is because an
> interrupt is not associated with any context in the first place.


good enough, but i have a query regarding this then.
On a 8K kernel stack system, doesn't interrupts share the stack associated
with the current process which was interrupted?
Doesn't interrupt steals the CPU slice time allocated to the running process
to run?
Doesn't it run in current process's context ?

What am i missing here?

Thanks
~psr

What
> is a context, then? It is the state information for a process. This
> includes the kernel and userspace stack pointers, the register set,
> and the page tables for that process. The scheduler has access to all
> this information, to preempt one process and run another. Contrary to
> this, an interrupt, depending on the version of your kernel and arch,
> uses a separate irq stack or the kernel stack of the interrupted
> process. An irq is not a context but merely a temporary execution to
> be concluded asap.
>
> Hope this helps,
> Bahadir
>



-- 
play the game

------=_Part_157389_2355371.1179206274153
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br><div><span class="gmail_quote">On 5/14/07, <b class="gmail_sendername">Bahadir Balban</b> &lt;<a href="mailto:bahadir.balban@gmail.com">bahadir.balban@gmail.com</a>&gt; wrote:</span><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
On 5/14/07, Learning Linux &lt;<a href="mailto:learninglinux4@gmail.com">learninglinux4@gmail.com</a>&gt; wrote:<br>&gt; Ok, but how about an ISR, that does not take any locks? Why can&#39;t we<br>&gt; sleep in SUCH an ISR?
<br>&gt; LL<br>&gt; -<br><br>The killer reason why you can&#39;t sleep in an interrupt is because an<br>interrupt is not associated with any context in the first place.</blockquote><div><br>good&nbsp;enough,&nbsp;but&nbsp;i&nbsp;have&nbsp;a&nbsp;query&nbsp;regarding&nbsp;this&nbsp;then.
<br>On&nbsp;a&nbsp;8K&nbsp;kernel stack&nbsp;system, doesn&#39;t interrupts share the stack associated with the current process which was interrupted? <br>Doesn&#39;t interrupt steals the CPU slice time allocated to the running process to run? 
<br>Doesn&#39;t it run in current process&#39;s context ? <br><br>What am i missing here? <br><br>Thanks <br>~psr<br></div><br><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
 What<br>is a context, then? It is the state information for a process. This<br>includes the kernel and userspace stack pointers, the register set,<br>and the page tables for that process. The scheduler has access to all<br>
this information, to preempt one process and run another. Contrary to<br>this, an interrupt, depending on the version of your kernel and arch,<br>uses a separate irq stack or the kernel stack of the interrupted<br>process. An irq is not a context but merely a temporary execution to
<br>be concluded asap.<br><br>Hope this helps,<br>Bahadir<br></blockquote></div><br><br clear="all"><br>-- <br>play the game 

------=_Part_157389_2355371.1179206274153--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

