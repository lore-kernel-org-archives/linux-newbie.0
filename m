From: Peter <heisspf@skyinet.net>
Subject: Re: No Locate for User
Date: Mon, 25 Apr 2005 16:33:39 +0800
Message-ID: <200504250833.j3P8XdeI010183@skyinet.net>
References: <426C7ABC.3000007@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sun, 24 Apr 2005 22:06:04 MST."
             <426C7ABC.3000007@comarre.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org


ray@comarre.com said:
>  Or try adding all users who  need to use locate to the group slocate (in /
> etc/group ... perhaps  Fedora uses this trick to make locate work in mode
> 640?).

Fedora: /etc/group/slocate:x:21

Slackware: /etc/group/slocate::21

I added user /etc/group/slocate::21:user

Same: Permission denied

Regards



-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
