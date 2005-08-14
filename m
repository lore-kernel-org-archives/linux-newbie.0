From: Arturas Moskvinas <arturas.moskvinas@gmail.com>
Subject: Re: starting a user defined daemon at linux startup.
Date: Sun, 14 Aug 2005 17:32:29 +0300
Message-ID: <4a618d08050814073217c78a5@mail.gmail.com>
References: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
	 <200508130940.51347.pa3gcu@zeelandnet.nl>
	 <Pine.LNX.4.60.0508141137540.20130@lantana.cs.iitm.ernet.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0508141137540.20130@lantana.cs.iitm.ernet.in>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "P.Manohar" <pmanohar@lantana.cs.iitm.ernet.in>
Cc: linux-newbie@vger.kernel.org

> Hai
>    I have written a daemon, and it is working when I load it.
>    Now I want to start that daemon at startup in linux, so that without
> manually running , it has to start along with all the daemons available
> in the system. I came to know that we need to put a script into
> /etc/rc.d/init.d/
> similar to sshd or atd. Do we need to write a script to run my daemon?
> 
> I have the daemon's binary, what should be the script content to run it .

There is a bit difference between distribution, you should tell us at
least what distribution do you use. For example there is an easy way
to add a daemon in Red Hat based distribution, just add the line in
"\etc\rc.d\rc.local" file (it is not the best way do do it, but for
starters it is OK i think so). Often you will find a file named
"skeleton", "template" (or something similar) where you'll find short
description how to write your own start script.

Arturas M.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
