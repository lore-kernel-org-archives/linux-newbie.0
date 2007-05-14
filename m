From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 12:40:14 +0530
Message-ID: <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_143789_22170823.1179126614873"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=NO6DVaoevk3aBzcSvoQI2n+Hbkg0VbO9etjpDqOmU4sMU7Btcr2FI/Tjj74bRnIfxuUo00T7NCc37ghHwdkm3xdm0WvpLNPJDBcy5nkomixNfc2oU3SsocdREmNi7hiqbNA+G/4jP6A3aYG/H9qvin9dwuCeOTS9XcC1/wpmnso=
In-Reply-To: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
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
To: Learning Linux <learninglinux4@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

------=_Part_143789_22170823.1179126614873
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 5/14/07, Learning Linux <learninglinux4@gmail.com> wrote:
>
> I have a very basic doubt here ... what makes it impossible to sleep
> in an ISR? I mean, I know that the kernel preemption is disabled and
> the kernel will panic, but I could not understand why?


Because the interrupt which you are serving in the ISR has been masked
to avoid preemption(
true for maskable inetrrupts ).Any locks you are holding in ISR are now with
you solely. So, if you try to sleep you take the locks
you untill you are rescheduled and complete. This may lead to a
deadlock for the lock resource.

Thus to avoid this, kernel developers disable preemption and also on every
schedule check if you are *in_interrupt*, if you are, you are probably doing
something really bad.So its better to panic in such case.

This is my naive understanding.
Please CMIIW.

Thanks

TIA,
>
> LL
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


-- 
play the game

------=_Part_143789_22170823.1179126614873
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br><div><span class="gmail_quote">On 5/14/07, <b class="gmail_sendername">Learning Linux</b> &lt;<a href="mailto:learninglinux4@gmail.com">learninglinux4@gmail.com</a>&gt; wrote:</span><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
I have a very basic doubt here ... what makes it impossible to sleep<br>in an ISR? I mean, I know that the kernel preemption is disabled and<br>the kernel will panic, but I could not understand why?</blockquote><div><br>Because&nbsp;the&nbsp;interrupt&nbsp;which&nbsp;you&nbsp;are&nbsp;serving&nbsp;in&nbsp;the&nbsp;ISR&nbsp;has&nbsp;been&nbsp;masked&nbsp;to&nbsp;avoid&nbsp;preemption( true for maskable inetrrupts ).Any locks you are holding in ISR are now with you solely. So, if you try to sleep you take the locks you&nbsp;untill&nbsp;you&nbsp;are&nbsp;rescheduled&nbsp;and&nbsp;complete.&nbsp;This&nbsp;may&nbsp;lead&nbsp;to&nbsp;a&nbsp;deadlock&nbsp;for&nbsp;the&nbsp;lock&nbsp;resource. 
<br>Thus to avoid this, kernel developers disable preemption and also on every schedule check if you are *in_interrupt*, if you are, you are probably doing something really bad.So its better to panic in such case.<br><br>
This is my naive understanding.<br>Please CMIIW.<br><br>Thanks<br> </div><br><blockquote class="gmail_quote" style="margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; margin-left: 0.80ex; border-left-color: #cccccc; border-left-width: 1px; border-left-style: solid; padding-left: 1ex">
TIA,<br><br>LL<br><br>--<br>To unsubscribe from this list: send an email with<br>&quot;unsubscribe kernelnewbies&quot; to <a href="mailto:ecartis@nl.linux.org">ecartis@nl.linux.org</a><br>Please read the FAQ at <a href="http://kernelnewbies.org/FAQ">
http://kernelnewbies.org/FAQ</a><br><br></blockquote></div><br><br clear="all"><br>-- <br>play the game 

------=_Part_143789_22170823.1179126614873--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

