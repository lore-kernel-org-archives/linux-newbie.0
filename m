From: Ivan Stoyanov <ivan.stoyanov@amk-drives.bg>
Subject: i.mx35 kernel freeze on booting
Date: Thu, 15 Dec 2016 17:35:43 +0200
Message-ID: <ea833817-14cf-4db2-bd68-15bae3aa79a3@amk-drives.bg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=amk-drives.bg; h=
        content-transfer-encoding:content-type:content-type:mime-version
        :user-agent:date:date:message-id:subject:subject:from:from:to;
         s=dkim; t=1481816144; x=1482680145; bh=vnmPI4GWjwwNKVSQ+UPCDEuX
        +DUQ01Z7edVmdBWCU9I=; b=TKwD4atuPI0naUN+ZcxgtqhEC8z64sANVZ/cstth
        PQJWSNxNiQJglVi6Q63NShbWY3NZByYXemaKZKQi3Ejyqay8d8/JxQxhbCgHy0o9
        j4o0JWqfJWU9sr+o1HiRAjiQKs6doHRnyBxKl8Qfvv6Y4tUZCOvtDsvtQLDCD28U
        8N4bpBin+0o22ykNII39TuMKLYdo+SOAql1ZqpZ/eKn/B/mqmoh0yrnFEGxGOuVt
        N3djPvGeyNLbUGfphuLGC0cQfGf9YjpTKfPDG/GPuQQEzn8kDkk+zxoOHwYoiC7u
        rhdIBps97u1Ve6K1xQOEquOpF2UfE9oTE7z0y1oqdYGipQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello group,

I am working on i.mx35 based board and I have found a problem with mx3fb 
driver. On boot kernel freeze during mx3fb driver initialization and 
reboot after few seconds. I tried to debug with prints and found that 
kernel freeze as soon as writing SDC_COM_BG_EN in SDC_COM_CONF register.

Could you please give me advice how get more debug information?

