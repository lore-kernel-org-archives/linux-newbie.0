From: Haines Brown <brownh@hartford-hwp.com>
Subject: FTP login failure
Date: Wed, 12 Feb 2003 10:03:50 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302121503.h1CF3oSb014108@hartford-hwp.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux@hartford-hwp.com


I have trouble conntecting by FTP to a new web hosting site. This is
the exchange: 

  $ ftp unix245.hosting-network.com
  Connected to unix245.hosting-network.com.
  220 unix245.hosting-network.com NcFTPd Server (licensed copy) ready.
  500 Syntax error, command unrecognized.
  500 Syntax error, command unrecognized.
  KERBEROS_V4 rejected as an authentication type
  Name (unix245.hosting-network.com:brownh): brown
  331 User brown okay, need password.
  Password:
  530 Login incorrect.
  Login failed.
  ftp> bye

Can anyone offer any insight here? Is there an incompatibility between
Kerberos and the hosting server?

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
