From: Andrew <ald2@arrakis.es>
Subject: BadAccess
Date: Wed, 22 Feb 2006 17:03:41 +0100
Message-ID: <43FC8B5D.4050703@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

How can I find out what this is telling me?

X Error of failed request:  BadAccess (attempt to access private 
resource denied)
  Major opcode of failed request:  145 (MIT-SHM)
  Minor opcode of failed request:  1 (X_ShmAttach)
  Serial number of failed request:  53
  Current serial number in output stream:  54

I get it when trying to use vlc on an ltsp thin client. The program 
opens, I can select a file to play, but when I start playback vlc quits.

TIA,

Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
