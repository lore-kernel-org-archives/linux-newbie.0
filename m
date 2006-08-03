From: "Manoj Awasthi" <lkml.manoj@gmail.com>
Subject: Re: Reentrant code / Critical section / Atomic Section
Date: Wed, 2 Aug 2006 22:38:17 -0800
Message-ID: <fa2bedd60608022338lc1abb79u75846b0d600cf12d@mail.gmail.com>
References: <292693080608022312x710233f5w4545f223fa00f27f@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_3721_31876515.1154587097277"
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <292693080608022312x710233f5w4545f223fa00f27f@mail.gmail.com>
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
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

------=_Part_3721_31876515.1154587097277
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

>
>
> "Reentrant code" is a piece of code that could be simultaneously
> running by multiple threads of execution. (either via SMP, or via
> preemption on uniprocessor machines)


A piece of code is reentrant if, while it is being executed, it can be
re-invoked by itself, or by any other routine, by interrupting the present
execution for a while.

must satisfy conditions for 'reentrancy' of a code:

   1. It never modifies itself. That is, the instructions of the program
   are never changed. Period. Under any circumstances.
   2. Any variables changed by the routine must be allocated to a
   particular "instance" of the function's invocation. so if a function is
   called from three different threads then its data should get stored in three
   different areas of memory.
   (by avoiding global/static data access)


> In that sense "Reentrant Code" seems to be just the opposite of
> "Critical Section". Is this right?


No.

Thanks,
>
> Dan


thanks,
-Manoj

--
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>

------=_Part_3721_31876515.1154587097277
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"><br>&quot;Reentrant code&quot; is a piece of code that could be simultaneously<br>running by multiple threads of execution. (either via SMP, or via
<br>preemption on uniprocessor machines)</blockquote><div><br>
A piece of code is reentrant if, while it is being executed, it can
be re-invoked by itself, or by any other routine, by interrupting
the present execution for a while.<br><br>must satisfy conditions for 'reentrancy' of a code:<br><ol><li>It never modifies itself. That is, the instructions of the
program are never changed. Period. Under any circumstances.&nbsp;<br>
</li><li>Any variables changed by the routine must be allocated to
a particular &quot;instance&quot; of the function's invocation. so if a function is called from three different threads then its data should get stored in three different areas of memory. <br>(by avoiding global/static data access)
<br></li></ol></div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"><br>In that sense &quot;Reentrant Code&quot; seems to be just the opposite of
<br>&quot;Critical Section&quot;. Is this right?</blockquote><div><br>No.&nbsp; <br></div><br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Thanks,
<br><br>Dan</blockquote><div><br>thanks, <br>-Manoj <br> </div><br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">--<br>Kernelnewbies: Help each other learn about the Linux kernel.
<br>Archive:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://mail.nl.linux.org/kernelnewbies/">http://mail.nl.linux.org/kernelnewbies/</a><br>FAQ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://kernelnewbies.org/faq/">http://kernelnewbies.org/faq/</a><br><br></blockquote>
</div><br>

------=_Part_3721_31876515.1154587097277--

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

