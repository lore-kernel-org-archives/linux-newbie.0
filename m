From: Ray Olszewski <ray@comarre.com>
Subject: Re: Wierd filesystem behavior
Date: Sat, 01 Mar 2003 08:40:59 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030301083629.01f91058@celine>
References: <200303011917.23179.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303011917.23179.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:17 PM 3/1/2003 +0930, Adam Luchjenbroers wrote:
>Output of df -hL
>Filesystem            Size  Used Avail Use% Mounted on
>/dev/hda12             23G   21G  271M  99% /
>/dev/hda7              61M  7.3M   51M  13% /auxboot
>/dev/hda11            2.0G  1.9G   22M  99% /home
>/dev/hda8             358M  2.0K  339M   1% /oldboot
>/dev/hda10            4.0G  3.7G   76M  99% /usr/share/workspace
>/dev/hda5             4.0G  3.6G  184M  96% /var/ftp
>
>In a few instances here, Used + Avail != Size.
>
>Where has the rest of the space gone?

When you create (via mke2fs, for example) a filesystem, you will usually 
see a warning that some of its space (5% is typical) is being reserved for 
the superuser. That reserved portion is not shown as "available" in a "df" 
listing (whether it will show in "used" depends, naturally enough, on 
whether it is being used).

So what you are seeing is quite normal.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
