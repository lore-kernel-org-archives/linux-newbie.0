From: joy <gracecott@sancharnet.in>
Subject: Re: X not starting at all
Date: Thu, 15 Jan 2004 09:56:13 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40061665.6000407@sancharnet.in>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: mailing list <linux-newbie@vger.kernel.org>

Hi,
I did what was told of me (i.e apply the minion.de patch) and install to 
my 2.6.1.I tried installing using the modified nvidia installer but it 
would'nt.
So, I  did a make install . the nvidia module was loaded and my 
Xf86config-4 (using debconf) was modified to nvidia.
Now it says could not find module 'nvidia'. the nvidia.o module is in my 
/root/Nvidia/..... folder .sholud I declare this path in the XF86 config-4?
'coz it is still trying to load the modules from 
/usr/X11R6/lib/modules/drivers.

Thanx in adv.,
Joy.

> --------------------------------------------------------------------------------------------------------
> A life without purpose is like a bird that never learnt to fly.......
> I am the bird that regularly flies Lufthansa



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
