From: Ray Olszewski <ray@comarre.com>
Subject: Re: automatic service start at startup
Date: Mon, 10 Jul 2006 12:09:20 -0700
Message-ID: <44B2A5E0.5080700@comarre.com>
References: <44B2A02F.5040304@laposte.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44B2A02F.5040304@laposte.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

ali shahrokni wrote:
> Hello all,
> I am wondering how I can run "autofs start " automatically at startup of 
> my system, so that I can log on to the network directly.
> I would appreciate any hints.

The *exact* answer to this is a bit distro dependent, and you don't say 
what distro you are running.

The *general* answer is that you add it (an autofs start script) to the 
set of scripts that will be run when the system inits. The phrasing 
"autofs start" usually goes with the sort of init script setup that has 
something like (as I say, the details vary slightly among distros):

	a script called /etc/init.d/autofs
	a symlink to it called something like /etc/rc2.d/S45autofs

The script is run by init (indirectly; it is actually run by the 
"primary" init script named in /etc/inittab ... assuming. of course, the 
your system defaults to runlevel 2 -- otherwise you need a different 
symlink) and it (not autofs itself) knows the meaning of the "start" 
switch and will do all the hoo-hah needed to start the daemon correctly.

There are probably still some distros around (Slackware, perhaps?) that 
don't use this for of init-script nesting. In that case, you'll need to 
create a short script, or perhaps add some lines to 
/wherever-your-distro-puts-it/rclocal to start the daemon.

I don't have autofs running here, so this is just an approximate answer 
... really, just an example of answering the general question "How do I 
use init to start daemons?". But it should serve to get you started.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
