From: "Little, Chris" <Chris.Little@okdhs.org>
Subject: ftp issues
Date: Thu, 14 Nov 2002 11:23:12 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <92091C60D5E2B74CB77C1FDB84F5FA76EA61@s99mail02.okdhs.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

trying to ftp an oracle export.  this happens

ftp> get expKIDSaa.20021110.dmp
local: expKIDSaa.20021110.dmp remote: expKIDSaa.20021110.dmp
227 Entering Passive Mode (10,5,20,30,18,180)
150 Opening BINARY mode data connection for expKIDSaa.20021110.dmp
(1048576000 bytes).
  6% |*****
| 63560 KB  775.22 KB/s    20:38 ETA
ftp: expKIDSaa.20021110.dmp: short write
  6% |*****
| 64124 KB  775.17 KB/s    20:38 ETA
421 Service not available, remote server has closed connection.
65663024 bytes received in 01:22 (774.66 KB/s)
ftp: No control connection for command.
ftp>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
