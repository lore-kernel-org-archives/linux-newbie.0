From: Peter <heisspf@skyinet.net>
Subject: Re: Skype wont't open
Date: Wed, 02 Mar 2005 10:07:50 +0800
Message-ID: <20050302020750.EF01617D14@heisspf>
References: <200503010758.23060.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
In-Reply-To: Your message of "Tue, 01 Mar 2005 07:58:22 +0100."
             <200503010758.23060.pa3gcu@zeelandnet.nl> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux <linux-newbie@vger.kernel.org>

Is it possible that the kernel has something to do that skype will not open in 
slackware10 instead aborts with:

skype: relocation error: /usr/lib/qt/lib/libqt-mt.so.3: undefined symbol: 
XkbSetPerClientControls

My kernel in slackware10 is 2.4.26 whereas in Fedora2 where skype works 
flawlessly the kernel is 2.6....

What is that anyhow XkbSetPerClientControls ?

Besides having tried the static and dynamic version I tried as well the rpm 
version which I have in Fedora, made a tgz file with rpm2tgz and trying to run 
it I get the identical error message.

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
