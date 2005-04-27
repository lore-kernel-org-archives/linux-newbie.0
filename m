From: simon <simon.guinot@laposte.net>
Subject: Re: filtering .mp3 packets
Date: Wed, 27 Apr 2005 17:22:34 +0200
Message-ID: <426FAE3A.8070709@laposte.net>
References: <Pine.LNX.4.21.0504271523260.951-100000@hestia>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0504271523260.951-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org, wstanard@palmertrinity.org


hello Bill

>>We've been having some difficulty finding the vocabulary to describe
>>filtering content (for example .mp3 files) over TCP-IP. We would like to
>>set up our Linux server to do some "trapping" of packets containing .mp3
>>files with an eye toward using Linux enabled routing to clean our campus
>>of an overwhelming dose of music downloads and trading. To do this
>>exploration, I need to know what I should call the process I'm trying to
>>perform. Any vocabulary that you can suggest?
>>
>>Bill Stanard

may be you can write a kernel module using the netfilter to perform that...
netfilter is a very powerful way to build every kind of filter.
you can find some informations here : 
http://www.ouah.org/p61-0x0d_Hacking_the_Linux_Kernel_Network_Stack.txt

regards

simon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
