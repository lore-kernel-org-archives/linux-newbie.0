From: Peter <heisspf@skyinet.net>
Subject: Re: Symlink to Modem Vanishes
Date: Thu, 01 Jun 2006 17:02:03 +0800
Message-ID: <200606010902.k51923Px004137@skyinet.net>
References: <200605312335.17753.david@fierbaugh.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Wed, 31 May 2006 23:35:17 -0400."
             <200605312335.17753.david@fierbaugh.org> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Fierbaugh <david@fierbaugh.org>, linux-newbie@vger.kernel.org

After further reading in the links David suggested I did a googel 'udev 
/dev/modem'
and alas there are a lot of vanishing modems. And there was how to solve the 
problem:
Short of putting ln /dev/ttyS0 /dev/modem into rc.local.

Quote
 I finally found the recipe I needed in a ubuntu forum, using google. What I 
needed was a file named 10-local.rules placed in the /sda3/etc/udev/rules.d 
subdirectory. All the file needed was the line following:

KERNEL="ttyS1", SYMLINK="modem"

Now the modem node in the /dev directory doesn't vanish anymore.
Unquote

Will try it on next reboot
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
