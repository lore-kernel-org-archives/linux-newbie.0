From: "Tom Beer" <mailings@analogon.com>
Subject: Re: re[2]: lost in samba land
Date: Fri, 17 May 2002 20:56:48 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00e901c1fdd4$9bffa100$0901a8c0@system>
References: <3CD82F2F00009C6F@pop3host003.wanmail.net> (added by    postmaster@wanmail.net)
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org

Hi Alan,


> Played yes, have tried so many things it is all a blur.  I think the error was
ldap related so I started chasing down the openldap avenue.  I think perhaps my
ldap database is not created and am having trouble inferring from the documents
the steps to make one from scratch for only a handful of users/resources.
>
> Another hint that came my way was that it appears a NT server is trying to be
found, which non exists.  I will try to find the PDC manual pages and correct
that in smb.conf this evening.
>

don't try to walk different avenues at once. I would suggest that
you may start with samba and NT password authentication.
The reason is, that it is the straight forward problem. Ldap is a - at
least for me - more complicated issue cause it is more complex
to authenticate a user with. If you got it running with "normal"
passwd authentication, then start to mingle the ldap issue. This
reduced complexity to your approach and leads to easier recognition
of errors. For the ldap issue I would recommend asking the openldap
mailing list, if you haven't already.

http://www.openldap.org/lists/openldap-general/200002/index.html


Greets Tom



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