[    1.018314] Remapped [mem 0x53fc00b4-0x53fc01bf] at f57c00b4
[    1.024010] dmaengine: private_candidate: dma0chan0 filter said false
[    1.030591] dmaengine: private_candidate: dma0chan1 filter said false
[    1.037044] dmaengine: private_candidate: dma0chan2 filter said false
[    1.043643] dmaengine: private_candidate: dma0chan3 filter said false
[    1.050096] dmaengine: private_candidate: dma0chan4 filter said false
[    1.056692] dmaengine: private_candidate: dma0chan5 filter said false
[    1.063146] dmaengine: private_candidate: dma0chan6 filter said false
[    1.069742] dmaengine: private_candidate: dma0chan7 filter said false
[    1.076233] dmaengine: private_candidate: dma0chan8 filter said false
[    1.082843] dmaengine: private_candidate: dma0chan9 filter said false
[    1.089296] dmaengine: private_candidate: dma0chan10 filter said false
[    1.095894] dmaengine: private_candidate: dma0chan11 filter said false
[    1.102491] dmaengine: private_candidate: dma0chan12 filter said false
[    1.109102] dmaengine: private_candidate: dma0chan13 filter said false
[    1.115718] IPU: mapped source 14 to IRQ 176
[    1.198869] ipu-core ipu-core: init channel = 14
[    1.203638] ipu-core ipu-core: IDMAC_CONF 0x70, IC_CONF 0x0, 
IDMAC_CHA_EN 0x0, IDMAC_CHA_PRI 0x4000, IDMAC_        CHA_BUSY 0x0
[    1.214447] ipu-core ipu-core: BUF0_RDY 0x4000, BUF1_RDY 0x0, CUR_BUF 
0x0, DB_MODE 0x0, TASKS_STAT 0x2003
[    1.224442] dma dma0chan14: Found channel 0xe, irq 176
[    1.229690] dmaengine: __dma_request_channel: success (dma0chan14)
[    1.235966] return 1
[    1.238276] mx3_sdc_fb mx3_sdc_fb: mx3fb_check_var
[    1.243121] mx3_sdc_fb mx3_sdc_fb: mx3fb_check_var
[    1.247989] mx3_sdc_fb mx3_sdc_fb: sdc_set_brightness: value = 255
[    1.254238] mx3_sdc_fb mx3_sdc_fb: disabling irq 176
[    1.270275] mx3_sdc_fb mx3_sdc_fb: allocated fb @ p=0x97000000, 
v=0xd887d000, size=1536000.
[    1.294524] mx3_sdc_fb mx3_sdc_fb: pixclock = 33260000l Hz
[    1.300118] mx3_sdc_fb mx3_sdc_fb: panel size = 800 x 480
[    1.305528]  hor_conf 3e80000, ver_conf 1f40001
[    1.310266] mx3_sdc_fb mx3_sdc_fb: InitPanel() - Pixel clock divider 
less than 4
[    1.317813] mx3_sdc_fb mx3_sdc_fb: pixel clk = 33260000, divider 4.0
[    1.324272] mx3_sdc_fb mx3_sdc_fb: DI_DISP_IF_CONF = 0x04000000
[    1.330209] mx3_sdc_fb mx3_sdc_fb: DI_DISP_SIG_POL = 0x06000000
[    1.336287] mx3_sdc_fb mx3_sdc_fb: DI_DISP3_TIME_CONF = 0x01C00040
[    1.348164] mx3_sdc_fb mx3_sdc_fb: mx3fbi d798d25c, txd = NULL
[    1.354123] ipu-core ipu-core: write param mem - addr = 0x000100E0, 
data = 0x00000000
[    1.362003] ipu-core ipu-core: write param mem - addr = 0x000100E1, 
data = 0x00004000
[    1.369987] ipu-core ipu-core: write param mem - addr = 0x000100E2, 
data = 0x00000000
[    1.377835] ipu-core ipu-core: write param mem - addr = 0x000100E3, 
data = 0xDF31F000
[    1.385821] ipu-core ipu-core: write param mem - addr = 0x000100E4, 
data = 0x00000001
[    1.393670] ipu-core ipu-core: write param mem - addr = 0x000100E8, 
data = 0x97000000
[    1.401655] ipu-core ipu-core: write param mem - addr = 0x000100E9, 
data = 0x00000000
[    1.409504] ipu-core ipu-core: write param mem - addr = 0x000100EA, 
data = 0x1E0831FA
[    1.417490] ipu-core ipu-core: write param mem - addr = 0x000100EB, 
data = 0x96416502
[    1.425338] ipu-core ipu-core: write param mem - addr = 0x000100EC, 
data = 0x00000000
[    1.433323] dma dma0chan14: Submitting sg d798d2d4
[    1.438224] dma dma0chan14: Updated sg d798d2d4 on channel 0xe buffer 0
[    1.444864] ipu-core ipu-core: IDMAC_CONF 0x70, IC_CONF 0x0, 
IDMAC_CHA_EN 0x0, IDMAC_CHA_PRI 0x4000, IDMAC_        CHA_BUSY 0x0
[    1.455798] ipu-core ipu-core: BUF0_RDY 0x4000, BUF1_RDY 0x0, CUR_BUF 
0x0, DB_MODE 0x0, TASKS_STAT 0x3
[    1.465214] ipu-core ipu-core: IDMAC_CONF 0x70, IC_CONF 0x0, 
IDMAC_CHA_EN 0x4000, IDMAC_CHA_PRI 0x4000, IDM        AC_CHA_BUSY 0x0
[    1.476365] ipu-core ipu-core: BUF0_RDY 0x4000, BUF1_RDY 0x0, CUR_BUF 
0x0, DB_MODE 0x0, TASKS_STAT 0x3
[    1.485807] mx3_sdc_fb mx3_sdc_fb: 422: Submit d887b09c #2 [+]
[    1.510871] mx3_sdc_fb mx3_sdc_fb: sdc_set_brightness: value = 255
[

Thank you in advance!

Regards,
Ivan

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
