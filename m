From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: problems with ALSA
Date: Wed, 11 Dec 2002 20:46:17 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212112042140.4071-100000@athame.gmpexpress.net>
References: <200212110750.08044.r4mz3z@yahoo.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212110750.08044.r4mz3z@yahoo.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: r4mz3z <r4mz3z@yahoo.es>
Cc: linux-newbie@vger.kernel.org

Have you tried: lspci -v >lspci.log <cr> then had a look inside of
lspci.log to see if you could find your sound card?  If it's a p&P sound
card only this won't work, but if it's in a pci slot it's possible lspci
-v can give you the vendor and type of card which may be enough to get
alsa going correctly.  That should also provide you port info, but even
before that perhaps dmesg >dmesg.log as root and reading down that file to
see if the system even finds a sound card would be useful.

Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
