From: Jim Reimer <wa5rrh@arrl.net>
Subject: Re: Adding data to file name
Date: Mon, 30 Sep 2002 15:19:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D98B1EE.6020907@arrl.net>
References: <001c01c268af$4412e650$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Paul Kraus wrote:
> I have script that calls smbtar. Then for the output file I want it to
> display the date.
> 
> smbtar ..... -t "/home/pdk/backup.MM.DD.YY"
> 
> Where mm.dd.yy is current month date and year.
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com


dt=`date +%m.%d.%y`
smbtar ..... -t /home/pdk/backup${dt}

ought to work.

-jdr-




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
