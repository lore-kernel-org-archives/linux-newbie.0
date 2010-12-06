From: nidhi mittal hada <nidhimittal19@gmail.com>
Subject: Re: beagle-board -high speed data acquisition from - adc --
Date: Mon, 6 Dec 2010 12:09:24 +0530
Message-ID: <AANLkTikTVYWPx311PUp503MWGAZYVB1c3DJa0WJmcyW3@mail.gmail.com>
References: <AANLkTik0SRGzo=nbs1z_9QyTwkYGvMQUK_6ShskKFe9u@mail.gmail.com> <AANLkTi=Lc=UQCdZa3VjirdhY_VztBjH2yn5hGAEtxte0@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:content-type
         :content-transfer-encoding;
        bh=1B1YFj2AARQqgj6xRo6H3VH2EH1cSD+OmSxqjRi7qmc=;
        b=OLu0Q/2elIM1pcQMcY77iS6+puniQ0rMLVVMAX1RNnSsQFFa8MsBCpPcpDXqdUjPH3
         zM6gC6nSOq9RaphKjaRJGjpyjbmpX7F7p0JzFRRafbknV13rg7x/eRRXnWYcyfRFSdHb
         6SSjRmdSmloZ0OEozQeu9pOPsQBWl0TFxvVn8=
In-Reply-To: <AANLkTi=Lc=UQCdZa3VjirdhY_VztBjH2yn5hGAEtxte0@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-arm-kernel@lists.arm.linux.org.uk, linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

Hi all

I am reframing question in case it remained unclear
=2E.....................Its a simple conceptual doubts...please clarify

Simple I want to acquire data from a parallel interface ---- 12 bit
ADC (works at a rate of 40Msamples per second.)----with the Beagle
Board with ..
i want to acquire data from that ADC for a period of 100
msec............with each sample coming from ADC at 25 nanosec....

Now my sequence of task includes --------

=46or a period of 100msecs

1)BeagleBoard -------gives a start signal to ADC

2)ADC ------>gives back=C2=A0 sample data after 25nseconds--------->for
these 25ns beagle board has to store previous sample in memory ...
may be using DMA !! ...........still undecisive whether DMA is proper
choice or not ..........
------------ process gets an interrupt ....that 25ns are over !!

3)Now goto step 1.........BUT Now beagleboard has to give another
start signal ----without wasting anymore than 1 or 2 ns before giving
another start signal to ADC


that is where i am doubtful .................

as

If i use interrupt handler at after 25ns ...then interrupt latency
itself might take more time than i want to save ............

Q1.Can there be some interrupt handler ....which can just capture data
and gives start signal at highest priority without getting interrupted
by kernel ...?

If i use user mode or kernel mode process ...for this ...how do i
ensure that ...
it doesnt get preempted by anything before it does this critical
operation of capturing data and giving start signal ......

Q2. Can we store sample data in memory in 25 ns we have with us before
getting next sample from ADC ?

Q3.should we use DMA ?




CAN Beagleboard with linux in it ...can achieve such a strict time
constrained requirement ?




Nidhi




On Mon, Dec 6, 2010 at 11:58 AM, nidhi mittal hada
<nidhimittal19@gmail.com> wrote:
>
> Hi all
>
> I am reframing question in case it remained unclear .................=
=2E....Its a simple conceptual doubts...please clarify
>
> Simple I want to acquire data from a parallel interface ---- 12 bit A=
DC (works at a rate of 40Msamples per second.)----with the Beagle Board=
 with ..
> i want to acquire data from that ADC for a period of 100 msec........=
=2E...with each sample coming from ADC at 25 nanosec....
>
> Now my sequence of task includes --------
>
> For a period of 100msecs
>
> 1)BeagleBoard -------gives a start signal to ADC
>
> 2)ADC ------>gives back=C2=A0 sample data after 25nseconds--------->f=
or these 25ns beagle board has to store previous sample in memory ...
> may be using DMA !! ...........still undecisive whether DMA is proper=
 choice or not ..........
> ------------ process gets an interrupt ....that 25ns are over !!
>
> 3)Now goto step 1.........BUT Now beagleboard has to give another sta=
rt signal ----without wasting anymore than 1 or 2 ns before giving anot=
her start signal to ADC
>
>
> that is where i am doubtful .................
>
> as
>
> If i use interrupt handler at after 25ns ...then interrupt latency it=
self might take more time than i want to save ............
>
> Q1.Can there be some interrupt handler ....which can just capture dat=
a and gives start signal at highest priority without getting interrupte=
d by kernel ...?
>
> If i use user mode or kernel mode process ...for this ...how do i ens=
ure that ...
> it doesnt get preempted by anything before it does this critical oper=
ation of capturing data and giving start signal ......
>
> Q2. Can we store sample data in memory in 25 ns we have with us befor=
e getting next sample from ADC ?
>
> Q3.should we use DMA ?
>
>
>
>
> CAN Beagleboard with linux in it ...can achieve such a strict time co=
nstrained requirement ?
>
>
>
>
> Nidhi
>
>
>
>
>
>
>
>
> On Sun, Dec 5, 2010 at 12:49 PM, nidhi mittal hada <nidhimittal19@gma=
il.com> wrote:
> > Hello all
> >
> > Actually
> > I want to use a parallel interface ADC with the Beagle Board with 4=
0Msps.
> > I want to take samples using 12 bit ADC and acquire it for say 100m=
s.
> >
> > My input signal is 3 V p-p .
> >
> >
> > "Actually in my application after taking sample I want to calculate
> > 4096 point FFT using it.
> > During this time i don't require to acquire input signal. Then the
> > calculated data has to
> > be passed to a PC using on board USB or UART interface.
> > Some more complex operations are also there such as correlations an=
d
> > Principal Component analysis."
> >
> > Please suggest whether beagle board is apt for such project.
> >
> > My major concern is high speed acquisition using linux dvsdk from
> > Texas Instruments or any linux on beagleboard
> >
> >
> > Please help
> >
>



--
Thanks & Regards
Nidhi Mittal Hada
Scientific officer D
Computer Division
Bhabha Atomic Research Center
Mumbai

http://nidhi-searchingmyself.blogspot.com/
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
