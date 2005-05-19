From: Ray Olszewski <ray@comarre.com>
Subject: Re: help, root overpowered ?
Date: Wed, 18 May 2005 19:11:20 -0700
Message-ID: <428BF5C8.2010509@comarre.com>
References: <4288F4D8.8050609@telkom.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4288F4D8.8050609@telkom.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: sn00bb0rn@telkom.net
Cc: linux-newbie@vger.kernel.org

sn00born wrote:
> Dear all,
> 
> I am a newbie. I play with linux CLI now (using chmod and chown).
> It seems to me that if I am using su -as root- I can use all directories 
> and files that I -by my own setting- not allowed. For instance I have 
> set chown 700 to some files and folder as a normal user. I think it will 
> prevent anyone else using it (even root). But when as root I can still 
> read the content of thet file.
> My question is, is that a normal in *nix world ? I imagine how powerfull 
> an computer administrator of a company will be. He can read *all 
> sensitive data* that beyond his level. Please tell me, and point me 
> where my understanding of this matter that was wrong. Sorry for the 
> unproper English.
> 
> Thank you very much in advance.

The answer to your question is YES. In a Unix setting, the root user 
cannot in practice be restricted from accessing anything on the system. 
This is not particularly a Unix/Linux thing; my understandling of 
Windows, for example, is that the Admin user there has the same sort of 
privlieged access.

The workaround is to give untrusted administrators more restriected 
privileges than root access. Some-root-level activities can be made 
available to a less-privileged "admin" account, either by using 
permissions or sudo settings or maybe other things I am not thinking of 
right now.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
