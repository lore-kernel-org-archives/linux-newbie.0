From: James Ferris <james_e_ferris@yahoo.ca>
Subject: Re:  W$ 2K...
Date: Wed, 30 Jul 2003 12:26:07 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030730121607.00b132c0@pop.mail.yahoo.com>
References: <5.1.0.14.1.20030728115610.01ee9cd8@celine>
 <5.1.0.14.1.20030728064145.01ee9e20@celine>
 <5.1.0.14.1.20030728115610.01ee9cd8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307301701.59937.James.Hatridge@epost.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James.Hatridge@epost.de
Cc: linux-newbie@vger.kernel.org

hosts file is located at C:\WINNT\system32\drivers\etc\hosts
... assuming your W2K is installed to C:\

note, also check that your dns is configured correctly for all internal dns 
references.

Correctly configuring dns is VERY IMPORTANT with w2k.
and there can be 'internal' dns as well as 'gateway' dns.
Gateway is controlled via Network and Dial-up Settings.
Internal (for web-browsing only, really) is controlled via Internet Control 
Panel.
(see Connections tab, LAN Settings, Advanced Proxy Server, Exceptions...)
yes, hosts file can be used to simplify all of this, but this file is 3rd 
or 4th in the 'use' order.

HTH
James

At 30/07/2003 ; 09:01 AM, you wrote:
>HI Ray et al...
>
>On Monday 28 July 2003 21:15, Ray Olszewski wrote:
> > [...]
>
>Ok, I've almost got it all working! First of all I went into setup etc and
>clean it all out and started over with only Penguin's numbers in it. That was
>the problem. I had two different numbers in it.
>
>Now I can ping both ways without problems. I can also see my web site on 
>Opus.
>BUTTTT the problem now is that I have to input the address as
>
>192.168.17.41/~hatridge/bulletin/
>
>instead of
>
>Opus.epost.de/~hatridge/bulletin/
>
>as it should be. I think that the problem now is that I don't have a "hosts"
>file on Penguin like I do on Opus. Is there a hosts file in W$2K? What do I
>do to set this up?
>
>Thanks
>
>JIM
>
>Jim Hatridge
>Linux User #88484
>--
>Our country was colonized by the religious, political, economic, and criminal
>rejects of every country in the world. We have been carefully breeding 
>insane,
>obsessive, fanatic lunatics with each other for over 400 years, resulting in
>the glorious strain of humanity known as "Americans". You have to expect
>some... peculiarities.
>
>Read about new German stamps each quarter:
>         http:/www.fecundswamp.net/~hatridge/bulletin
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
