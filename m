From: "Adil Mujeeb" <mujeeb.adil@gmail.com>
Subject: Re: reason for code like this: "do { something } while (0)"
Date: Mon, 15 May 2006 19:07:58 +0900
Message-ID: <b441a9e50605150307o113be1fcsa08c0565d255a8b9@mail.gmail.com>
References: <b115cb5f0605150248s1444b7c1wf43a1517eb96130e@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_10341_33082120.1147687678296"
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <b115cb5f0605150248s1444b7c1wf43a1517eb96130e@mail.gmail.com>
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
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

------=_Part_10341_33082120.1147687678296
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On 5/15/06, Rajat Jain <rajat.noida.india@gmail.com> wrote:
>
> Hi,
>
> I'm asking a pretty amateur question.
>
> I've come accross code like this huge number of times in the kernel:
>
> #define __set_task_state(tsk, state_value)              \
>        do { (tsk)->state =3D (state_value); } while (0)
>
> What is the reason to use do while loop if it is only meant to be
> executed just once? Why not a simple:
>
> #define __set_task_state(tsk, state_value)              \
>        { (tsk)->state =3D (state_value); }
>
> TIA,
>
> Rajat
>
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>
See this
http://kernelnewbies.org/FAQ/DoWhile0

Rgds,
Adil

------=_Part_10341_33082120.1147687678296
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<br><br>
<div><span class=3D"gmail_quote">On 5/15/06, <b class=3D"gmail_sendername">=
Rajat Jain</b> &lt;<a href=3D"mailto:rajat.noida.india@gmail.com">rajat.noi=
da.india@gmail.com</a>&gt; wrote:</span>
<blockquote class=3D"gmail_quote" style=3D"PADDING-LEFT: 1ex; MARGIN: 0px 0=
px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">Hi,<br><br>I'm asking a pretty a=
mateur question.<br><br>I've come accross code like this huge number of tim=
es in the kernel:
<br><br>#define __set_task_state(tsk, state_value)&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<br>&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; do { (tsk)-&gt;state =3D (state_value); } while (=
0)<br><br>What is the reason to use do while loop if it is only meant to be=
<br>executed just once? Why not a simple:
<br><br>#define __set_task_state(tsk, state_value)&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<br>&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; { (tsk)-&gt;state =3D (state_value); }<br><br>TIA=
,<br><br>Rajat<br><br>--<br>Kernelnewbies: Help each other learn about the =
Linux kernel.<br>Archive:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=20
<a href=3D"http://mail.nl.linux.org/kernelnewbies/">http://mail.nl.linux.or=
g/kernelnewbies/</a><br>FAQ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; <a href=3D"http://kernelnewbies.org/faq/">http://kernelnewbie=
s.org/faq/</a><br><br></blockquote></div>
<div><br>See this</div>
<div><a href=3D"http://kernelnewbies.org/FAQ/DoWhile0">http://kernelnewbies=
.org/FAQ/DoWhile0</a></div>
<div>&nbsp;</div>
<div>Rgds,</div>
<div>Adil</div>

------=_Part_10341_33082120.1147687678296--

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

