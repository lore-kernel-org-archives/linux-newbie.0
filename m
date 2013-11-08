From: kiran kumar <akirank@yahoo.com>
Subject: Re: How to find out which part of code is changing a particular
	data	structure.
Date: Thu, 7 Nov 2013 23:23:18 -0800 (PST)
Message-ID: <1383895398.45469.YahooMailNeo@web142703.mail.bf1.yahoo.com>
References: <70853dc9fbf84454b3db81630a6ce99e@BLUPR05MB118.namprd05.prod.outlook.com>
	<CAPrYoTG7asmh_Vr-Fr758n17mYtjXms7jjfLECiPuy9xD+DUrw@mail.gmail.com>
Reply-To: kiran kumar <akirank@yahoo.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7019475565155039096=="
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
In-Reply-To: <CAPrYoTG7asmh_Vr-Fr758n17mYtjXms7jjfLECiPuy9xD+DUrw@mail.gmail.com>
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

--===============7019475565155039096==
Content-Type: multipart/alternative;
	boundary="1619090392-2060125666-1383895398=:45469"

--1619090392-2060125666-1383895398=:45469
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Rjat,=0ACan you define that location as read only(i.e constant)?. This i=
s only for debug prupose, later you can remove. =0AI am expecting kernel pa=
nic with this change. =0ARegards,=0AKiran=0A=0A=0A=0AOn Friday, 8 November =
2013, 9:03, Chetan Nanda <chetannanda@gmail.com> wrote:=0A  =0AYou may atta=
ch debugger (like Lauterbach) and use its data breakpoint functionality. =
=0A=0AThanks,=0AChetan Nanda=0A=0A=0A=0A=0AOn Fri, Nov 8, 2013 at 6:16 AM, =
Rajat Jain <rajatjain@juniper.net> wrote:=0A=0AHi folks,=0A>=0A>I have a me=
mory location (One of the fields in a kernel data structure) and I want to =
track down the code that changes the value of that particular location. Som=
e thing like a "watchpoint".=0A>=0A>And this is early while I am still boot=
ing up. Can some one tell me if it is possible to do so?=0A>=0A>Thanks,=0A>=
=0A>Rajat=0A>=0A>=0A>=0A>=0A>______________________________________________=
_=0A>Kernelnewbies mailing list=0A>Kernelnewbies@kernelnewbies.org=0A>http:=
//lists.kernelnewbies.org/mailman/listinfo/kernelnewbies=0A>=0A=0A=0A______=
_________________________________________=0AKernelnewbies mailing list=0AKe=
rnelnewbies@kernelnewbies.org=0Ahttp://lists.kernelnewbies.org/mailman/list=
info/kernelnewbies
--1619090392-2060125666-1383895398=:45469
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif;fo=
nt-size:8pt"><div><span>Hi Rjat,</span></div><div><span>Can you define that=
 location as read only(i.e constant)?. This is only for debug prupose, late=
r you can remove.</span></div><div><span></span> </div><div><span>I am expe=
cting kernel panic with this change.</span></div><div><span></span> </div><=
div><span>Regards,</span></div><div><span>Kiran</span></div><div style=3D"d=
isplay: block;" class=3D"yahoo_quoted"> <br> <br> <div style=3D"font-family=
: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Seri=
f; font-size: 8pt;"> <div style=3D"font-family: HelveticaNeue, Helvetica Ne=
ue, Helvetica, Arial, Lucida Grande, Sans-Serif; font-size: 12pt;"> <div di=
r=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Friday, 8 November 2013, 9:0=
3, Chetan Nanda &lt;chetannanda@gmail.com&gt; wrote:<br> </font> </div>  <d=
iv
 class=3D"y_msg_container"><div id=3D"yiv8635286618"><div><div dir=3D"ltr">=
<div><div>You may attach debugger (like Lauterbach) and use its data breakp=
oint functionality. <br clear=3D"none"><br clear=3D"none"></div>Thanks,<br =
clear=3D"none"></div>Chetan Nanda<br clear=3D"none"></div><div id=3D"yiv863=
5286618yqt03153" class=3D"yiv8635286618yqt6415020722"><div class=3D"yiv8635=
286618gmail_extra"><br clear=3D"none"><br clear=3D"none"><div class=3D"yiv8=
635286618gmail_quote">On Fri, Nov 8, 2013 at 6:16 AM, Rajat Jain <span dir=
=3D"ltr">&lt;<a href=3D"mailto:rajatjain@juniper.net" shape=3D"rect" rel=3D=
"nofollow" target=3D"_blank" ymailto=3D"mailto:rajatjain@juniper.net">rajat=
jain@juniper.net</a>&gt;</span> wrote:<br clear=3D"none">=0A<blockquote sty=
le=3D"margin: 0px 0px 0px 0.8ex; padding-left: 1ex; border-left-color: rgb(=
204, 204, 204); border-left-width: 1px; border-left-style: solid;" class=3D=
"yiv8635286618gmail_quote">Hi folks,<br clear=3D"none">=0A<br clear=3D"none=
">=0AI have a memory location (One of the fields in a kernel data structure=
) and I want to track down the code that changes the value of that particul=
ar location. Some thing like a "watchpoint".<br clear=3D"none">=0A<br clear=
=3D"none">=0AAnd this is early while I am still booting up. Can some one te=
ll me if it is possible to do so?<br clear=3D"none">=0A<br clear=3D"none">=
=0AThanks,<br clear=3D"none">=0A<br clear=3D"none">=0ARajat<br clear=3D"non=
e">=0A<br clear=3D"none">=0A<br clear=3D"none">=0A<br clear=3D"none">=0A<br=
 clear=3D"none">=0A_______________________________________________<br clear=
=3D"none">=0AKernelnewbies mailing list<br clear=3D"none">=0A<a href=3D"mai=
lto:Kernelnewbies@kernelnewbies.org" shape=3D"rect" rel=3D"nofollow" target=
=3D"_blank" ymailto=3D"mailto:Kernelnewbies@kernelnewbies.org">Kernelnewbie=
s@kernelnewbies.org</a><br clear=3D"none">=0A<a href=3D"http://lists.kernel=
newbies.org/mailman/listinfo/kernelnewbies" shape=3D"rect" rel=3D"nofollow"=
 target=3D"_blank">http://lists.kernelnewbies.org/mailman/listinfo/kernelne=
wbies</a><br clear=3D"none">=0A</blockquote></div><br clear=3D"none"></div>=
</div></div></div><br><div id=3D"yqt64304" class=3D"yqt6415020722">________=
_______________________________________<br clear=3D"none">Kernelnewbies mai=
ling list<br clear=3D"none"><a href=3D"mailto:Kernelnewbies@kernelnewbies.o=
rg" shape=3D"rect" ymailto=3D"mailto:Kernelnewbies@kernelnewbies.org">Kerne=
lnewbies@kernelnewbies.org</a><br clear=3D"none"><a href=3D"http://lists.ke=
rnelnewbies.org/mailman/listinfo/kernelnewbies" shape=3D"rect" target=3D"_b=
lank">http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies</a><br =
clear=3D"none"></div><br><br></div>  </div> </div>  </div> </div></body></h=
tml>
--1619090392-2060125666-1383895398=:45469--


--===============7019475565155039096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Kernelnewbies mailing list
Kernelnewbies@kernelnewbies.org
http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

--===============7019475565155039096==--

