From: Pierre Rousselet <pierre.rousselet@wanadoo.fr>
Subject: Re: Install location(s)
Date: Mon, 08 Apr 2002 23:02:56 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CB20580.1090204@wanadoo.fr>
References: <m3ofgui987.fsf@wobble.eth.net> <007a01c1df33$c2ee2e40$8c01a8c0@wild.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Christoph <christoph23@charter.net>
Cc: linux-newbie@vger.kernel.org

Christoph wrote:
 > Apologies if this is a stupid question.  And apologies for all
 > the stupid questions that are sure to come from me in the
 > weeks to follow. :p  I take heart that since this is a newbie
 > list, I'm sure that you guys have fielded plenty.
 >
 > In any case, my question:  where should you typically install
 > new software?  For example, I'm getting ready to look into
 > and install Samba on my Linux (RH 7.2) box.  I've DL'd it
 > already and have been reading the documentation but have
 > yet to make and install it.  So, where should it (and anything
 > else I plan to install) go to make it easier to manage and
 > administer?

1) If the management of installed packages is a concern, you would
better unpack a RH binary package.

2) I assume many ready made scripts coming with RH expect to find the
software installed as per their own specs. The box would not boot if a
startup script has a line as "/bin/mount / ro" when mount is installed
in /usr/bin. For this reason, you must be carefull when installing
util-linux, sh-utils, textutils, net-tools and all the basic utilities.

3) A package is compiled with a given --prefix --exec-prefix
--sysconfdir and so on, you easily break the software when you split the
executable, the libraries, the config files in directories which are not
the ones given at compile time. If you install samba in /usr/local/samba
the config file smb.conf is looked for in /usr/local/samba/lib.

4) For most applications (internet, multimedia, office...) you are quite
free to choose the install path provided that the environment variables 
are properly set to tell the system where the binaries and the libraries 
are.

5) If you build samba yourself, the default install path is 
/usr/local/samba. It is not necessary to add /usr/local/samba/bin to 
your PATH if you write a start-samba script and put it /usr/bin. It 
would have the lines:
#!/bin/sh
/usr/local/samba/bin/smbd -D
/usr/local/samba/bin/nmbd -D


Pierre
-- 
------------------------------------------------
   Pierre Rousselet <pierre.rousselet@wanadoo.fr>
------------------------------------------------


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
