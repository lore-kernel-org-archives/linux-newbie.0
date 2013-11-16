From: Rajat Sharma <fs.rajat@gmail.com>
Subject: Re: Ordering / preemption of work in a workqueue preempt?
Date: Fri, 15 Nov 2013 17:01:49 -0800
Message-ID: <CAAYFAvqymyLw-jp8bk5c-S=zrXmcHzBGkbgF0J0ZpiGDnOSzrw@mail.gmail.com>
References: <834014ed7d7049668a1aa1e2e16d6e87@BLUPR05MB118.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============2740847570207420414=="
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
In-Reply-To: <834014ed7d7049668a1aa1e2e16d6e87@BLUPR05MB118.namprd05.prod.outlook.com>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>,
	<mailto:kernelnewbies-request@kernelnewbies.org?subject=unsubscribe>
List-Archive: <http://lists.kernelnewbies.org/pipermail/kernelnewbies>
List-Post: <mailto:kernelnewbies@kernelnewbies.org>
List-Help: <mailto:kernelnewbies-request@kernelnewbies.org?subject=help>
List-Subscribe: <http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>,
	<mailto:kernelnewbies-request@kernelnewbies.org?subject=subscribe>
Sender: kernelnewbies-bounces@kernelnewbies.org
Errors-To: kernelnewbies-bounces@kernelnewbies.org
To: Rajat Jain <rajatjain@juniper.net>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>

--===============2740847570207420414==
Content-Type: multipart/alternative; boundary=089e0158c8d60eb32e04eb40dc24

--089e0158c8d60eb32e04eb40dc24
Content-Type: text/plain; charset=ISO-8859-1

Hi Rajat,


On Fri, Nov 15, 2013 at 7:16 AM, Rajat Jain <rajatjain@juniper.net> wrote:

> Hi,
>
> I have a single work queue, on which I have scheduled a worker function
> [using queue_work(wq, fn)] in interrupt context.
>
> I get the interrupt twice before the work queue gets a chance to run, and
> hence the same function will get queued twice (with different private
> context - arguments etc) which is fine and expected.
>
> Questions:
>
> 1) Is it possible that the instance that was queued by 2nd interrupt, can
> get to run BEFORE the instance that was queued by 1st interrupt? In other
> words, is reordering possible?
>

It is unlikely as workqueue would have internal queing of tasks.


>
> 2) Is it possible that one running instance of the function, can get
> preempted by second instance of the same work queue? I read through
> http://lwn.net/Articles/511421/ and it talks about same work queue cannot
> run on different CPU, but I have doubt about single CPU. If If I am writing
> a worker function, does my code have to be ready that it can be preempted
> by another instance of the same function?
>
>
Do you mean the system has just one CPU, then there would be just one
worker thread in the workqueue which will pick up requests one by one. Do
you see multiple threads?


> Please note that I understand that my worker function can preempted by
> other processes, my doubts are related to the same workqueue.
>
> Thanks,
>
> Rajat
>
>
>
Rajat


> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
>

--089e0158c8d60eb32e04eb40dc24
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rajat,<br><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Fri, Nov 15, 2013 at 7:16 AM, Rajat Jain <span dir=3D"l=
tr">&lt;<a href=3D"mailto:rajatjain@juniper.net" target=3D"_blank">rajatjai=
n@juniper.net</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I have a single work queue, on which I have scheduled a worker function [us=
ing queue_work(wq, fn)] in interrupt context.<br>
<br>
I get the interrupt twice before the work queue gets a chance to run, and h=
ence the same function will get queued twice (with different private contex=
t - arguments etc) which is fine and expected.<br>
<br>
Questions:<br>
<br>
1) Is it possible that the instance that was queued by 2nd interrupt, can g=
et to run BEFORE the instance that was queued by 1st interrupt? In other wo=
rds, is reordering possible?<br></blockquote><div><br></div><div>It is unli=
kely as workqueue would have internal queing of tasks.<br>
</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
2) Is it possible that one running instance of the function, can get preemp=
ted by second instance of the same work queue? I read through <a href=3D"ht=
tp://lwn.net/Articles/511421/" target=3D"_blank">http://lwn.net/Articles/51=
1421/</a> and it talks about same work queue cannot run on different CPU, b=
ut I have doubt about single CPU. If If I am writing a worker function, doe=
s my code have to be ready that it can be preempted by another instance of =
the same function?<br>

<br></blockquote><div><br></div><div>Do you mean the system has just one CP=
U, then there would be just one worker thread in the workqueue which will p=
ick up requests one by one. Do you see multiple threads?<br></div><div>
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
Please note that I understand that my worker function can preempted by othe=
r processes, my doubts are related to the same workqueue.<br>
<br>
Thanks,<br>
<br>
Rajat<br>
<br>
<br></blockquote><div><br></div><div>Rajat<br></div><div>=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
_______________________________________________<br>
Kernelnewbies mailing list<br>
<a href=3D"mailto:Kernelnewbies@kernelnewbies.org">Kernelnewbies@kernelnewb=
ies.org</a><br>
<a href=3D"http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies" t=
arget=3D"_blank">http://lists.kernelnewbies.org/mailman/listinfo/kernelnewb=
ies</a><br>
</blockquote></div><br></div></div>

--089e0158c8d60eb32e04eb40dc24--


--===============2740847570207420414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Kernelnewbies mailing list
Kernelnewbies@kernelnewbies.org
http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

--===============2740847570207420414==--

