From: "Ricardo Maraschini" <xrmarsx@gmail.com>
Subject: Re: preempt_disable() - disables preemption on all processors?
Date: Fri, 28 Sep 2007 14:42:05 -0300
Message-ID: <499b283a0709281042h2dd83b99j47420012aa7bd92@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B06536E77@GDCMX01.igglobal.com>
	 <f284c33d0709281021x3edf2227r2ebbd5524785a7e8@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2729_8191295.1191001325272"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:references;
        bh=0RRkyTo/gSjb8XVyXOjcingffSaJlDHFg26W2y/9Ed0=;
        b=T62+cgk/FEDWmbsQH/+8cnlH1IsFjx7V/sPmOPxRhnJDR62/O+FulE5pHSA2WjQ2fwWrND1Nq0hgMaEF+jqIEZJ9cw/lKRbOjAVOk0lqXhj8o0cvtPwOX4eL2oMpaXkNNXxZP9TgI9bOLf5AJMX2QjRu1Xk6yKX/wx3LxFNVwRs=
In-Reply-To: <f284c33d0709281021x3edf2227r2ebbd5524785a7e8@mail.gmail.com>
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
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

------=_Part_2729_8191295.1191001325272
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

And the get_cpu() ? Its not supposed to disable preemption in all cpus?
from include/linux/smp.h:

#define get_cpu()               ({ preempt_disable(); smp_processor_id(); })

rjm;

On 9/28/07, Mulyadi Santosa <mulyadi.santosa@gmail.com> wrote:
>
> HI...
> > Does the preempt_disable() disable preemption on all the processors or
> just the current processor?
>
> Fast check on schedule() code makes me believe it just disables the
> preemption on current processor which call preempt_disable().
>
> regards,
>
> Mulyadi
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>

------=_Part_2729_8191295.1191001325272
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

And the get_cpu() ? Its not supposed to disable preemption in all cpus?<br>from include/linux/smp.h:<br><br>#define get_cpu()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ({ preempt_disable(); smp_processor_id(); })<br><br>rjm;<br><br><div><span class="gmail_quote">
On 9/28/07, <b class="gmail_sendername">Mulyadi Santosa</b> &lt;<a href="mailto:mulyadi.santosa@gmail.com">mulyadi.santosa@gmail.com</a>&gt; wrote:</span><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
HI...<br>&gt; Does the preempt_disable() disable preemption on all the processors or just the current processor?<br><br>Fast check on schedule() code makes me believe it just disables the<br>preemption on current processor which call preempt_disable().
<br><br>regards,<br><br>Mulyadi<br><br>--<br>To unsubscribe from this list: send an email with<br>&quot;unsubscribe kernelnewbies&quot; to <a href="mailto:ecartis@nl.linux.org">ecartis@nl.linux.org</a><br>Please read the FAQ at 
<a href="http://kernelnewbies.org/FAQ">http://kernelnewbies.org/FAQ</a><br><br></blockquote></div><br>

------=_Part_2729_8191295.1191001325272--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

