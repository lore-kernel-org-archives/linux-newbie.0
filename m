From: "Simon Wu" <simonwu1@gmail.com>
Subject: Re: what is PCI to PCMCIA adaptor device name
Date: Tue, 11 Jul 2006 11:53:00 -0400
Message-ID: <dd54e0e0607110853wf4afdf3s606dd55376ae422a@mail.gmail.com>
References: <dd54e0e0607061148n5b1382e5l13dfebc5cccdf47b@mail.gmail.com>
	 <b115cb5f0607062331w15ee3b65nc912cf5bb2fe0145@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0607062331w15ee3b65nc912cf5bb2fe0145@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 7/7/06, Rajat Jain <rajat.noida.india@gmail.com> wrote:
> On 7/7/06, Simon Wu <simonwu1@gmail.com> wrote:
> > Hello,
> >
> > I installed a PCI to PCMCIA card adaptor in my desktop PC with Fedora
> > 3. Apparently, it is detected as Ismod shows:
> > yenta_socket   21705  1
> > rsrc_nonstatic  12737  1 yenta_socket
> > pcmcia_core    50013  2 yenta_socket, rsrc_nonstatic
> >
> > I have a 3G wireless modem connected to th adaptor.
> >
> > However, I couldn't find a device name under /dev/. Can someone tell
> > me what and where is the device name? Is it configurable?
> >
>
> Could you provide us lspci output?
>

Here is the lspci:
02:0a.0 CardBus bridge: Ricoh Co Ltd RL5c475 (rev 81)
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B-
        Status: Cap+ 66Mhz- UDF- FastB2B- ParErr- DEVSEL=medium
>TAbort- <TAbort- <MAbort- >SERR- <PERR-
        Latency: 168
        Interrupt: pin A routed to IRQ 11
        Region 0: Memory at 20000000 (32-bit, non-prefetchable) [size=4K]
        Bus: primary=02, secondary=03, subordinate=06, sec-latency=176
        Memory window 0: 20400000-207ff000 (prefetchable)
        Memory window 1: 20800000-20bff000
        I/O window 0: 00004000-000040ff
        I/O window 1: 00004400-000044ff
        BridgeCtl: Parity- SERR- ISA- VGA- MAbort- >Reset- 16bInt- PostWrite+
        16-bit legacy interface ports at 0001
02:0c.0 Ethernet controller: 3Com Corporation 3c905C-TX/TX-M [Tornado] (rev 78)
        Subsystem: Dell Optiplex GX240
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop-
ParErr- Stepping- SERR+ FastB2B-
        Status: Cap+ 66Mhz- UDF- FastB2B- ParErr- DEVSEL=medium
>TAbort- <TAbort- <MAbort- >SERR- <PERR-
        Latency: 64 (2500ns min, 2500ns max), Cache Line Size 10
        Interrupt: pin A routed to IRQ 11
        Region 0: I/O ports at dc80 [size=128]
        Region 1: Memory at ff6fd000 (32-bit, non-prefetchable) [size=128]
        Expansion ROM at ff700000 [disabled] [size=128K]
        Capabilities: [dc] Power Management version 2
                Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA
PME(D0+,D1+,D2+,D3hot+,D3cold+)
                Status: D0 PME-Enable- DSel=0 DScale=2 PME-

03:00.0 Network controller: Unknown device 1931:000c
        Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B-
        Status: Cap- 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=medium
>TAbort- <TAbort- <MAbort- >SERR- <PERR-
        Interrupt: pin A routed to IRQ 11
        Region 0: Memory at 20800000 (32-bit, non-prefetchable)
[disabled] [size=2K]
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
