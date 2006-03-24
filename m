From: John Woodrow <samuraiinlove@gawab.com>
Subject: [Fwd: Re: skype]
Date: Fri, 24 Mar 2006 14:24:49 +0100
Message-ID: <1143206689.5910.0.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="=-KKACF1CSY1uTgNcD5OED"
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: newbie linux <linux-newbie@vger.kernel.org>


--=-KKACF1CSY1uTgNcD5OED
Content-Type: text/plain
Content-Transfer-Encoding: 7bit



--=-KKACF1CSY1uTgNcD5OED
Content-Disposition: inline
Content-Description: Forwarded message - Re: skype
Content-Type: message/rfc822

Subject: Re: skype
From: John Woodrow <samuraiinlove@gawab.com>
To: Yawar Amin <yawar.amin@gmail.com>
In-Reply-To: <efc7f7d00603240359v12119442jb6753be94767e72a@mail.gmail.com>
References: <1143022954.3360.19.camel@localhost.localdomain>
	 <efc7f7d00603240359v12119442jb6753be94767e72a@mail.gmail.com>
Content-Type: text/plain
Message-Id: <1143204592.5292.2.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.2.2 (2.2.2-5) 
Date: Fri, 24 Mar 2006 13:49:55 +0100
Content-Transfer-Encoding: 7bit

OK, here goes.

/sbin/lspci
00:00.0 Host bridge: Intel Corporation 82865G/PE/P DRAM
Controller/Host-Hub Interface (rev 02)
00:01.0 PCI bridge: Intel Corporation 82865G/PE/P PCI to AGP Controller
(rev 02)
00:03.0 PCI bridge: Intel Corporation 82865G/PE/P PCI to CSA Bridge (rev
02)
00:1d.0 USB Controller: Intel Corporation 82801EB/ER (ICH5/ICH5R) USB
UHCI Controller #1 (rev 02)
00:1d.1 USB Controller: Intel Corporation 82801EB/ER (ICH5/ICH5R) USB
UHCI Controller #2 (rev 02)
00:1d.2 USB Controller: Intel Corporation 82801EB/ER (ICH5/ICH5R) USB
UHCI #3 (rev 02)
00:1d.3 USB Controller: Intel Corporation 82801EB/ER (ICH5/ICH5R) USB
UHCI Controller #4 (rev 02)
00:1d.7 USB Controller: Intel Corporation 82801EB/ER (ICH5/ICH5R) USB2
EHCI Controller (rev 02)
00:1e.0 PCI bridge: Intel Corporation 82801 PCI Bridge (rev c2)
00:1f.0 ISA bridge: Intel Corporation 82801EB/ER (ICH5/ICH5R) LPC
Interface Bridge (rev 02)
00:1f.1 IDE interface: Intel Corporation 82801EB/ER (ICH5/ICH5R) IDE
Controller (rev 02)
00:1f.3 SMBus: Intel Corporation 82801EB/ER (ICH5/ICH5R) SMBus
Controller (rev 02)
01:00.0 VGA compatible controller: ATI Technologies Inc Radeon R300 ND
[Radeon 9700 Pro]
01:00.1 Display controller: ATI Technologies Inc Radeon R300 [Radeon
9700 Pro] (Secondary)
02:01.0 Ethernet controller: Intel Corporation 82547EI Gigabit Ethernet
Controller (LOM)
03:02.0 Ethernet controller: Realtek Semiconductor Co., Ltd.
RTL-8139/8139C/8139C+ (rev 10)
03:05.0 Multimedia audio controller: Creative Labs SB Audigy (rev 03)
03:05.1 Input device controller: Creative Labs SB Audigy MIDI/Game port
(rev 03)
03:05.2 FireWire (IEEE 1394): Creative Labs SB Audigy FireWire Port (rev
01)
03:0a.0 RAID bus controller: Promise Technology, Inc. PDC20378 (FastTrak
378/SATA 378) (rev 02)
03:0b.0 FireWire (IEEE 1394): VIA Technologies, Inc. IEEE 1394 Host
Controller (rev 80)




/sbin/lsmod
Module                  Size  Used by
parport_pc             31621  1 
lp                     16585  0 
parport                39049  2 parport_pc,lp
autofs4                22725  2 
rfcomm                 46041  0 
l2cap                  33857  5 rfcomm
bluetooth              56645  4 rfcomm,l2cap
sunrpc                139781  1 
ipt_REJECT              9665  1 
ipt_state               5825  2 
ip_conntrack           46377  1 ipt_state
iptable_filter          6849  1 
ip_tables              24897  3 ipt_REJECT,ipt_state,iptable_filter
video                  19909  0 
button                 10577  0 
battery                13381  0 
ac                      8773  0 
md5                     8001  1 
ipv6                  265857  14 
ohci1394               39177  0 
ieee1394              302873  1 ohci1394
uhci_hcd               35409  0 
ehci_hcd               38093  0 
shpchp                 96965  0 
hw_random               9557  0 
i2c_i801               12621  0 
i2c_core               25409  1 i2c_i801
emu10k1_gp              7617  0 
gameport               19913  2 emu10k1_gp
snd_emu10k1_synth      10945  0 
snd_emux_synth         38337  1 snd_emu10k1_synth
snd_seq_virmidi        11585  1 snd_emux_synth
snd_seq_midi_emul      10817  1 snd_emux_synth
snd_emu10k1           112069  6 snd_emu10k1_synth
snd_rawmidi            28513  2 snd_seq_virmidi,snd_emu10k1
snd_ac97_codec         78393  1 snd_emu10k1
snd_seq_dummy           7621  0 
snd_seq_oss            35777  0 
snd_seq_midi_event     11585  2 snd_seq_virmidi,snd_seq_oss
snd_seq                54097  8
snd_emux_synth,snd_seq_virmidi,snd_seq_midi_emul,snd_seq_dummy,snd_seq_oss,snd_seq_midi_event
snd_seq_device         12621  7
snd_emu10k1_synth,snd_emux_synth,snd_emu10k1,snd_rawmidi,snd_seq_dummy,snd_seq_oss,snd_seq
snd_pcm_oss            54257  0 
snd_mixer_oss          21953  5 snd_pcm_oss
snd_pcm                91973  3 snd_emu10k1,snd_ac97_codec,snd_pcm_oss
snd_timer              28357  3 snd_emu10k1,snd_seq,snd_pcm
snd_page_alloc         13765  2 snd_emu10k1,snd_pcm
snd_util_mem            8641  2 snd_emux_synth,snd_emu10k1
snd_hwdep              12897  2 snd_emux_synth,snd_emu10k1
snd                    58149  15
snd_emux_synth,snd_seq_virmidi,snd_emu10k1,snd_rawmidi,snd_ac97_codec,snd_seq_oss,snd_seq,snd_seq_device,snd_pcm_oss,snd_mixer_oss,snd_pcm,snd_timer,snd_hwdep
soundcore              13345  5 snd
8139too                29761  0 
mii                     9409  1 8139too
e1000                 106029  0 
floppy                 62421  0 
dm_snapshot            21349  0 
dm_zero                 6081  0 
dm_mirror              26013  0 
ext3                  133193  2 
jbd                    61785  1 ext3
dm_mod                 59749  6 dm_snapshot,dm_zero,dm_mirror
sata_promise           14533  0 
libata                 49220  1 sata_promise
sd_mod                 22977  0 
scsi_mod              136457  3 sata_promise,libata,sd_mod


--=-KKACF1CSY1uTgNcD5OED--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
