From: "Ratnadeep Joshi" <ratn.josh@gmail.com>
Subject: Re: notifier_chain_register semantics query!!!
Date: Thu, 17 May 2007 21:10:37 +0530
Message-ID: <4bcb1f700705170840w7283dd77s1750d9b156786dd7@mail.gmail.com>
References: <366312910705072208t6851aff8ha85579d5a0ee0422@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_45337_25662827.1179416437564"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=nMX7DmxosLvq0l4xGTIgzdnciauN1REZNc/aePqTbQnExHXlrt65s5MQe/dF/9cob+KjE1Ic9tYh976kujR5PRM1OniHBFQi7vZ35eLON20tFd68h1ZHK7FmXIZCxIfU5WLi3tKv3zQFWQCZ5XfwVZvwkI3JXEdtBXj1mIVP4tw=
In-Reply-To: <366312910705072208t6851aff8ha85579d5a0ee0422@mail.gmail.com>
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
To: pradeep singh <2500.pradeep@gmail.com>
Cc: Linux Newbies <kernelnewbies@nl.linux.org>, net-linux <linux-net@vger.kernel.org>, newbie <linux-newbie@vger.kernel.org>

------=_Part_45337_25662827.1179416437564
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

>  All,
>
> Following definition of notifier_chain_register is from kernel/sys.c
> and for kernel 2.6.20.1 .
>
> static int notifier_chain_register(struct notifier_block **nl,
>                 struct notifier_block *n)
> {
>         while ((*nl) != NULL) {
>                 if (n->priority > (*nl)->priority)
>                         break;
>                 nl = &((*nl)->next);
>         }
>         n->next = *nl;
>         rcu_assign_pointer(*nl, n);
>         return 0;
> }
>
> Since the first parameter is passed as a double ptr, the pointer
> itself is changed by the traversal and by rcu_assign_pointer(*nl, n) ,
> right? And the new value will be address of notifier_block n. This
> means the new head of the notifier list is n with the highest
> priority( in terms of magnitude atleast ).


Nopes. If you observe closely, *nl (head) is never touched. It is the nl
that is changed.

Say,
head = 1000
nl = 5000 (&head)

So, first nl = 5000. Then nl = &(head->next) that will be 1004 (address of
'next' element of the structure)
and so on.
So, 'head' is never touched.

Regards,
- Ratnadeep

My query is ,why are we loosing the notifiers  during traversal in the
> first while loop, which have a priority > n->priority ?
>
> I am terribly confused here.
> Can somebody help me out here?
>
> Thank you
> ~psr
>
> --
> play the game
>

------=_Part_45337_25662827.1179416437564
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">&nbsp;All,<br><br>Following definition of notifier_chain_register is from kernel/sys.c<br>
and for kernel <a href="http://2.6.20.1">2.6.20.1</a> .<br><br>static int notifier_chain_register(struct notifier_block **nl,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct notifier_block *n)<br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while ((*nl) != NULL) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (n-&gt;priority &gt; (*nl)-&gt;priority)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nl = &amp;((*nl)-&gt;next);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n-&gt;next = *nl;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rcu_assign_pointer(*nl, n);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;<br>}<br><br>Since the first parameter is passed as a double ptr, the pointer
<br>itself is changed by the traversal and by rcu_assign_pointer(*nl, n) ,<br>right? And the new value will be address of notifier_block n. This<br>means the new head of the notifier list is n with the highest<br>priority( in terms of magnitude atleast ).
</blockquote><div><br>Nopes. If you observe closely, *nl (head) is never touched. It is the nl that is changed. <br><br>Say,<br>head = 1000<br>nl = 5000 (&amp;head)<br><br>So, first nl = 5000. Then nl = &amp;(head-&gt;next) that will be 1004 (address of &#39;next&#39; element of the structure)
<br>and so on.<br>So, &#39;head&#39; is never touched.<br><br>Regards,<br>- Ratnadeep<br><br></div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
My query is ,why are we loosing the notifiers&nbsp;&nbsp;during traversal in the<br>first while loop, which have a priority &gt; n-&gt;priority ?<br><br>I am terribly confused here.<br>Can somebody help me out here?<br><br>Thank you
<br>~psr<br><br>--<br>play the game<br></blockquote></div>

------=_Part_45337_25662827.1179416437564--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

