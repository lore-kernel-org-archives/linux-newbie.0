From: Chetan Nanda <chetannanda@gmail.com>
Subject: Re: How to find out which part of code is changing a particular data
	structure.
Date: Fri, 8 Nov 2013 09:01:56 +0530
Message-ID: <CAPrYoTG7asmh_Vr-Fr758n17mYtjXms7jjfLECiPuy9xD+DUrw@mail.gmail.com>
References: <70853dc9fbf84454b3db81630a6ce99e@BLUPR05MB118.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============3266943605726520100=="
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
In-Reply-To: <70853dc9fbf84454b3db81630a6ce99e@BLUPR05MB118.namprd05.prod.outlook.com>
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

--===============3266943605726520100==
Content-Type: multipart/alternative; boundary=047d7b5d500836958d04eaa206b3

--047d7b5d500836958d04eaa206b3
Content-Type: text/plain; charset=ISO-8859-1

You may attach debugger (like Lauterbach) and use its data breakpoint
functionality.

Thanks,
Chetan Nanda


On Fri, Nov 8, 2013 at 6:16 AM, Rajat Jain <rajatjain@juniper.net> wrote:

> Hi folks,
>
> I have a memory location (One of the fields in a kernel data structure)
> and I want to track down the code that changes the value of that particular
> location. Some thing like a "watchpoint".
>
> And this is early while I am still booting up. Can some one tell me if it
> is possible to do so?
>
> Thanks,
>
> Rajat
>
>
>
>
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
>

--047d7b5d500836958d04eaa206b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>You may attach debugger (like Lauterbach) and us=
e its data breakpoint functionality. <br><br></div>Thanks,<br></div>Chetan =
Nanda<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote=
">On Fri, Nov 8, 2013 at 6:16 AM, Rajat Jain <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rajatjain@juniper.net" target=3D"_blank">rajatjain@juniper.net</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi folks,<br>
<br>
I have a memory location (One of the fields in a kernel data structure) and=
 I want to track down the code that changes the value of that particular lo=
cation. Some thing like a &quot;watchpoint&quot;.<br>
<br>
And this is early while I am still booting up. Can some one tell me if it i=
s possible to do so?<br>
<br>
Thanks,<br>
<br>
Rajat<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
Kernelnewbies mailing list<br>
<a href=3D"mailto:Kernelnewbies@kernelnewbies.org">Kernelnewbies@kernelnewb=
ies.org</a><br>
<a href=3D"http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies" t=
arget=3D"_blank">http://lists.kernelnewbies.org/mailman/listinfo/kernelnewb=
ies</a><br>
</blockquote></div><br></div>

--047d7b5d500836958d04eaa206b3--


--===============3266943605726520100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Kernelnewbies mailing list
Kernelnewbies@kernelnewbies.org
http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

--===============3266943605726520100==--

