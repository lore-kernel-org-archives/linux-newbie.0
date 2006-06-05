From: Tommi Tapani Piirainen <tommi.piirainen@hut.fi>
Subject: Re: RaLink rt2500 wireless local area network SOLVED
Date: Mon, 05 Jun 2006 09:58:15 +0300 (EEST)
Message-ID: <1149490695.4483d6075662f@webmail1.hut.fi>
References: <1148893993.447abb299ae14@webmail1.hut.fi> <447AE002.8020807@gelm.net>
Reply-To: ttpiirai@cc.hut.fi
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <447AE002.8020807@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck gelm <chuck@gelm.net>
Cc: ttpiirai@cc.hut.fi, linux-newbie@vger.kernel.org

On Mon, 29 May 2006 07:50:26 -0400 chuck gelm <chuck@gelm.net> wrote:

> Tommi Tapani Piirainen wrote:
> 
> >Hello,
> >
> >I have tried to install modules for rt2500 some time now with rt2500
> or rt2x00 
> >module. I have managed to compile the module and install it, but after
> loading 
> >the module with insmod error occure "-1, File don't exist" some thing
> like 
> >that. Modprobe though don't give error and I can see module loaded
> with lsmod, 
> >but iwconfig don't show any wireless devices:( 
> >
> >Error loading the module can be generic, because I can't load other
> modules I 
> >compile eather. So if some one can help me with procedure neccessary
> to install 
> >modules?
> >
> >Now I have tried to compile the module and then install it and load it
> with 
> >modprobe or insmod.
> >
> >#make 
> >#make install
> >#insmod $module
> >
> >Where the $module is a name for the module installed.
> >
> >give error "-1, File don't exist"
> >
> >#emerge net-wireless/rt2500
> >#insmod $module 
> >
> >don't work, same error "-1, File don't exist"
> >
> >Some times compiling give me errors other times not, I am confused.
> Error is 
> >usually "RT2500_DBG not set" if I can remember right. Any suggestions?
> >
> >I am tried to install the module too long so I will try use windows
> drivers if 
> >I don't manage to use rt2x00. Is this right way to go?
> >
> >I currently change my operating system to Gentoo and I'm not really
> familiar 
> >with it:( My recent compiled kernel is (gentoo-sources) 2.6.16-r7. 
> >
> >I have pcmcia and amateur radio compiled in the kernel.
> >
> >  
> >
> Hi, Tommi:
> 
>  Please always give the exact command and the exact error message.
> I 'googled' and found some comments about problems with using rt2500 
> module(s).
> Probably, you should mention your linux distribution (with version) and
> 
> kernel (2.?.?).
> I see where someone was having a problem with ndiswrapper and a rt2500 
> device
> notbeing able to specify 'b/g' [802.11b/802.11g].
> 
>  The wireless device in my laptop is a Broadcom 94306 and I got it to 
> work by using
> ndiswrapper.  If you try ndiswrapper, perhaps my setup will be similar 
> to yours:
> http://gelm.net/2005/zv5410us/wireless.html
> 
> "-1, File don't exist"
> 
>  Did you run 'depmod -a' after installing the module?  
> Is the module where your kernel expects to find it?
>  (where the other modules are)
> My system runs 'depmod -a' with every boot.
> 
>  I am not familiar with the command 'emerge'. :-|
> 
>  In your example "#insmod $module", we do not know, for sure, what
> '$module' is equal to. !?!
> Please specify module name in command line.
> 
>  'insmod' does not assume any parameters, perhaps you need some
> parameters or arguments 
> in the 'insmod' command line.
> 
>  'modprobe' will try to assume some parameters or arguments and if it
> assumes correctly
> all is well.
> 
>  However, you mention:
> "Error loading the module can be generic, because I can't load other
> modules I 
> compile eather. So if some one can help me with procedure neccessary to
> install 
> modules?"
> 
>  Yes, Show us how, exactly, you are trying to load modules and
> the exact error messages.
> 
> Which distribution and kernel?
> Which module version and source ? 
> (http://download.blahblah.org/pub/rt2500-2.1.23.tar.gz)
> 
> Perhaps some messages are appearing in /var/log/messages. Watch
>  tail -f /var/log/messages
> while you insert the device.
> 
> HTH, Chuck
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

Hi, 

I just wanted to reply that I solved the problem. Actually my chip was rt61. So 
I downloaded drivers from the ralink site "http://www.ralinktech.com/supp-
1.htm" and compiled it. I got few warnings during compilation and I get warning 
when I load the module, but it seems to work:)

-- 
******
Tommi 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
