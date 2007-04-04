From: GAggarwal@IN.Safenet-inc.com
Subject: RE: Need for a new spinlock API?
Date: Wed, 4 Apr 2007 11:04:44 +0530
Message-ID: <D45AC362EAFF2F47891E71637D192ABF01D378FA@INEXCH1>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7767A.F34279FA"
Return-path: <kernelnewbies-bounce@nl.linux.org>
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
To: rajat.noida.india@gmail.com
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C7767A.F34279FA
Content-Type: text/plain;
	charset="iso-8859-1"

Yaa Rajat... I think that will work if datastructure is shared only among
process context thread and one ISR routine.But in case the datastructure is
shared among multiple interrupt context routines say in IRQ handler A and
Tasklet B then you need to use spin_lock_irqsave() routine in IRQ context
too.

--
Gaurav



-----Original Message-----
From: Rajat Jain [mailto:rajat.noida.india@gmail.com]
Sent: Wednesday, April 04, 2007 10:40 AM
To: GAggarwal@in.safenet-inc.com
Cc: kernelnewbies@nl.linux.org; linux-newbie@vger.kernel.org
Subject: Re: Need for a new spinlock API?


On 4/4/07, GAggarwal@in.safenet-inc.com <GAggarwal@in.safenet-inc.com>
wrote:
>
>
> Hi Rajat,
>
> I think spin_lock_irqsave() will fulfill the purpose as otherwise it may
be
> possible that the when a data structure is accessed in process context by
> taking spin_lock and an interrupt comes then the ISR will remain in
forever
> loop waiting for the process context to release the lock result in a
> deadlock situation for a uniprocessor system.

HI Gaurav,

I meant to use spin_lock_irqsave() in process context and spin_lock()
in IRQ context.

Thanks,

Rajat


The information contained in this electronic mail transmission may be privileged and confidential, and therefore, protected from disclosure. If you have received this communication in error, please notify us immediately by replying to this message and deleting it from your computer without copying or disclosing it.
------_=_NextPart_001_01C7767A.F34279FA
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE=20HTML=20PUBLIC=20"-//W3C//DTD=20HTML=203.2//EN">
<HTML>
<HEAD>
<META=20HTTP-EQUIV=3D"Content-Type"=20CONTENT=3D"text/html;=20charset=3Dis=
o-8859-1">
<META=20NAME=3D"Generator"=20CONTENT=3D"MS=20Exchange=20Server=20version=20=
5.5.2658.34">
<TITLE>RE:=20Need=20for=20a=20new=20spinlock=20API?</TITLE>
</HEAD>
<BODY>

<P><FONT=20SIZE=3D2>Yaa=20Rajat...=20I=20think=20that=20will=20work=20if=20=
datastructure=20is=20shared=20only=20among=20process=20context=20thread=20=
and=20one=20ISR=20routine.But=20in=20case=20the=20datastructure=20is=20sha=
red=20among=20multiple=20interrupt=20context=20routines=20say=20in=20IRQ=20=
handler=20A=20and=20Tasklet=20B=20then=20you=20need=20to=20use=20spin_lock=
_irqsave()=20routine=20in=20IRQ=20context=20too.</FONT></P>

<P><FONT=20SIZE=3D2>--</FONT>
<BR><FONT=20SIZE=3D2>Gaurav</FONT>
</P>
<BR>
<BR>

<P><FONT=20SIZE=3D2>-----Original=20Message-----</FONT>
<BR><FONT=20SIZE=3D2>From:=20Rajat=20Jain=20[<A=20HREF=3D"mailto:rajat.noi=
da.india@gmail.com">mailto:rajat.noida.india@gmail.com</A>]</FONT>
<BR><FONT=20SIZE=3D2>Sent:=20Wednesday,=20April=2004,=202007=2010:40=20AM<=
/FONT>
<BR><FONT=20SIZE=3D2>To:=20GAggarwal@in.safenet-inc.com</FONT>
<BR><FONT=20SIZE=3D2>Cc:=20kernelnewbies@nl.linux.org;=20linux-newbie@vger=
.kernel.org</FONT>
<BR><FONT=20SIZE=3D2>Subject:=20Re:=20Need=20for=20a=20new=20spinlock=20AP=
I?</FONT>
</P>
<BR>

<P><FONT=20SIZE=3D2>On=204/4/07,=20GAggarwal@in.safenet-inc.com=20&lt;GAgg=
arwal@in.safenet-inc.com&gt;=20wrote:</FONT>
<BR><FONT=20SIZE=3D2>&gt;</FONT>
<BR><FONT=20SIZE=3D2>&gt;</FONT>
<BR><FONT=20SIZE=3D2>&gt;=20Hi=20Rajat,</FONT>
<BR><FONT=20SIZE=3D2>&gt;</FONT>
<BR><FONT=20SIZE=3D2>&gt;=20I=20think=20spin_lock_irqsave()=20will=20fulfi=
ll=20the=20purpose=20as=20otherwise=20it=20may=20be</FONT>
<BR><FONT=20SIZE=3D2>&gt;=20possible=20that=20the=20when=20a=20data=20stru=
cture=20is=20accessed=20in=20process=20context=20by</FONT>
<BR><FONT=20SIZE=3D2>&gt;=20taking=20spin_lock=20and=20an=20interrupt=20co=
mes=20then=20the=20ISR=20will=20remain=20in=20forever</FONT>
<BR><FONT=20SIZE=3D2>&gt;=20loop=20waiting=20for=20the=20process=20context=
=20to=20release=20the=20lock=20result=20in=20a</FONT>
<BR><FONT=20SIZE=3D2>&gt;=20deadlock=20situation=20for=20a=20uniprocessor=20=
system.</FONT>
</P>

<P><FONT=20SIZE=3D2>HI=20Gaurav,</FONT>
</P>

<P><FONT=20SIZE=3D2>I=20meant=20to=20use=20spin_lock_irqsave()=20in=20proc=
ess=20context=20and=20spin_lock()</FONT>
<BR><FONT=20SIZE=3D2>in=20IRQ=20context.</FONT>
</P>

<P><FONT=20SIZE=3D2>Thanks,</FONT>
</P>

<P><FONT=20SIZE=3D2>Rajat</FONT>
</P>


<BR>
The=20information=20contained=20in=20this=20electronic=20mail=20transmissi=
on=20may=20be=20privileged=20and=20confidential,=20and=20therefore,=20prot=
ected=20from=20disclosure.=20If=20you=20have=20received=20this=20communica=
tion=20in=20error,=20please=20notify=20us=20immediately=20by=20replying=20=
to=20this=20message=20and=20deleting=20it=20from=20your=20computer=20witho=
ut=20copying=20or=20disclosing=20it.<BR>
</BODY>
</HTML>
------_=_NextPart_001_01C7767A.F34279FA--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

