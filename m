From: "ramands" <ramands@indiatimes.com>
Subject: Re: Re: OOPS in Kmalloc
Date: Thu, 24 Apr 2003 14:15:06 +0530
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <200304240813.NAA23499@WS0005.indiatimes.com>
Reply-To: "ramands" <ramands@indiatimes.com>
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Randy.Dunlap" <rddunlap@osdl.org>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

hello randy 
as i am new to kernel level programing 
i do not know how to decode a oops . could you tell me how to do it 
i will mail the exact oops messages in next mail 
right now i am debugging by using printk only 

raman 
"Randy.Dunlap" wrote:



&gt; Hello,
&gt; i am getting OOPS in Kmalloc .
&gt;
&gt; void **data;
&gt; qset = 1000;
&gt;
&gt; dptr-&gt;data = kmalloc(qset * sizeof(char *), GFP_KERNEL);
&gt;
&gt; what could the possible the cause of the error
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
As I am so fond of saying, it's almost always correct to indicate what
kernel version one if referring to in a problem report.

Please decode the oops output and post it here.

~Randy






Get Your Private, Free E-mail from Indiatimes at http://email.indiatimes.com

 Buy The Best In BOOKS at http://www.bestsellers.indiatimes.com

Bid for for Air Tickets @ Re.1 on Air Sahara Flights. Just log on to http://airsahara.indiatimes.com and Bid Now !
