From: Joaquim Laureano <laureano8@comcast.net>
Subject: Strange users listed by repquota
Date: Mon, 26 Apr 2004 21:54:16 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1083030856.15808.33.camel@dell1500>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

When I execute the command "repquota -a" I get the listing of quota
values for all the users listed in /etc/passwd plus a few other as listed
below:

#307      --    1156       0       0             67     0     0
#1001     --     804       0       0             61     0     0
#253      --    5580       0       0            782     0     0
#37725    --    2196       0       0             79     0     0
#507      --       0       0       0              1     0     0
#1000     --     136       0       0             11     0     0
#516      --       0       0       0              1     0     0
#6000     --     100       0       0              9   0     0

The number of these strange "characters" is increasing overtime.
Does anyone know what is at work here? 
Thank you.

-- 
Joaquim Laureano 
Email: laureano8@comcast.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
