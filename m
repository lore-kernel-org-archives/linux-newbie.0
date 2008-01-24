From: "Arthur Nascimento" <tureba@gmail.com>
Subject: Re: Porting linux kernel on Xilinx FPGA board
Date: Thu, 24 Jan 2008 10:19:58 -0200
Message-ID: <bb529e40801240419u4c857233j3c21409af99508ba@mail.gmail.com>
References: <7783925d0801240307t2e0bde9ch120b566506f3bac1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=2VHZeJWmAi2VeGjvasbyPEocyRCELOdjg4ZsOv4ncDw=;
        b=EpF5Pj0G2FUEFMIwc99XJ9aiQU1nqbrBNJLdCgZZiap6w0BQ9v9rsuhyv6/NdzaZpHc1GOSjWZGOBF4ggYDkEhOt6NpWYo0B6MDRWOFAMLeDuNcZsEcf7xhCqsBZoSLQExQxFcMIno0Z6/7vC4D2cDPrrabyRG4JXbCufXVpqxI=
In-Reply-To: <7783925d0801240307t2e0bde9ch120b566506f3bac1@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>, Rick Brown <rick.brown.3@gmail.com>

Well, if I remember well the basics, if you load an FPGA with the core
of a PowerPC (which you seem to already have at your disposal) then it
will (should) process things exactly as a PPC would. So you could just
have it load any precompiled binaries for PPC such as a Linux kernel
and things should work properly.
You would also need to load the schematics for other interfaces you
had on your board such as VGA, keyboard, mouse, network adaptor,
memory access, IDE, PCI, serial port and everything else you would
have at your disposal.

On LinuxDevices.com I found several projects which have been using
this strategy you are trying. You could check those.

I am, however, very inexperienced at this and I would like to learn
more. I only used FPGAs to run my own programs on my own designed
architecture, nothing nearly as sophisticated as Linux on PPC. If
others could CC their replies to me as well I would greatly appreciate
it, for curiosity's sake.

Arthur



2008/1/24, Rick Brown <rick.brown.3@gmail.com>:
> Hi,
>
> I need to port a customized linux kernel on the latest Xilinx Virtex-5
> FPGA based board (PowerPC architecture). However, my question relates
> more to the Xilinx FPGA technology (EDK etc.) than the kernel.
>
> Considering that this is a completely new board, what all EDK related
> things I'll need to do? Will I be needed to create IP cores? Will I be
> needed to design the embedded system from the scratch? Will I be
> needed to make modifications in the tool chain?
>
> Tx,
>
> Rick
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>



-- 
  (.)   CAMPANHA DA FITA ASCII (http://arc.pasp.de/)
  / \    Contra formatos proprietarios
--- Linux user #340191
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
