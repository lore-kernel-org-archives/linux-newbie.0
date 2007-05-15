From: "rohit  hooda" <rohit13hooda@rediffmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: 15 May 2007 09:34:23 -0000
Message-ID: <20070515093423.1150.qmail@webmail81.rediffmail.com>
Reply-To: "rohit  hooda" <rohit13hooda@rediffmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="Next_1179221663---0-202.54.124.237-1119"
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
To: pradeep singh <2500.pradeep@gmail.com>
Cc: Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, Bahadir Balban <bahadir.balban@gmail.com>

 This is a multipart mime message


--Next_1179221663---0-202.54.124.237-1119
Content-type: text/plain;
	charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

  =0A=0A=0AOn Tue, 15 May 2007 pradeep singh wrote :=0A>On 5/14/07, Bahadir=
 Balban <bahadir.balban@gmail.com> wrote:=0A>>=0A>>On 5/14/07, Learning Lin=
ux <learninglinux4@gmail.com> wrote:=0A>> > Ok, but how about an ISR, that =
does not take any locks? Why can't we=0A>> > sleep in SUCH an ISR?=0A>> > L=
L=0A>> > -=0A>>=0A>>The killer reason why you can't sleep in an interrupt i=
s because an=0A>>interrupt is not associated with any context in the first =
place.=0A>=0A>=0A>good enough, but i have a query regarding this then.=0A>O=
n a 8K kernel stack system, doesn't interrupts share the stack associated=
=0A>with the current process which was interrupted?=0AYes, you are right.=
=0A>Doesn't interrupt steals the CPU slice time allocated to the running pr=
ocess=0A>to run?=0AYes=0A>Doesn't it run in current process's context ?=0AY=
ou got it worng here. It runs on behalf of the process, but in the current =
process's context. =0AFor interrupts we have a dirrerent context altogether=
.=0A>=0A>What am i missing here?=0AThere are two different contexts of exec=
ution=0AProcess context=0AInterrupt context=0A>=0A>Thanks=0A>~psr=0A>=0ATha=
nks,=0A-Rohit=0A>What=0A>>is a context, then? It is the state information f=
or a process. This=0A>>includes the kernel and userspace stack pointers, th=
e register set,=0A>>and the page tables for that process. The scheduler has=
 access to all=0A>>this information, to preempt one process and run another=
. Contrary to=0A>>this, an interrupt, depending on the version of your kern=
el and arch,=0A>>uses a separate irq stack or the kernel stack of the inter=
rupted=0A>>process. An irq is not a context but merely a temporary executio=
n to=0A>>be concluded asap.=0A>>=0A>>Hope this helps,=0A>>Bahadir=0A>>=0A>=
=0A>=0A>=0A>-- play the game=0A
--Next_1179221663---0-202.54.124.237-1119
Content-type: text/html;
	charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<P>=0A&nbsp; <BR>=0A<BR>=0A<BR>=0AOn Tue, 15 May 2007 pradeep singh wrote :=
<BR>=0A&gt;On 5/14/07, Bahadir Balban &lt;bahadir.balban@gmail.com&gt; wrot=
e:<BR>=0A&gt;&gt;<BR>=0A&gt;&gt;On 5/14/07, Learning Linux &lt;learninglinu=
x4@gmail.com&gt; wrote:<BR>=0A&gt;&gt; &gt; Ok, but how about an ISR, that =
does not take any locks? Why can't we<BR>=0A&gt;&gt; &gt; sleep in SUCH an =
ISR?<BR>=0A&gt;&gt; &gt; LL<BR>=0A&gt;&gt; &gt; -<BR>=0A&gt;&gt;<BR>=0A&gt;=
&gt;The killer reason why you can't sleep in an interrupt is because an<BR>=
=0A&gt;&gt;interrupt is not associated with any context in the first place.=
<BR>=0A&gt;<BR>=0A&gt;<BR>=0A&gt;good enough, but i have a query regarding =
this then.<BR>=0A&gt;On a 8K kernel stack system, doesn't interrupts share =
the stack associated<BR>=0A&gt;with the current process which was interrupt=
ed?<BR>=0AYes, you are right.<BR>=0A&gt;Doesn't interrupt steals the CPU sl=
ice time allocated to the running process<BR>=0A&gt;to run?<BR>=0AYes<BR>=
=0A&gt;Doesn't it run in current process's context ?<BR>=0AYou got it worng=
 here. It runs on behalf of the process, but in the current process's conte=
xt. <BR>=0AFor interrupts we have a dirrerent context altogether.<BR>=0A&gt=
;<BR>=0A&gt;What am i missing here?<BR>=0AThere are two different contexts =
of execution<BR>=0AProcess context<BR>=0AInterrupt context<BR>=0A&gt;<BR>=
=0A&gt;Thanks<BR>=0A&gt;~psr<BR>=0A&gt;<BR>=0AThanks,<BR>=0A-Rohit<BR>=0A&g=
t;What<BR>=0A&gt;&gt;is a context, then? It is the state information for a =
process. This<BR>=0A&gt;&gt;includes the kernel and userspace stack pointer=
s, the register set,<BR>=0A&gt;&gt;and the page tables for that process. Th=
e scheduler has access to all<BR>=0A&gt;&gt;this information, to preempt on=
e process and run another. Contrary to<BR>=0A&gt;&gt;this, an interrupt, de=
pending on the version of your kernel and arch,<BR>=0A&gt;&gt;uses a separa=
te irq stack or the kernel stack of the interrupted<BR>=0A&gt;&gt;process. =
An irq is not a context but merely a temporary execution to<BR>=0A&gt;&gt;b=
e concluded asap.<BR>=0A&gt;&gt;<BR>=0A&gt;&gt;Hope this helps,<BR>=0A&gt;&=
gt;Bahadir<BR>=0A&gt;&gt;<BR>=0A&gt;<BR>=0A&gt;<BR>=0A&gt;<BR>=0A&gt;-- pla=
y the game<BR>=0A=0A</P>=0A<br><br>=0A<Table border=3D0 Width=3D644 Height=
=3D57 cellspacing=3D0 cellpadding=3D0 style=3D'font-family:Verdana;font-siz=
e:11px;line-height:15px;'><TR><td><a href=3D'http://adworks.rediff.com/cgi-=
bin/AdWorks/click.cgi/www.rediff.com/signature-home.htm/1050715198@Middle5/=
1177315_1171298/1176420/1?PARTNER=3D3&OAS_QUERY=3Dnull target=3Dnew '><img =
src =3Dhttp://imadworks.rediff.com/cgi-bin/AdWorks/adimage.cgi/1177315_1171=
298/creative_1176420.gif  alt=3D'Peanuts'  border=3D0></a></td></TR></Table>
--Next_1179221663---0-202.54.124.237-1119--


--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

