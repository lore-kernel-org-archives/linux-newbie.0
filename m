From: Ryan Moore <dogen.growkin@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Wed, 21 Oct 2009 00:36:51 -0600
Message-ID: <dcd1b8c50910202336s220cd299tb986ae651eaabdc3@mail.gmail.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
	 <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com>
	 <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=001485f6d0003802f304766c346c
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=RDmnKC2TaIe0NlMg0SqvMbfm4ppYSuiV9SEvY60548g=;
        b=Ws/CSQh3Ww2rDDl9kKqIaMhf7VGKEnaaGnO0di94dEuEowoLeM4YR+uvNx2wHTuLsO
         Ytfk6bOMtPDgUORNG68yzYLP5UVpRHIO3nbqMri/WrW7aeFZGSP//TbynlY/glGJ9RkP
         w1K9wJNEdRpFXMEgoykXegc9ku25ccGaHEaUU=
In-Reply-To: <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com>
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
To: =?UTF-8?B?55uK54mZ?= <simonyanix@gmail.com>
Cc: Siddu <siddu.sjce@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

--001485f6d0003802f304766c346c
Content-Type: text/plain; charset=Big5
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2009 at 12:02 AM, =AFq=A4=FA <simonyanix@gmail.com> wrote:

>
> On Oct 21, 2009, at 1:39 PM, Siddu wrote:
>
>
>>
>> On Wed, Oct 21, 2009 at 8:32 AM, Rick Brown <rick.brown.3@gmail.com>
>> wrote:
>> Hi,
>>
>> Firstly, I'm trying to understand what exactly characterizes a
>> procesor or an operating system as 32bit / 64 bit. I've read that it
>> means the "native word size" of a machine. But what exactly is that?
>> Register size? Address bus size? Anything else?
>>
>>
>> When they say its 32/64 bit machine its the capability of the system or
>> processor to process so many bits at once !
>>
>
> I had an understanding of this being how many bits you have to address yo=
ur
> RAM.
>
>>
>>
This is true, but it is also your instruction size.  So the native machine
code can be 64 bits on a 64bit processor.
- Show quoted text -

