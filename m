From: Siddu <siddu.sjce@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Wed, 21 Oct 2009 11:09:01 +0530
Message-ID: <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=0016367b6b3660440104766b6564
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=TuRgmMldaYJ9ehDHVm0HFaCe3OOyYs6Bc9M90RpwOZg=;
        b=Rs9HqhLRELRl7dA74PVWdkTN9gUgOqPlTxZXaObWn69vDUnVAfLNFuxhlmsK+bCo3U
         vmFYMti+DzoK7FovOgzTRaQjRvpRWwdY9HjoWcLYEmrU/VGlIt/8obaZHnq/4u78FAJj
         /PO347hyHoMb7BtM+adsd8jLv1ECo9ix5Pkig=
In-Reply-To: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
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
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

--0016367b6b3660440104766b6564
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 21, 2009 at 8:32 AM, Rick Brown <rick.brown.3@gmail.com> wrote:

> Hi,
>
> Firstly, I'm trying to understand what exactly characterizes a
> procesor or an operating system as 32bit / 64 bit. I've read that it
> means the "native word size" of a machine. But what exactly is that?
> Register size? Address bus size? Anything else?
>
>
When they say its 32/64 bit machine its the capability of the system or
processor to process so many bits at once !



> Secondly, I'm trying to understand what exactly does a sizeof(int)
> depend on when we say it is "platform specific". Is it dependent of
> compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the
> processor being 32 / 64 bit?
>
> its dependent on processor being 32/64 bit

Lastly, How are "sizes" of compiler / OS / processor inter related?
> Here is my understanding. A 32 bit processor can only be running a 32
> bit OS.


No ... 32 bit OS can run anything <= 32 bit


> A 64 bit processor may run a 32 or a 64 bit OS.


yes thats right !


> A 32 bit
> compiler genrates code only to be run on a 32 bit OS; ditto for 64
> bit.


Not sure about this let others have their say !

> Is this right?
>
>
Please correct me if i am wrong !

> TIA,
>
> Rick
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


-- 
Regards,
~Sid~
I have never met a man so ignorant that i couldn't learn something from him

--0016367b6b3660440104766b6564
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Oct 21, 2009 at 8:32 AM, Rick Br=
own <span dir=3D"ltr">&lt;<a href=3D"mailto:rick.brown.3@gmail.com">rick.br=
own.3@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8=
ex; padding-left: 1ex;">
Hi,<br>
<br>
Firstly, I&#39;m trying to understand what exactly characterizes a<br>
procesor or an operating system as 32bit / 64 bit. I&#39;ve read that it<br=
>
means the &quot;native word size&quot; of a machine. But what exactly is th=
at?<br>
Register size? Address bus size? Anything else?<br>
<br></blockquote><div><br>When they say its 32/64 bit machine its the capab=
ility of the system or processor to process so many bits at once !<br><br>=
=A0<br></div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px so=
lid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">

Secondly, I&#39;m trying to understand what exactly does a sizeof(int)<br>
depend on when we say it is &quot;platform specific&quot;. Is it dependent =
of<br>
compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the<br>
processor being 32 / 64 bit?<br>
<br></blockquote><div>its dependent on processor being 32/64 bit<br><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(20=
4, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Lastly, How are &quot;sizes&quot; of compiler / OS / processor inter relate=
d?<br>
Here is my understanding. A 32 bit processor can only be running a 32<br>
bit OS.</blockquote><div><br>No ... 32 bit OS can run anything &lt;=3D 32 b=
it<br>=A0</div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px =
solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"> A=
 64 bit processor may run a 32 or a 64 bit OS.</blockquote>
<div><br>yes thats right !<br>=A0<br></div><blockquote class=3D"gmail_quote=
" style=3D"border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0=
.8ex; padding-left: 1ex;"> A 32 bit<br>
compiler genrates code only to be run on a 32 bit OS; ditto for 64<br>
bit. </blockquote><div><br>Not sure about this let others have their say ! =
<br></div><blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid=
 rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Is this=
 right?<br>

<br></blockquote><div><br>Please correct me if i am wrong ! <br></div><bloc=
kquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, 204, =
204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
TIA,<br>
<br>
Rick<br>
<font color=3D"#888888"><br>
--<br>
To unsubscribe from this list: send an email with<br>
&quot;unsubscribe kernelnewbies&quot; to <a href=3D"mailto:ecartis@nl.linux=
.org">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href=3D"http://kernelnewbies.org/FAQ" target=3D"_=
blank">http://kernelnewbies.org/FAQ</a><br>
<br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br>Regards,<br>~Sid=
~<br>I have never met a man so ignorant that i couldn&#39;t learn something=
 from him <br><br>

--0016367b6b3660440104766b6564--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

