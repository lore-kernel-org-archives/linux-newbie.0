From: wolfgang <wolfgang127jp@ybb.ne.jp>
Subject: what's ${1##*/}
Date: Sat, 21 Dec 2002 08:52:34 +0900
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021221084841.659D.WOLFGANG127JP@ybb.ne.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hi there,

I found the statement below in killproc() of /etc/init.d/functions script.

base=${1##*/} 

I don't understand what this statement doing..
Looks like that put the first argument into variable named base, but
what's ##*/ ?? is this a regular expression ??? hm...

Anyone knows ??

Thank you.
wolfgang-



-- 
wolfgang <wolfgang127jp@ybb.ne.jp>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
