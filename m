From: GAggarwal@IN.Safenet-inc.com
Subject: RE: Need for a new spinlock API?
Date: Wed, 4 Apr 2007 09:20:56 +0530
Message-ID: <D45AC362EAFF2F47891E71637D192ABF01D377FF@INEXCH1>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7766C.733678E6"
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

------_=_NextPart_001_01C7766C.733678E6
Content-Type: text/plain;
	charset="iso-8859-1"

Hi Rajat,

I think spin_lock_irqsave() will fulfill the purpose as otherwise it may be
possible that the when a data structure is accessed in process context by
taking spin_lock and an interrupt comes then the ISR will remain in forever
loop waiting for the process context to release the lock result in a
deadlock situation for a uniprocessor system. You can also use
spin_lock_bh() if the data structure is accessed in tasklet (bottom half).
Please CMIIW.

--
Regards,
Gaurav Aggarwal


-----Original Message-----
From: kernelnewbies-bounce@nl.linux.org
[mailto:kernelnewbies-bounce@nl.linux.org]On Behalf Of Rajat Jain
Sent: Wednesday, April 04, 2007 8:57 AM
To: Arjan van de Ven
Cc: kernel mail; newbie
Subject: Re: Need for a new spinlock API?


> > We often have a case where a driver wants to access its data structure
> > in process context as well as in interrupt context (in its ISR). In
> > such scenarios, we generally use spin_lock_irqsave() to grab the lock
> > as well as disable all the local interrupts. AFAIK, disabling of local
> > interrupts is required so as to avoid running your ISR (which needs
> > the lock) while process context is holding the lock. However, this
> > also disables any other ISRs (which DO NOT need the lock) on the local
> > processor.
> >
> > Isn't this sub-optimal? Shouldn't there be a finer grained locking?
>
> actually it's optimal.
> It's fastest to delay the interrupts a little and be done with what you
> want to do under the lock quickly, and THEN take the interrupt. This
> means the lock hold time is short, which significantly reduces
> contention on this lock...

So on the same lines, if a data structure is accessed in both process
context and in a (single) driver ISR, should a driver use
spin_lock_irqsave() to get the lock in ISR? Or will a simple
spin_lock()  suffice?

Thanks,

Rajat


--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ


The information contained in this electronic mail transmission may be privileged and confidential, and therefore, protected from disclosure. If you have received this communication in error, please notify us immediately by replying to this message and deleting it from your computer without copying or disclosing it.
------_=_NextPart_001_01C7766C.733678E6
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

<P><FONT=20COLOR=3D"#0000FF"=20SIZE=3D2=20FACE=3D"Arial">Hi=20Rajat,</FONT=
>
</P>

<P><FONT=20COLOR=3D"#0000FF"=20SIZE=3D2=20FACE=3D"Arial">I=20think=20spin_=
lock_irqsave()=20will=20fulfill=20the=20purpose=20as=20otherwise=20it=20ma=
y=20be=20possible=20that=20the=20when=20a=20data=20structure=20is=20access=
ed=20in=20process=20context=20by=20taking=20spin_lock=20and=20an=20interru=
pt=20comes=20then=20the=20ISR=20will=20remain=20in=20forever=20loop=20wait=
ing=20for=20the=20process=20context=20to=20release=20the=20lock=20result=20=
in=20a=20deadlock=20situation=20for=20a=20uniprocessor=20system.=20You=20c=
an=20also=20use=20spin_lock_bh()=20if=20the=20data=20structure=20is=20acce=
ssed=20in=20tasklet=20(bottom=20half).=20Please=20CMIIW.</FONT></P>

<P><FONT=20COLOR=3D"#0000FF"=20SIZE=3D2=20FACE=3D"Arial">--</FONT>
<BR><FONT=20COLOR=3D"#0000FF"=20SIZE=3D2=20FACE=3D"Arial">Regards,</FONT>
<BR><FONT=20COLOR=3D"#0000FF"=20SIZE=3D2=20FACE=3D"Arial">Gaurav=20Aggarwa=
l</FONT>
</P>
<BR>

