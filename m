From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Phantom executables
Date: Mon, 29 Apr 2002 20:43:13 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200204300043.g3U0hDI07271@langhans.hartford-hwp.com>
References: <m33cxj7gfk.fsf@wobble.eth.net> <20020426041540.47f8697f.nbhs2@i-2000.com> <200204262108.g3QL8w312580@langhans.hartford-hwp.com> <20020426215000.GA2765@cam.ac.uk>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020426215000.GA2765@cam.ac.uk> (message from Steven Smith on
	Fri, 26 Apr 2002 22:50:00 +0100)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sos22@cam.ac.uk
Cc: linux-newbie@vger.kernel.org

Steven,

You suggested that my executable that only returns the error, "File
not found" is probably the result of a broken or misplaced
intepreter. When I run (163nogui being the troublesone executable):

	    [root@langhans tex2rtf]# ldd ./163nogui
	    /usr/bin/ldd: ./163nogui: No such file or directory

This means it can't find a library, and so the first question is the
interpreter. I do have /lib/ld-linux.so.2, which is a symlink to
ld-linux.2.2.4.so.

Apparently I was previously also using an old interpreter that was
located on my old hardware, so I copied over
ld-linux.so.1->ld-linux.1.9.5. Now, instead of the error message, ldd
tells me what I need, and this led mt to create a symlink from
libm.so.5 to my new libm-2.2.2.so, after which I get:

  [root@langhans tex2rtf]# ldd ./163nogui
	libm.so.5 => /lib/libm.so.5 (0x40023000)
	libstdc++.so.27 => not found
	libc.so.5 => /lib/libc.so.5 (0x40046000)
	libc.so.6 => /lib/libc.so.6 (0x40184000)
	ld-linux.so.2 => /lib/ld-linux.so.2 (0x402c2000)
	...


It looks like I'll have get the old libstdc++.so.27 and I should be in
business. I see that in rpmfind there's a libc-5.4.46-2 RPM for i386
that provides libstdc++.so.27. I've downloaded but not yet installed
it.

It looks like I should simply install this old libc-5, and it will
provide the libstdc++.27 that I need. However, I hope this
installation of old libraries won't upset my system.  

I mention all this in the hope will confirm I'm on the right track and
that I should not suffer ill effects from installing the RPM.

Haines Brown

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
