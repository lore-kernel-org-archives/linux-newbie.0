From: Peter Garrett <peterg@fishinternet.com.au>
Subject: Re: Can't Print
Date: Sun, 02 May 2004 13:05:05 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1083467105.5859.8.camel@DebiAnarchist>
References: <Your message of "Thu, 29 Apr 2004 22:10:57 MST." <5.1.0.14.1.20040429220345.01efcb48@celine>
	 <5.1.0.14.1.20040501055536.01f40bb0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040501055536.01f40bb0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie list <linux-newbie@vger.kernel.org>

Peter;

Fo what it's worth - I use a parallel-port printer (LaserJet 6L) and 

$ lsmod | grep parport
parport_pc             25608   1 (autoclean)
parport                23336   1 (autoclean) [parport_pc lp]


So I think Ray is right and you are missing a module...

On Sat, 2004-05-01 at 22:57, Ray Olszewski wrote:
> At 04:12 PM 5/1/2004 +0800, Peter wrote:
> 
> >heisspf@skyinet.net said:
> > > On a standalone PC with no modem and therefore no Internet connection 
> > and RH
> > > 9.0 installed I am unable to get the printer to work.
> >
> >Thanks Ray!
> >
> >In /etc/hosts I had to remove @localdomain from localhost@localdomain and lpd
> >started and placing the print jobs nicely into the print queue, however,
> >nothing is being printed.
> >
> >On booting I get: Starting lp: Warning printer: cannot open '/dev/lp0' 'No
> >such device or address'.
> >
> >dmesg gives: lp: driver loaded but no device found.
> >
> >lsmod shows: parport    2  (autoclean) [lp]
> >
> >I have not an onboard parport but a singel parallel PCI card with chipset
> >NM9805CV. It worked perfectly when I tried it on my other PC with slackware
> >9.1.
> >
> >What have I to do that the device /dev/lp0 is found. It is in /dev/:
> >
> >ls -l /dev/lp0
> >crw-rw----    1 root     lp         6,   0 Apr 28  1995 /dev/lp0
> >
> >Regards
> >--
> >Peter
> 
> Peter -- You will probably get a better answer later from someone who 
> actually uses a parallel printer (mine uses Ethernet; it's been years since 
> I set up a parallel printer on a Linux system) ... but I **think** you also 
> need the module parport_pc to use a parallel printer.
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