<P><FONT=20SIZE=3D2=20FACE=3D"Arial">-----Original=20Message-----</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">From:=20kernelnewbies-bounce@nl.linu=
x.org</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">[<A=20HREF=3D"mailto:kernelnewbies-b=
ounce@nl.linux.org">mailto:kernelnewbies-bounce@nl.linux.org</A>]On=20Beha=
lf=20Of=20Rajat=20Jain</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">Sent:=20Wednesday,=20April=2004,=202=
007=208:57=20AM</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">To:=20Arjan=20van=20de=20Ven</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">Cc:=20kernel=20mail;=20newbie</FONT>=

<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">Subject:=20Re:=20Need=20for=20a=20ne=
w=20spinlock=20API?</FONT>
</P>
<BR>

<P><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20We=20often=20have=20a=20=
case=20where=20a=20driver=20wants=20to=20access=20its=20data=20structure</=
FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20in=20process=20context=
=20as=20well=20as=20in=20interrupt=20context=20(in=20its=20ISR).=20In</FON=
T>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20such=20scenarios,=20we=
=20generally=20use=20spin_lock_irqsave()=20to=20grab=20the=20lock</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20as=20well=20as=20disab=
le=20all=20the=20local=20interrupts.=20AFAIK,=20disabling=20of=20local</FO=
NT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20interrupts=20is=20requ=
ired=20so=20as=20to=20avoid=20running=20your=20ISR=20(which=20needs</FONT>=

<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20the=20lock)=20while=20=
process=20context=20is=20holding=20the=20lock.=20However,=20this</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20also=20disables=20any=20=
other=20ISRs=20(which=20DO=20NOT=20need=20the=20lock)=20on=20the=20local</=
FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20processor.</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20&gt;=20Isn't=20this=20sub-opt=
imal?=20Shouldn't=20there=20be=20a=20finer=20grained=20locking?</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20actually=20it's=20optimal.</F=
ONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20It's=20fastest=20to=20delay=20=
the=20interrupts=20a=20little=20and=20be=20done=20with=20what=20you</FONT>=

<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20want=20to=20do=20under=20the=20=
lock=20quickly,=20and=20THEN=20take=20the=20interrupt.=20This</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20means=20the=20lock=20hold=20t=
ime=20is=20short,=20which=20significantly=20reduces</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&gt;=20contention=20on=20this=20lock=
...</FONT>
</P>

<P><FONT=20SIZE=3D2=20FACE=3D"Arial">So=20on=20the=20same=20lines,=20if=20=
a=20data=20structure=20is=20accessed=20in=20both=20process</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">context=20and=20in=20a=20(single)=20=
driver=20ISR,=20should=20a=20driver=20use</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">spin_lock_irqsave()=20to=20get=20the=
=20lock=20in=20ISR?=20Or=20will=20a=20simple</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">spin_lock()&nbsp;=20suffice?</FONT>
</P>

<P><FONT=20SIZE=3D2=20FACE=3D"Arial">Thanks,</FONT>
</P>

<P><FONT=20SIZE=3D2=20FACE=3D"Arial">Rajat</FONT>
</P>
<BR>

<P><FONT=20SIZE=3D2=20FACE=3D"Arial">--</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">To=20unsubscribe=20from=20this=20lis=
t:=20send=20an=20email=20with</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">&quot;unsubscribe=20kernelnewbies&qu=
ot;=20to=20ecartis@nl.linux.org</FONT>
<BR><FONT=20SIZE=3D2=20FACE=3D"Arial">Please=20read=20the=20FAQ=20at=20<A=20=
HREF=3D"http://kernelnewbies.org/FAQ"=20TARGET=3D"_blank">http://kernelnew=
bies.org/FAQ</A></FONT>
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
------_=_NextPart_001_01C7766C.733678E6--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

