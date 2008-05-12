From: Alexei Babich <a.babich@rez.ru>
Subject: Re: crosscompiling for ARM
Date: Mon, 12 May 2008 11:05:50 +0600
Message-ID: <200805121105.51009.a.babich@rez.ru>
References: <200805121038.20523.a.babich@rez.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200805121038.20523.a.babich@rez.ru>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

solved:
$make ARCH=arm CROSS_COMPILE=arm-unknown-linux-gnu-

-- 
Regards,
Alexei Babich, chematic engineer, OOO NPP "Rezonans", Chelyabinsk, Russia
http://www.rez.ru
Jabber ID: impatt@jabber.ru
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
