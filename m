From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: core dump volumes
Date: Tue, 26 Nov 2002 22:17:17 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021126221717.A2140@neutrino.particles.org>
References: <200211250121.gAP1LRq01890@ev6.be.wanadoo.com> <200211252205.gAPM5eH04772@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211252205.gAPM5eH04772@hartford-hwp.com>; from brownh@hartford-hwp.com on Mon, Nov 25, 2002 at 05:05:40PM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: hammer@revobild.net, linux-newbie@vger.kernel.org

On Mon, Nov 25, 2002 at 05:05:40PM -0500, Haines Brown wrote:
> For whatever it's worth, I'm told that core dumps are an obvious
> target for denial of service attacks, and so they are best not
> generated if you don't think you will use them. This from Bastille,
> which offers to disable core dumping.

Well, maybe. But, in general core files include debugging information in
order to identify where and why an application crashed. You can use gdb
to examine a core file; it has been mentioned lots of times in linux-newbie.

As far as security is concerned, a cracker will probably try to use a
buffer overflow exploit. If he/she doesn't succeed (i.e. if he/she hasn't
make correct calculations) there is a great chance to simply crash the
valnurable application. Programs that segfault can be taken under
control and, if they are suid root, can give someone access to a system.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
