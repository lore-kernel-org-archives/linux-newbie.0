From: Lars Bungum <lars@bungum.no>
Subject: Re: Machine to power off automatically.
Date: Sun, 11 Jan 2004 18:57:32 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1073843852.2236.7.camel@shostakovitsj.larsemann>
References: <1073811986.2087.2.camel@shostakovitsj.larsemann>
	 <20040111125045.49f04b65.bilbo@waitrose.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040111125045.49f04b65.bilbo@waitrose.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: John Kelly <bilbo@waitrose.com>
Cc: linux-newbie@vger.kernel.org

On Sun, 2004-01-11 at 13:50, John Kelly wrote:
> > I can't get my machine to turn itself off automatically (when I tell it
> > to do so in KDE), it just hangs saying "Power Down".  Is there some
> > option I have to enable in order to get this working?  Looked at the
> > APM/ACPI sections, but felt that was more related to laptops and
> > batteries, etc.  My BIOS was too old for ACPI, anyway.
> You don't say which distro or kernel you are using, which may help.
> For what it is worth I had this problem a while ago. My Redhat box died and the 
> only CD I had was debian. The new debian box (kernel2.4.18) would not power down 
> automatically. I just loaded the apm module and things then worked as expected.

John,

my system is based on RH9, with the kde-redhat project inside using
apt-rpm.  However as shutting the machine off works with the exact same
configuration only booting a different kernel (the 2.4.18 shipped with
RH) I suspect some option/module must be set in the kernel to get this
working.  The "apm" module is loaded, and the "apmd" daemon from the
RedHat system is started and runs without error.

My problem is that I don't really know what is supposed to make this
particular feature work.  Is it apm?  When I read the docs about
APM/ACPI it seemd all to be about battieries and other laptop-related
matters, and my machine is just a standing desktop.  So what software is
it that is supposed to make this work?

--lars



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
