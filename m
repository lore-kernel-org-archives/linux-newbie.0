From: Eric <eric@cisu.net>
Subject: Re: Oversized kernel
Date: Wed, 12 Mar 2003 18:35:21 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303121835.21843.eric@cisu.net>
References: <720FB032F37C0D45A11085D881B03368A2B496@MBXSRV24.stu.nus.edu.sg> <3E6F144D.3090501@ameritech.net>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E6F144D.3090501@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eng Se-Hsieng <g0202512@nus.edu.sg>
Cc: linux-newbie@vger.kernel.org

Go through it item by item and remove any drivers you dont need. Old ide 
drivers, networking, scsi, sound, bluetooth. Find out what hardware your 
machine has and recompile it with only those options. Play around and read 
the help thats available when compiling the kernel. Worst case scenario, 
simply compile a BARE kernel and recomple everything else you need as a 
module and put them on a seperate disk so you can load them if/when you need 
them. Compiling a kernel can be a very machine personal thing. Without 
knowing the exact hardware its very hard to say exactly what options to use. 

On Wednesday 12 March 2003 05:04 am, 1stFlight wrote:
> Are you using "make bzImage:" when you compile? It makes for a smaller
> kernel
>
> Eng Se-Hsieng wrote:
> >Dear all,
> >
> >I've just compiled a new kernel and the vmlinuz is over 2Mb in size.
> >Since mkbootdisk returns : Not enough space and I don't have a CD writer
> >on my system, I'm unable to create a boot disk and am a little wary
> >about not having one.
> >
> >How does one know what are the minimum options to choose in order to
> >reduce the size of the vmlinuz? My system is a Toshiba Satellite 4030CDT
> >(Celeron 266 Mhz)
> >
> >Thank you.
> >
> >Regards,
> >Se-Hsieng
> >-
> >To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> >the body of a message to majordomo@vger.kernel.org
> >More majordomo info at  http://vger.kernel.org/majordomo-info.html
> >Please read the FAQ at http://www.linux-learn.org/faqs

-- 
#------------------------
#Eric Bambach   
#Eric@CISU.net 
#------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
