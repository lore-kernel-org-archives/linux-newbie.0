From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: Re: path locations
Date: 12 Jul 2003 22:21:56 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1058062916.2056.8.camel@goldfinger.orbdesigns.com>
References: <200307121947.50580.sotl155360@earthlink.net>
	 <200307121952.17152.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307121952.17152.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frank Roberts - SOTL <sotl155360@earthlink.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Sat, 2003-07-12 at 19:52, Frank Roberts - SOTL wrote:
> Hi All
> 
> I know that part of the path statement is located in /home/<user/.bashrc
> and part is located in /root/.bashrc but I believe that there is another
> system location for another part of the path statement.

Yep. When you login as ~user, you get ~user's path spec from ~/.bashrc,
that's true for the root user, too. That is, when you login as 'frank',
you never, ever source /root/bashrc. 

The system wide basis path is often (but not always) found in
/etc/profile.

> I would appreciate it if some knowledgable person would enlightenment me as
> to the location of this third part.

So, just to flog a dead horse, there is no third part. There is
/etc/profile, which is the basis, then any additional pathing should be
added through something like a 

export PATH=$PATH:/opt/foo:/usr/bar

in ~/.bashrc, whether a normal or superuser.

HTH,

.brian

-- 
Brian Bilbrey: bilbrey@orbdesigns.com and http://www.orbdesigns.com/
    First they came for the verbs, and I said nothing,for
    verbing weirds language.  Then, they arrival for the nouns
    and I speech nothing, for I no verbs. - Peter Ellis

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
