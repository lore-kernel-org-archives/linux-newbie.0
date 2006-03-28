From: Peter <heisspf@skyinet.net>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Tue, 28 Mar 2006 10:59:59 +0800
Message-ID: <200603280259.k2S2xxLA004035@skyinet.net>
References: <20060326185531.GA1485@lnx2.kvinet.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sun, 26 Mar 2006 13:55:31 EST."
             <20060326185531.GA1485@lnx2.kvinet.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Thanks Hal!

As I mentioned in another mail your suggestion of "cat file > /dev/lp0" works 
in root when there is no Internet connection. However, I cannot print when 
disconnected using "cat file | lpr". Giving lpq it will just sit doing nothing 
when not connected.

I installed kernel 2.6.13 and the above is the same. However, there is a 
provision for parallel port for local printer in gnome-cups-manager unlike in 
kernel 2.4.14.4 there is that provision only for Network printer. Beside the 
point with 2.6.13 I have no sound since module snd_via82xx can not be found. 
Beats me.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
