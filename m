From: Peter <pfheiss@philonline.com>
Subject: Re: ssh error message
Date: Thu, 12 Sep 2002 10:42:23 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209120242.g8C2gNa01977@philonline.com>
References: <20020910.205536.134671024.0.lawson_whitney@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 09 Sep 2002 22:25:45 -0400."
             <20020910.205536.134671024.0.lawson_whitney@juno.com> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


lawson_whitney@juno.com said:

> On Mon, 9 Sep 2002, Peter wrote: >
> Sep  8 09:52:46 philonline apmd: apmd startup succeeded
> Sep  8 09:52:46 philonline sshd: Starting sshd:
> Sep  8 09:52:46 philonline sshd: execvp: No such file or directory
> Aha! sshd.  I thought it was odd to try to run ssh as a daemon.

> try "file /usr/sbin/sshd" "ldd /usr/sbin/sshd" for details on shared
> library problems; see if user 0 can run it from the command line: "/
> usr/sbin/sshd" 

]# ldd /usr/sbin/sshd
ldd: /usr/sbin/sshd: No such file or directory.

In none of the /bin /sbin directories is there any sshd file and I do not know 
in which  program it is hidden in any of the install CDs of RH7.2.

These programs are installed:
openssh-3.1p1-3
openssh-askpass-3.1p1-3
openssh-askpass-gnome-3.1p1-3
openssh-clients-3.1p1-3

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
