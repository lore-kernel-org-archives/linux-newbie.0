From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Re: Networking issue
Date: Fri, 3 Jan 2003 21:01:07 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301032101.07628.Adam@Luchjenbroers.com>
References: <5.1.0.14.1.20030102230450.0211b230@celine>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030102230450.0211b230@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Friday 03 Jan 2003 4:39 pm, Ray Olszewski wrote:

Got everything pretty much fixed, except for one thing.

Something perioically seems to re-add a line to hosts.deny that forbids 
connections from everything but localhost. 
/proc/sys/net/ipv4/icmp_echo_ignore_all also gets reset to 1 (but this 
happened at a different time)

/var/spool/cron has no entries

How can I find the problem?

-- 
"MS-DOS is to computing as the black plague was to Europe" - NH

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
