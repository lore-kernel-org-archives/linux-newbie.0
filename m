From: lawson_whitney@juno.com
Subject: Re: ssh error message
Date: Mon, 9 Sep 2002 22:25:45 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020910.205536.134671024.0.lawson_whitney@juno.com>
References: <200209090046.g890kY001155@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209090046.g890kY001155@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pfheiss@philonline.com
Cc: arwbackup@worldnet.att.net, linux-newbie@vger.kernel.org

On Mon, 9 Sep 2002, Peter wrote:
>
> Sep  8 09:52:46 philonline apmd: apmd startup succeeded
> Sep  8 09:52:46 philonline sshd: Starting sshd:
> Sep  8 09:52:46 philonline sshd: execvp: No such file or directory

Aha! sshd.  I thought it was odd to try to run ssh as a daemon.

try "file /usr/sbin/sshd"
"ldd /usr/sbin/sshd" for details on shared library problems;
see if user 0 can run it from the command line:
"/usr/sbin/sshd"

Lawson
---oops---





________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
