From: Esa-Pekka Pyokkimies <esa-pekka.pyokkimies@stonesoft.com>
Subject: Anonymous mappings too anonymous.
Date: Fri, 4 Nov 2011 13:54:40 +0200
Message-ID: <op.v4e7dexl6ywr33@esapekka-pc.rad1>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: linux-newbie@vger.kernel.org

Hello!

I have projects which have hundreds of anonymous memory mappings.
I would like to label these mappings similarly like the [heap],
[stack] etc. mappings are labeled in /proc/<pid>/maps.

Code like
mmap(NULL,off,PROT_READ|PROT_WRITE,MAP_PRIVATE|MAP_ANONYMOUS,fd,0);
doesn't work, even if fd is a valid file descriptor.
Ideally I would like to see lines such as
7f0e316e5000-7f0e31ee5000 rw-p 00000000 00:00 0 [my data here]

Is this possible with some sysctl?

t: Esa-Pekka
-- 
Using Opera's revolutionary email client: http://www.opera.com/mail/
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
