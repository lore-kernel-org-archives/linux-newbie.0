From: pradeep pradeep <asnvpradeep@yahoo.com>
Subject: Re: Setting Different Hardware modes
Date: Mon, 16 Apr 2007 23:43:40 -0700 (PDT)
Message-ID: <20070417064340.3713.qmail@web51803.mail.re2.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-serial-owner@vger.kernel.org>
Sender: linux-serial-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-serial@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi, 

I am writing a serial driver for my coustom serial hardware which supports different modes. 
like 550,550ex,750,850 and 950 mode. How can i set the hardware to different modes at run time. 
In 8250 the driver identifies the type of the hardware and initialises it in the respective mode. 
But I want to do the hardware setting based upon the users requirement. 
Is there is a property sheet(windows) equivalent. 

Pradeep Annavarapu 
Hyderabad

__________________________________________________
Do You Yahoo!?
Tired of spam?  Yahoo! Mail has the best spam protection around 
http://mail.yahoo.com 
