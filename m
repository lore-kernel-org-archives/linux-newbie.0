From: Haines Brown <brownh@hartford-hwp.com>
Subject: Kerberos and FTP login failure
Date: Mon, 10 Feb 2003 11:07:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302101607.h1AG7gEI031340@hartford-hwp.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've been struggling for some time to get a new web hosting service
going. Since things really should be working, I began to suspect that
my Kerberos V4 (RedHat 8.0) tokens are simply not recognized by the
web hosting server. Here is the exchange:

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

Can anyone offer any insight here?

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
