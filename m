From: Andrew <ald2@arrakis.es>
Subject: nfs mounted directories are inaccessible
Date: Thu, 30 Sep 2004 13:14:50 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <415BEAAA.5020806@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

NFS server running Mandrake 10.0, client running Slackware 9.0.
NFS server running Mandrake 9.0, client running Slackware 10.0.

Both cases show the same problem: the remote directory is mounted, but 
any attempt to access it on the client 'hangs', i.e. no response, cursor 
blinks, no prompt, I have to switch to a new console to get anything done.

I have tried both manual and automatic mounting. (Even though the 
mounting itself does not seem to be the problem).

The two servers also share these directories without any trouble.

The only obvious (to me) point is that it only and always happens with a 
Mdk server and Sw client. Can there be some kind of incompatibility?

TIA,
Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
