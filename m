From: Peter <heisspf@skyinet.net>
Subject: Re: Skype wont't open
Date: Wed, 02 Mar 2005 15:33:10 +0800
Message-ID: <20050302073310.E9506207D8@heisspf>
References: <200503020751.31499.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
In-Reply-To: Your message of "Wed, 02 Mar 2005 07:51:31 +0100."
             <200503020751.31499.pa3gcu@zeelandnet.nl> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Thanks Adam!

My /etc/ld.so.conf is practically the same:

/usr/local/lib
/usr/X11R6/lib
/usr/i486-slackware-linux/lib
/opt/kde/lib
/usr/lib/qt/lib
/usr/local/tmake/lib
/usr/lib
/usr/local/ActiveTcl/lib
/usr/include
/usr/local/lib/sigc++-1.2
/lib

and ls -al /usr/lib/qt
/usr/lib/qt -> qt-3.3.3

After this installation of qt-3.3.3 I did ldconfig.

I have no other version qt installed.

ls /usr/lib/qt*
/usr/lib/qt:
README-QT.TXT  examples    lib      plugins
bin            extensions  mkspecs  tutorial
doc            include     pics

/usr/lib/qt-3.3.3:
README-QT.TXT  examples    lib      plugins
bin            extensions  mkspecs  tutorial
doc            include     pics

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
