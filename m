From: Tommi Tapani Piirainen <tommi.piirainen@hut.fi>
Subject: RaLink rt2500 wireless local area network
Date: Mon, 29 May 2006 12:13:13 +0300 (EEST)
Message-ID: <1148893993.447abb299ae14@webmail1.hut.fi>
Reply-To: ttpiirai@cc.hut.fi
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,

I have tried to install modules for rt2500 some time now with rt2500 or rt2x00 
module. I have managed to compile the module and install it, but after loading 
the module with insmod error occure "-1, File don't exist" some thing like 
that. Modprobe though don't give error and I can see module loaded with lsmod, 
but iwconfig don't show any wireless devices:( 

Error loading the module can be generic, because I can't load other modules I 
compile eather. So if some one can help me with procedure neccessary to install 
modules?

Now I have tried to compile the module and then install it and load it with 
modprobe or insmod.

#make 
#make install
#insmod $module

Where the $module is a name for the module installed.

give error "-1, File don't exist"

#emerge net-wireless/rt2500
#insmod $module 

don't work, same error "-1, File don't exist"

Some times compiling give me errors other times not, I am confused. Error is 
usually "RT2500_DBG not set" if I can remember right. Any suggestions?

I am tried to install the module too long so I will try use windows drivers if 
I don't manage to use rt2x00. Is this right way to go?

I currently change my operating system to Gentoo and I'm not really familiar 
with it:( My recent compiled kernel is (gentoo-sources) 2.6.16-r7. 

I have pcmcia and amateur radio compiled in the kernel.

-- 
*********************
tommi.piirainen@tkk.fi
**********************
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
