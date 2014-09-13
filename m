From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: x86_64_defconfig and i386_defconfig: What is the difference?
Date: Sat, 13 Sep 2014 09:10:28 +0800
Message-ID: <CAHnt0GV2v8sekptLuYj+j6-+yEe6iqXiU_nNMd=4iNO3oxVrGQ@mail.gmail.com>
References: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0826999715428507123=="
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
In-Reply-To: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
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
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@kernelnewbies.org>

--===============0826999715428507123==
Content-Type: multipart/alternative; boundary=089e0115f0023ffe6e0502e8113b

--089e0115f0023ffe6e0502e8113b
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 9, 2014 at 3:58 PM, Rajat Jain <rajatjain@juniper.net> wrote:

> Hi,
>
> Can someone tell me if the i386 one is to be used when we want to build
> for a 32bit machine and the x86_64 is to be used for 64 bit machine?
>


i386 or 32-bit machines?   i think it don't exists anymore, but what likely
is correct: i386-compatible machine.

The i386 config is for 32-bit OS, ie, the entire binaries must be build for
32-bit architecture.

So choose the correct config provided u have the correct userspace
files/libraries to support it.


>
> Thanks,
>
> Rajat
>
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
>



-- 
Regards,
Peter Teoh

--089e0115f0023ffe6e0502e8113b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Sep 9, 2014 at 3:58 PM, Rajat Jain <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:rajatjain@juniper.net" target=3D"_blank">rajatjain@juniper.net<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex">Hi,<br>
<br>
Can someone tell me if the i386 one is to be used when we want to build for=
 a 32bit machine and the x86_64 is to be used for 64 bit machine?<br></bloc=
kquote><div><br></div><div><br></div>i386 or 32-bit machines? =C2=A0 i thin=
k it don&#39;t exists anymore, but what likely is correct: i386-compatible =
machine.<div><br></div><div>The i386 config is for 32-bit OS, ie, the entir=
e binaries must be build for 32-bit architecture.</div><div><br></div><div>=
So choose the correct config provided u have the correct userspace files/li=
braries to support it.</div><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-col=
or:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
<br>
Thanks,<br>
<br>
Rajat<br>
<br>
_______________________________________________<br>
Kernelnewbies mailing list<br>
<a href=3D"mailto:Kernelnewbies@kernelnewbies.org">Kernelnewbies@kernelnewb=
ies.org</a><br>
<a href=3D"http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies" t=
arget=3D"_blank">http://lists.kernelnewbies.org/mailman/listinfo/kernelnewb=
ies</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Regards,<br>=
Peter Teoh
</div></div>

--089e0115f0023ffe6e0502e8113b--


--===============0826999715428507123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Kernelnewbies mailing list
Kernelnewbies@kernelnewbies.org
http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

--===============0826999715428507123==--

