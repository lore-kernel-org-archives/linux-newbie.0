From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Wierd filesystem behavior
Date: Sat, 1 Mar 2003 19:17:23 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303011917.23179.Adam@Luchjenbroers.com>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Output of df -hL
Filesystem            Size  Used Avail Use% Mounted on
/dev/hda12             23G   21G  271M  99% /
/dev/hda7              61M  7.3M   51M  13% /auxboot
/dev/hda11            2.0G  1.9G   22M  99% /home
/dev/hda8             358M  2.0K  339M   1% /oldboot
/dev/hda10            4.0G  3.7G   76M  99% /usr/share/workspace
/dev/hda5             4.0G  3.6G  184M  96% /var/ftp

In a few instances here, Used + Avail != Size.

Where has the rest of the space gone?

-- 
"Unix is user-friendly. It just isn't promiscuous about which users it's 
friendly with." - Steven King

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
