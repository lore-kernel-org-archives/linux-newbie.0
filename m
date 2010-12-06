From: nidhi mittal hada <nidhimittal19@gmail.com>
Subject: Re: beagle-board -high speed data acquisition from - adc --
Date: Mon, 6 Dec 2010 11:58:46 +0530
Message-ID: <AANLkTi=Lc=UQCdZa3VjirdhY_VztBjH2yn5hGAEtxte0@mail.gmail.com>
References: <AANLkTik0SRGzo=nbs1z_9QyTwkYGvMQUK_6ShskKFe9u@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary=00163683340a471fd70496b801c1
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:content-type;
        bh=fYeKtOdKrYWs58Qb+JgWEcFYhahjnRftwPtPAT6Iim4=;
        b=Q71lwSxHUxFlXsyV/xpyFJL4ua3pV7SdA6CcGfPlN/M1Rqg5y7ez6NmSxoPJ+MSJ9v
         qY6ARFmwzF8aZ5dlyu9Vvu4rmH+tH9LQvmITXancdvuKzThsZLSn/clq5ZSEZH8r88ia
         p8Mtl1+65ZrNkL4CT9ppgmGLQ9EevEmKhLhq0=
In-Reply-To: <AANLkTik0SRGzo=nbs1z_9QyTwkYGvMQUK_6ShskKFe9u@mail.gmail.com>
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
To: Kernelnewbies <kernelnewbies@nl.linux.org>, linux-arm-kernel@lists.arm.linux.org.uk, linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org, mohit hada <mohit.soc@gmail.com>, vm.

--00163683340a471fd70496b801c1
Content-Type: text/plain; charset=UTF-8

Hi all

*I am reframing question in case it remained unclear ......................*Its
a simple conceptual doubts...please clarify

Simple I want to acquire data from a *parallel interface *---- *12 bit
ADC*(works at a rate of 40Msamples per second.)----with the
*Beagle Board with ..*
i want to acquire data from that ADC for a period of *100 msec*............with
each sample coming from ADC at *25 nanosec*....

Now my sequence of task includes --------

*For a period of 100msecs*

*1)BeagleBoard -------gives a start signal to ADC *

*2)ADC ------>gives back  sample data after 25nseconds*--------->for these
25ns beagle board has *to store previous sample in memory ...*
may be using DMA !! ...........*still undecisive whether DMA is proper
choice or not ..........*
------------ process gets an interrupt ....*that 25ns are over !!*

*3)Now goto step 1*.........*BUT Now beagleboard has to give another start
signal ----*without wasting anymore than 1 or 2 ns before giving another
start signal to ADC


*that is where i am doubtful .................

as

If i use interrupt handler at after 25ns ...then interrupt latency itself
might take more time than i want to save ............

Q1.Can there be some interrupt handler ....which can just capture data and
gives start signal at highest priority without getting interrupted by kernel
...?

If i use user mode or kernel mode process ...for this ...how do i ensure
that ...
it doesnt get preempted by anything before it does this critical operation
of capturing data and giving start signal ......

Q2. Can we store sample data in memory in 25 ns we have with us before
getting next sample from ADC ?

Q3.should we use DMA ?




CAN Beagleboard with linux in it ...can achieve such a strict time
constrained requirement ?*




Nidhi








On Sun, Dec 5, 2010 at 12:49 PM, nidhi mittal hada <nidhimittal19@gmail.com>
wrote:
> Hello all
>
> Actually
> I want to use a parallel interface ADC with the Beagle Board with 40Msps.
> I want to take samples using 12 bit ADC and acquire it for say 100ms.
>
> My input signal is 3 V p-p .
>
>
> "Actually in my application after taking sample I want to calculate
> 4096 point FFT using it.
> During this time i don't require to acquire input signal. Then the
> calculated data has to
> be passed to a PC using on board USB or UART interface.
> Some more complex operations are also there such as correlations and
> Principal Component analysis."
>
> Please suggest whether beagle board is apt for such project.
>
> My major concern is high speed acquisition using linux dvsdk from
> Texas Instruments or any linux on beagleboard
>
>
> Please help
>

