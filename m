From: "Tom Beer" <mailings@analogon.com>
Subject: lost in wonder-land
Date: Mon, 20 May 2002 00:25:29 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <005401c1ff84$1938bfc0$0901a8c0@system>
References: <20020518183319.JSUI11146.mtiwmhc22.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Womack <arwbackup@worldnet.att.net>
Cc: linux-newbie@vger.kernel.org

Hi,

> In general I like the kiss protocol..  But it appears I have to attack from
two avenues
>
> when I go to security=user on the NT authentication side I get:
>
> [Alan@Webby Alan]$ smbclient //webby/WinShare -U Alan
> added interface ip=192.168.0.5 bcast=192.168.0.255 nmask=255.255.255.0
> Password:
> session setup failed: NT_STATUS_LOGON_FAILURE
> [Alan@Webby Alan]$
>

This is a samba passwd issue in conjunction with a nt password
authentication mechanism. This is widely documented. Take a look at
http://www.samba.org/samba/docs/ENCRYPTION.html

I hope this will help for your purpose to setting up the nt - linux
interface.

> and on setting up ldap:
>
> [root@Webby openldap]# ldapadd -x -h localhost -D
"cn=manager,dc=WEBBY,dc=com" -f base.ldif -W
> Enter LDAP Password:
> ldap_bind: Can't contact LDAP server
>

If you are using PAM authentication through xinetd you have to
set up an entry in xinetd.d for Ldap services to provide a socket
and, additionally in /etc/pam.d/.
If you use inetd you have to modify inetd.conf. If you're using
s/key or some other authentication sheme, modifications will vary.
Then you should consult the Security Howto. Besides, the Ldap socket
errors could result from Outlook (or other) Front end misconfigurations.

Greets Tom








-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
