From: Peter <pfheiss@philonline.com>
Subject: MC Not Opening HTML Files
Date: Tue, 27 May 2003 17:03:21 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030527090326.71661103AE@pfheiss>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

In RH7.3 for quite some time suddenly mc, my main file manager, would not open 
html files any longer within xterm, however, still from the console. Now I 
discovered that if I change in ~/.mc/bindings the line  "Open=if [ x$DISPLAY = 
x ];" to "Open=if [ x$DISPLAY = x:0.0 ];" all works well again.

I have never looked at this file since RH5.2 and mc always opened html files. 
What could have caused such a change that now apparently DISPLAY has a 
different setting? It could be that this change coincided with an upgrade of 
7.3 I had made, which incidentally had a faulty entry in /etc/sysconfig/syslog 
causing logrotate to abort, yet I am not so sure about it.

Have others had similar experiences?

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
