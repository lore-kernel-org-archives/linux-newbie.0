From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA 
  GeForce4)
Date: Tue, 23 Mar 2004 09:45:23 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040323094003.01fc9810@celine>
References: <405FAC4A.1000609@sancharnet.in>
 <5.1.0.14.1.20040322210149.01fdd960@celine> <406071B1.7030305@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <406071B1.7030305@sancharnet.in>
References: <405FAC4A.1000609@sancharnet.in>
 <5.1.0.14.1.20040322210149.01fdd960@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:49 PM 3/23/2004 +0530, joy wrote:
[...]
>>(NOTE: The one thing I cannot vouch for is that kernel-source-2.4.18 and 
>>kernel-image-2.4.18-k7 packages actually match up. I always compile my 
>>own kernels after installing, so I have no actual experience with using 
>>the Debian kernel-image-* packages.)
>
>yup, I suggest the same. get your own kernel sources and compile them. if 
>you get a 2.6 series kernel, you need to upgrade a few packages on the 
>system( the version numbr of the software  required is found in the 
>sources in /Documentation/Changes.I suggest you get a 2.6, it's worth the 
>download and you will really feel the difference and also the 5336 version 
>has support for the 2.6 series and I see no reason you shuld not take 
>advantage of this.

I haven't myself switched to the 2.6.x kernel series yet, but I have seen 
reports warning of problems with some external add-in modules, including 
the nvidia drivers ... showing up as high CPU loads caused, I think, by 
context switching not being handled efficiently. (Also problems with ivtv 
and lirc, if memory serves, and maybe some of the wlan stuff.)

Caution ... or, better, patience, as this stuff will certainly get worked 
out ... *may* be indicated here.

Joy - do you actually have an nvidia framebudffer module running with 2.6.x?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
