From: "Little, Chris" <Chris.Little@okdhs.org>
Subject: chown problems
Date: Thu, 18 Sep 2003 14:46:09 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <9BBB7C9EFEF1874BAC4DC204E867EFAFEDA9C4@s99mail06>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

I'm trying to change the ownership of a file that I as user "oracle" own to
user "u55646"  the following occurs

-rw-r--r--    1 u55646   dba           583 2003-09-18 13:01 rfc1953.log
-rw-rw-rw-    1 oracle   oinstall      418 2003-09-18 12:55 rfc1953.sql
-rw-r--r--    1 oracle   oinstall      583 2003-09-18 13:01 rfc1954.log
-rw-rw-rw-    1 oracle   oinstall      412 2003-09-18 12:55 rfc1954.sql
-rw-r--r--    1 oracle   oinstall     5208 2003-09-18 13:01 rfc1956.log
-rw-rw-rw-    1 oracle   oinstall      415 2003-09-18 12:56 rfc1956.sql
oracle@s99kdd01:/dbatemp/rfcs/KDV1> chown u55646.dba rfc1953.sql
chown: changing ownership of `rfc1953.sql': Operation not permitted
oracle@s99kdd01:/dbatemp/rfcs/KDV1>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
