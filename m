From: "Ohadi, Hamid" <hamid.ohadi@imperial.ac.uk>
Subject: logon by LDAP only for local users
Date: Tue, 18 Jan 2005 00:45:52 +0000
Message-ID: <20050118004552.GA1837@imperial.ac.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi all,

We have a huge central LDAP server which is listing all users and their passwords.
I have my own SUSE linux server on that domain. What I need to do is to enable my 
users to be verified by that LDAP server so that I don't ask them to type their
passwords everytime I create a new user. The problem is that I don't want to enable
all other users of the LDAP server to logon my machine. Is it possible to do such a
thing?

regards
Hamid

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
