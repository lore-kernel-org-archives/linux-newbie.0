From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re[4]: lost in samba land
Date: Sat, 18 May 2002 11:33:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020518183319.JSUI11146.mtiwmhc22.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: Tom Beer <mailings@analogon.com>, linux-newbie@vger.kernel.org

In general I like the kiss protocol..  But it appears I have to attack from two avenues

when I go to security=user on the NT authentication side I get:

[Alan@Webby Alan]$ smbclient //webby/WinShare -U Alan
added interface ip=192.168.0.5 bcast=192.168.0.255 nmask=255.255.255.0
Password:
session setup failed: NT_STATUS_LOGON_FAILURE
[Alan@Webby Alan]$


and on setting up ldap:

[root@Webby openldap]# ldapadd -x -h localhost -D "cn=manager,dc=WEBBY,dc=com" -f base.ldif -W
Enter LDAP Password:
ldap_bind: Can't contact LDAP server


re:

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




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
