From: John Kelly <bilbo@waitrose.com>
Subject: Re: Machine to power off automatically.
Date: Sun, 11 Jan 2004 12:50:45 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040111125045.49f04b65.bilbo@waitrose.com>
References: <1073811986.2087.2.camel@shostakovitsj.larsemann>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1073811986.2087.2.camel@shostakovitsj.larsemann>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Sun, 11 Jan 2004 10:06:27 +0100
Lars Bungum <lars@bungum.no> wrote:

> I can't get my machine to turn itself off automatically (when I tell it
> to do so in KDE), it just hangs saying "Power Down".  Is there some
> option I have to enable in order to get this working?  Looked at the
> APM/ACPI sections, but felt that was more related to laptops and
> batteries, etc.  My BIOS was too old for ACPI, anyway.
> 
> --lars
> 
Hi,
You don't say which distro or kernel you are using, which may help.
For what it is worth I had this problem a while ago. My Redhat box died and the 
only CD I had was debian. The new debian box (kernel2.4.18) would not power down 
automatically. I just loaded the apm module and things then worked as expected.

regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