>
>> Secondly, I'm trying to understand what exactly does a sizeof(int)
>> depend on when we say it is "platform specific". Is it dependent of
>> compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the
>> processor being 32 / 64 bit?
>>
>> its dependent on processor being 32/64 bit
>>
>
> Just did a comparison test but it tells me otherwise. But I'm not sure if
> the test case if correct, can someone improve it?
> On a 64bit CentOS:
> [root@yyan ~]# more test.c
> #include <stdio.h>
>
> int main ()
> {
>    printf ("%d\n", sizeof(int));
>    return 0;
> }
> [root@yyan ~]# gcc test.c
> [root@yyan ~]# ./a.out
> 4
> [root@yyan ~]# uname -a
> Linux yyan.pmlab.com 2.6.18-128.el5 #1 SMP Wed Jan 21 10:41:14 EST 2009
> x86_64 x86_64 x86_64 GNU/Linux
> [root@yyan ~]#
>
> On my Leopard: (Hopefully it's a 32bit OS as it shows)
> simonmac:coding yansimon$ cat test.c
> #include <stdio.h>
>
> int main ()
> {
>    printf ("%d\n", sizeof(int));
>    return 0;
> }
> simonmac:coding yansimon$ gcc test.c
> simonmac:coding yansimon$ ./a.out
> 4
> simonmac:coding yansimon$ uname -a
> Darwin simonmac.local 9.8.0 Darwin Kernel Version 9.8.0: Wed Jul 15
> 16:55:01 PDT 2009; root:xnu-1228.15.4~1/RELEASE_I386 i386
> simonmac:coding yansimon$
>
>
>
>> Lastly, How are "sizes" of compiler / OS / processor inter related?
>> Here is my understanding. A 32 bit processor can only be running a 32
>> bit OS.
>>
>> No ... 32 bit OS can run anything <=3D 32 bit
>>
>> A 64 bit processor may run a 32 or a 64 bit OS.
>>
>> yes thats right !
>>
>> A 32 bit
>> compiler genrates code only to be run on a 32 bit OS; ditto for 64
>> bit.
>>
>> Not sure about this let others have their say !
>> Is this right?
>>
>>
This is dependent on the compiler, or at least the compiler options.  This
is due to the machine code that the compiler generates.

ie.  The difference between x86 machine code and ia64 machine code.


>
>> Please correct me if i am wrong !
>> TIA,
>>
>> Rick
>>
>> --
>> To unsubscribe from this list: send an email with
>> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>> Please read the FAQ at http://kernelnewbies.org/FAQ
>>
>>
>>
>>
>> --
>> Regards,
>> ~Sid~
>> I have never met a man so ignorant that i couldn't learn something from
>> him
>>
>>
> --
> =AFq=A4=FA
>
> http://www.google.com/profiles/simonyanix
>
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>

--001485f6d0003802f304766c346c
Content-Type: text/html; charset=Big5
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div class=3D"im">On Wed, Oct 21, 2009 at 12:02 =
AM, =AFq=A4=FA <span dir=3D"ltr">&lt;<a href=3D"mailto:simonyanix@gmail.com=
" target=3D"_blank">simonyanix@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, 204, 204)=
; margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">

<div><br>
On Oct 21, 2009, at 1:39 PM, Siddu wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, =
204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
<br>
<br>
On Wed, Oct 21, 2009 at 8:32 AM, Rick Brown &lt;<a href=3D"mailto:rick.brow=
n.3@gmail.com" target=3D"_blank">rick.brown.3@gmail.com</a>&gt; wrote:<br>
Hi,<br>
<br>
Firstly, I&#39;m trying to understand what exactly characterizes a<br>
procesor or an operating system as 32bit / 64 bit. I&#39;ve read that it<br=
>
means the &quot;native word size&quot; of a machine. But what exactly is th=
at?<br>
Register size? Address bus size? Anything else?<br>
<br>
<br>
When they say its 32/64 bit machine its the capability of the system or pro=
cessor to process so many bits at once !<br>
</blockquote>
<br></div>
I had an understanding of this being how many bits you have to address your=
 RAM.<br>
<div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(=
204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
<br></blockquote></div></blockquote></div><div><br>This is true, but it is =
also your instruction size.&nbsp; So the native machine code can be 64 bits=
 on a 64bit processor. <br></div><div><div><span id=3D"q_12475e02705f4984_3=
" class=3D"h4">- Show quoted text -</span></div>
<div class=3D"h5"><blockquote class=3D"gmail_quote" style=3D"border-left: 1=
px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"=
>
<div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(=
204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
<br>
Secondly, I&#39;m trying to understand what exactly does a sizeof(int)<br>
depend on when we say it is &quot;platform specific&quot;. Is it dependent =
of<br>
compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the<br>
processor being 32 / 64 bit?<br>
<br>
its dependent on processor being 32/64 bit<br>
</blockquote>
<br></div>
Just did a comparison test but it tells me otherwise. But I&#39;m not sure =
if the test case if correct, can someone improve it?<br>
On a 64bit CentOS:<br>
[root@yyan ~]# more test.c<br>
#include &lt;stdio.h&gt;<br>
<br>
int main ()<br>
{<br>
 &nbsp; &nbsp;printf (&quot;%d\n&quot;, sizeof(int));<br>
 &nbsp; &nbsp;return 0;<br>
}<br>
[root@yyan ~]# gcc test.c<br>
[root@yyan ~]# ./a.out<br>
4<br>
[root@yyan ~]# uname -a<br>
Linux <a href=3D"http://yyan.pmlab.com/" target=3D"_blank">yyan.pmlab.com</=
a> 2.6.18-128.el5 #1 SMP Wed Jan 21 10:41:14 EST 2009 x86_64 x86_64 x86_64 =
GNU/Linux<br>
[root@yyan ~]#<br>
<br>
On my Leopard: (Hopefully it&#39;s a 32bit OS as it shows)<br>
simonmac:coding yansimon$ cat test.c<br>
#include &lt;stdio.h&gt;<br>
<br>
int main ()<br>
{<br>
 &nbsp; &nbsp;printf (&quot;%d\n&quot;, sizeof(int));<br>
 &nbsp; &nbsp;return 0;<br>
}<br>
simonmac:coding yansimon$ gcc test.c<br>
simonmac:coding yansimon$ ./a.out<br>
4<br>
simonmac:coding yansimon$ uname -a<br>
Darwin simonmac.local 9.8.0 Darwin Kernel Version 9.8.0: Wed Jul 15 16:55:0=
1 PDT 2009; root:xnu-1228.15.4~1/RELEASE_I386 i386<br>
simonmac:coding yansimon$<div><br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, =
204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
<br>
Lastly, How are &quot;sizes&quot; of compiler / OS / processor inter relate=
d?<br>
Here is my understanding. A 32 bit processor can only be running a 32<br>
bit OS.<br>
<br>
No ... 32 bit OS can run anything &lt;=3D 32 bit<br>
<br>
A 64 bit processor may run a 32 or a 64 bit OS.<br>
<br>
yes thats right !<br>
<br>
A 32 bit<br>
compiler genrates code only to be run on a 32 bit OS; ditto for 64<br>
bit.<br>
<br>
Not sure about this let others have their say !<br>
Is this right?<br>
<br></blockquote></div></blockquote></div></div><div><br>This is
dependent on the compiler, or at least the compiler options.&nbsp; This is
due to the machine code that the compiler generates.<br><br>ie.&nbsp; The d=
ifference between x86 machine code and ia64 machine code.<br>
&nbsp;</div><div class=3D"im"><blockquote class=3D"gmail_quote" style=3D"bo=
rder-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding=
-left: 1ex;"><div><blockquote class=3D"gmail_quote" style=3D"border-left: 1=
px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"=
>


<br>
Please correct me if i am wrong !<br>
TIA,<br>
<br>
Rick<br>
<br>
--<br>
To unsubscribe from this list: send an email with<br>
&quot;unsubscribe kernelnewbies&quot; to <a href=3D"mailto:ecartis@nl.linux=
.org" target=3D"_blank">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=3D"_=
blank">http://kernelnewbies.org/FAQ</a><br>
<br>
<br>
<br>
<br>
-- <br>
Regards,<br>
~Sid~<br>
I have never met a man so ignorant that i couldn&#39;t learn something from=
 him<br>
<br>
</blockquote>
<br></div><font color=3D"#888888">
--<br>
=AFq=A4=FA<br>
<br>
<a href=3D"http://www.google.com/profiles/simonyanix" target=3D"_blank">htt=
p://www.google.com/profiles/simonyanix</a></font><div><div><br>
<br>
<br>
--<br>
To unsubscribe from this list: send an email with<br>
&quot;unsubscribe kernelnewbies&quot; to <a href=3D"mailto:ecartis@nl.linux=
.org" target=3D"_blank">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=3D"_=
blank">http://kernelnewbies.org/FAQ</a><br>
<br>
</div></div></blockquote></div></div>

--001485f6d0003802f304766c346c--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

