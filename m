From: Paulo Jorge de Oliveira Cantante de Matos <pocm@netvisao.pt>
Subject: Kernel seems to be blocking messages
Date: Sat, 21 Feb 2004 00:45:39 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1077324339.11565.7.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-admin@vger.kernel.org, linux-newbie@vger.kernel.org

Hi all, 
I have a server running 2.6.2-rc1, and I was happily installing
vpopmail and reading the vpopmail gentoo guide (www.gentoo.org). Somehow
(don't ask me
why) every net connections seem to stop and get blocked. Now I cannot
make any socket connection. For example: 

# ping localhost 
PING descartes.geniousdomain (127.0.0.1) 56(84) bytes of data. 
ping: sendmsg: Operation not permitted 
...

Any ideas on how to unblock the situation? 

Cheers,
-- 

Paulo J. Matos : pocm [_at_] mega . ist . utl . pt
Instituto Superior Tecnico - Lisbon
Computer and Software Eng. - A.I.
 - > http://mega.ist.utl.pt/~pocm
---
        -> God had a deadline...
                So, he wrote it all in Lisp!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
