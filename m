From: Amin <amin@siriusbb.com>
Subject: Re: Can't write VFAT filesystem
Date: Wed, 05 Nov 2003 18:20:09 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FA8EAF9.8090007@siriusbb.com>
References: <5.1.0.14.1.20031104083631.01f742c0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031104083631.01f742c0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> 
> 
> Well ... what does "ls -l /mnt/d/My\ Documents" tell you about ownership 
> of and permissions for that directory? Same questions for "ls -l 
> /mnt/d". Checking this info is the obvious place to start ... so basic, 
> really, that I wouldn't check anything else until I had verified that 
> the values reported here were sensible.

Thanks, this worked.  Turned out this was a permissions 
problem after all.  Funny thing, I never think about 
permissions until I don't get them!

Anyway, thanks very much.

Yawar Amin

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
