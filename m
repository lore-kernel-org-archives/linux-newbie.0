From: "Korosi Akos" <korosiakos@mailbox.hu>
Subject: xfs problem
Date: Sat, 20 Jul 2002 15:23:55 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020720132355.18404.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Newbie <linux-newbie@vger.kernel.org>

Hi!

The dial-up problem has been solved, but another problem has
occured (unfortunately)...
When I dial-up to provider and got in, and after
start a web-browser (opera (6.02), mozilla (0.9.9), netscape (4.79)) 
and type in an URL which I want to visit, the xfs dies!
Sometimes the browser get to the web page, but very soon xfs dies.
(I can not use internet more than 1 minute!)
And so the browser dies too with segmentation fault.
(opera writes an error that it can't find any fonts and dies...)

After I restart xfs (or just start, because stop says: [FAILED],
but start is [ OK ]) everything is good again, but when I try
again any URL-s, it dies again (very soon).

Here is the config for xfs:

/usr/X11R6/lib/X11/fs/config: ******************************

#
# Default font server configuration file for Red Hat Linux
#

# allow a max of 10 clients to connect to this font server
client-limit = 10

# when a font server reaches its limit, start up a new one
clone-self = on

# alternate font servers for clients to use
#alternate-servers = foo:7101,bar:7102

# where to look for fonts
#
catalogue = /usr/X11R6/lib/X11/fonts/misc:unscaled,
	/usr/X11R6/lib/X11/fonts/75dpi:unscaled,
	/usr/X11R6/lib/X11/fonts/100dpi:unscaled,
	/usr/X11R6/lib/X11/fonts/misc,
	/usr/X11R6/lib/X11/fonts/Type1,
	/usr/X11R6/lib/X11/fonts/Speedo,
	/usr/X11R6/lib/X11/fonts/cyrillic,
	/usr/X11R6/lib/X11/fonts/CID,
	/usr/X11R6/lib/X11/fonts/local,
	/usr/X11R6/lib/X11/fonts/latin2/Type1,
	/usr/share/fonts/default/TrueType,
	/usr/share/fonts/default/Type1,
	/usr/share/AbiSuite/fonts,
	/usr/share/fonts/ja/TrueType,
	/usr/share/fonts/ISO8859-2/misc:unscaled,
	/usr/share/fonts/ISO8859-2/75dpi:unscaled,
	/usr/share/fonts/ISO8859-2/100dpi:unscaled,
	/usr/share/fonts/ISO8859-2/misc,
	/usr/share/fonts/ISO8859-2/Type1,
	/usr/share/fonts/ISO8859-2/75dpi,
	/usr/share/fonts/ISO8859-2/100dpi

# in 12 points, decipoints
default-point-size = 120

# 100 x 100 and 75 x 75
default-resolutions = 75,75,100,100

# use lazy loading on 16 bit (usually Asian) fonts
deferglyphs = 16

# how to log errors
use-syslog = on

# don't listen to TCP ports by default for security reasons
no-listen = tcp

END_OF_FILE **************************************************

I don't know if 'no-listen = tcp' is the source of the problem.
What do you think?
(I don't want less security, but if this is needed for good work,
than I will do it)

In /var/log/messages no error is written by xfs.
I tryed than to make an error/warning output file, whit option:
error-file = /tmp/xfs-error-log

Sometimes it writes nothing, but once it wrote something like:
window with negative edge?
(I restarted after xfs, and the message was gone, and I didn't
saved it (like a fool), and the next two times no message was 
written, I'm very sorry...)

How could I generate more information??

Thanks in advance (again),
Akos

p.s.: if you can, please send your reply to
korosi@eunet.yu too. Thanks.

--------------------------------------------------
http://www.mailbox.hu - Mert levelezni kell...

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
