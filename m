From: james niland <bareego@yahoo.com>
Subject: missing lib
Date: Sat, 7 Dec 2002 04:24:07 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021207122407.29019.qmail@web11404.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Seems like the software requires a library it can't
find. A common place for such libraries is /usr/lib

Have a look in that directory to see if there is a
library that looks almost like the one you want, which
is 
libvgagl.so.1
If there is one, you make a symlink to it, so your
program is able to find it with this :

ln -s libvgagl.x.x libvgagl.so.1
(with libvgagl.x.x being the other name you found)
then try running the program again

If you should not have that library in /usr/bin you
might want to do a search for that file on
www.rpmfind.com. That will tell you in which rpm you
can find that lib. Then you'll just have to download
the appropriate rpm and install it.

Hope that helps
James Niland



you wrote
Greetings
I just installed the new 'add-on' ZGV for Basiclinux. 
I untarred it as
suggested and tried the command 'zgv' --- nothing.  So
then I typed
"chmod +x zgv " and tried the command 'zgv'....still
nothing.  I located
*zgv in my home directory under /usr/bin and tried
(from mc) to execute
from there.  I get the message "
$: ./zgv
./zgv: can't load library 'libvgagl.so.1'
I get the same result when I try 'seejpg' (not sure if
that is the
correct name, my laptop, which I was just looking at
had its battery die!)
Any suggestions?
Cheers
Neil T.

--
Arachne/DRdos-Mandrake9.0/Basiclinux-QrpHamRadio
http://www.qsl.net/wa4chq : 

__________________________________________________
Do you Yahoo!?
Yahoo! Mail Plus - Powerful. Affordable. Sign up now.
http://mailplus.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
