From: Lars Bungum <lars@bungum.no>
Subject: Re: Machine to power off automatically.
Date: Tue, 13 Jan 2004 09:29:32 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1073982571.1899.5.camel@shostakovitsj.larsemann>
References: <1073811986.2087.2.camel@shostakovitsj.larsemann>
	 <20040111125045.49f04b65.bilbo@waitrose.com>
	 <1073843852.2236.7.camel@shostakovitsj.larsemann>
	 <4002130D.6050504@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4002130D.6050504@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Beolach <beolach@comcast.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 2004-01-12 at 04:22, Beolach wrote:
> Lars Bungum wrote:
> > On Sun, 2004-01-11 at 13:50, John Kelly wrote:
> > 
> >>>I can't get my machine to turn itself off automatically (when I tell it
> >>>to do so in KDE), it just hangs saying "Power Down".  Is there some
> >>>option I have to enable in order to get this working?  Looked at the
> >>>APM/ACPI sections, but felt that was more related to laptops and
> >>>batteries, etc.  My BIOS was too old for ACPI, anyway.
> >>
> >>You don't say which distro or kernel you are using, which may help.
> >>For what it is worth I had this problem a while ago. My Redhat box died and the 
> >>only CD I had was debian. The new debian box (kernel2.4.18) would not power down 
> >>automatically. I just loaded the apm module and things then worked as expected.
> > 
> > 
> > John,
> > 
> > my system is based on RH9, with the kde-redhat project inside using
> > apt-rpm.  However as shutting the machine off works with the exact same
> > configuration only booting a different kernel (the 2.4.18 shipped with
> > RH) I suspect some option/module must be set in the kernel to get this
> > working.  The "apm" module is loaded, and the "apmd" daemon from the
> > RedHat system is started and runs without error.
> > 
> > My problem is that I don't really know what is supposed to make this
> > particular feature work.  Is it apm?  When I read the docs about
> > APM/ACPI it seemd all to be about battieries and other laptop-related
> > matters, and my machine is just a standing desktop.  So what software is
> > it that is supposed to make this work?
> > 
> > --lars
> > 
> 
> APM = Advanced Power Managment
> ACPI = Advanced Configuration and Power Interface
> 
> It would be one of these options that would handle shutting down the 
> power on your computer, most likely APM if you have an older BIOS.  It 
> does also take care of batteries on laptops, but it is Power Managment 
> in general, not just batteries that it handles.
> 
> As to fixing your problem, you did say the APM module is loaded & apmd 
> is running without errors, so my best guess is that your APM module is 
> missing some option required for it to work right on your machine.  Look 
> through your kernel config and check a couple options that you think 
> might have to do with this, such as "CONFIG_APM_REAL_MODE_POWER_OFF":
> 
> 	Use real mode APM BIOS call to power off
> 
> 	Use real mode APM BIOS calls to switch off the computer. This is 
> 
> 	a work-around for a number of buggy BIOSes. Switch this option
> 	on if your computer crashes instead of powering off properly.

Con, 

thanks a bunch for your illuminating clarifications.  When I altered
some options under APM, it worked.  (My BIOS was too old for ACPI).  As
I enabled more functions, I can't really know what the trick was, but I
suspect that it actually was compiling apm directly into the kernel
instead of loading it as a module.  The
"CONFIG_APM_REAL_MODE_POWER_OFF": was enabled all the time.

BTW: Another "strange" thing I saw, is that my isapnp Soundblaster
stopped working when I compiled a kernel with pnp BIOS.  Something to
try if this is a problem, I guess.

--lars

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
