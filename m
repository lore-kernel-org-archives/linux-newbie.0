From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Porting linux kernel on Xilinx FPGA board
Date: Thu, 24 Jan 2008 03:07:53 -0800
Message-ID: <7783925d0801240307t2e0bde9ch120b566506f3bac1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=N4YieExbwJxMTRg/IdT5fHHGH1ylb4nbE9OElUdbpnU=;
        b=laffrTdGKNBvd64uR7ubofYV5ImwosgJqFj2NioTmhjU+Nj/swmqXjQRhstVGTKsqxaS2VFQXA+6YUH5lerZQ66dGs8l8mbNlxA7idjNbHupPuKxmoNyw9G0DKLxbwclyNYBLKn27Tx7c1bNpjFTyH0g+1zMSDpmPIfATfa3dAI=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

Hi,

I need to port a customized linux kernel on the latest Xilinx Virtex-5
FPGA based board (PowerPC architecture). However, my question relates
more to the Xilinx FPGA technology (EDK etc.) than the kernel.

Considering that this is a completely new board, what all EDK related
things I'll need to do? Will I be needed to create IP cores? Will I be
needed to design the embedded system from the scratch? Will I be
needed to make modifications in the tool chain?

Tx,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