--00163683340a471fd70496b801c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all <br><br><b>I am reframing question in case it remained unclear .....=
.................</b>Its a simple conceptual doubts...please clarify<br><br=
>Simple I want to acquire data from a <b>parallel interface </b>---- <b>12 =
bit ADC</b> (works at a rate of 40Msamples per second.)----with the <b>Beag=
le Board with ..</b><br>




i want to acquire data from that ADC for a period of <b>100 msec</b>.......=
.....with each sample coming from ADC at <b>25 nanosec</b>....<br><br>Now m=
y sequence of task includes --------<br><br><b>For a period of 100msecs</b>=
<br>




=C2=A0<br><b>1)BeagleBoard -------gives a start signal to ADC </b><br><br><=
b>2)ADC ------&gt;gives back=C2=A0 sample data after 25nseconds</b>--------=
-&gt;for these 25ns beagle board has<span style=3D"background-color: rgb(25=
5, 153, 102);"> </span><b style=3D"background-color: rgb(255, 153, 102);">t=
o store previous sample in memory ...</b><br>


may be using DMA !! ...........<b><span style=3D"background-color: rgb(255,=
 204, 204);">still undecisive whether DMA is proper choice or not .........=
.</span></b><br>------------ process gets an interrupt ....<b>that 25ns are=
 over !!</b><br>

<br><b>3)Now goto step 1</b>.........<u style=3D"background-color: rgb(255,=
 255, 51);"><b>BUT Now beagleboard has to give another start signal ---<spa=
n style=3D"background-color: rgb(255, 255, 51);">-</span></b></u><span styl=
e=3D"background-color: rgb(255, 255, 51);">without wasting anymore than </s=
pan><span style=3D"background-color: rgb(255, 255, 51);">
1 or 2 ns before giving another start signal to ADC</span><br><br><br><b><s=
pan style=3D"background-color: rgb(255, 153, 102);">that is where i am doub=
tful .................<br><br>as<br><br><span style=3D"background-color: rg=
b(255, 255, 255);">If i use interrupt handler at after 25ns ...then interru=
pt latency itself might take more time than i want to save ............<br>




<span style=3D"background-color: rgb(255, 255, 51);"><br>Q1.Can there be so=
me interrupt handler ....which can just capture data and gives start signal=
 at highest priority without getting interrupted by kernel ...?</span><br>


<br>

If i use user mode or kernel mode process ...for this ...how do i ensure th=
at ...<br>it doesnt get preempted by anything before it does this critical =
operation of <span style=3D"background-color: rgb(255, 204, 204);">capturin=
g data and giving start signal ......</span><br>

</span><br>


Q2. Can we store sample data in memory in 25 ns we have with us before gett=
ing next sample from ADC ?<br><br>Q3.should we use DMA ?<br><br><br><br><br=
>CAN Beagleboard with linux in it ...can achieve such a strict time constra=
ined requirement ?</span></b><br>


<br><br><br><br>Nidhi <br><br><br><br><br><br><br><br><br>On Sun, Dec 5, 20=
10 at 12:49 PM, nidhi mittal hada &lt;<a href=3D"mailto:nidhimittal19@gmail=
.com" target=3D"_blank">nidhimittal19@gmail.com</a>&gt; wrote:<br>

&gt; Hello all<br>&gt;<br>&gt; Actually<br>&gt; I want to use a parallel in=
terface ADC with the Beagle Board with 40Msps.<br>&gt; I want to take sampl=
es using 12 bit ADC and acquire it for say 100ms.<br>&gt;<br>&gt; My input =
signal is 3 V p-p .<br>




&gt;<br>&gt;<br>&gt; &quot;Actually in my application after taking sample I=
 want to calculate<br>&gt; 4096 point FFT using it.<br>&gt; During this tim=
e i don&#39;t require to acquire input signal. Then the<br>&gt; calculated =
data has to<br>




&gt; be passed to a PC using on board USB or UART interface.<br>&gt; Some m=
ore complex operations are also there such as correlations and<br>&gt; Prin=
cipal Component analysis.&quot;<br>&gt;<br>&gt; Please suggest whether beag=
le board is apt for such project.<br>




&gt;<br>&gt; My major concern is high speed acquisition using linux dvsdk f=
rom<br>&gt; Texas Instruments or any linux on beagleboard<br>&gt;<br>&gt;<b=
r>&gt; Please help<br>&gt;<br><br>

--00163683340a471fd70496b801c1--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

