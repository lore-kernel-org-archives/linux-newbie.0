From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: su fails
Date: Tue, 15 Jul 2003 12:20:33 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <oprsckcjqyhmmv6x@smtp.arrakis.es>
References: <5.1.0.14.1.20030714080202.01ef9e68@celine> <oprsa696n7hmmv6x@smtp.arrakis.es> <oprsbalrywhmmv6x@smtp.arrakis.es> <200307142023.43039.pa3gcu@zeelandnet.nl> <oprsbc6ofjhmmv6x@smtp.arrakis.es> <3F133105.7010309@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F133105.7010309@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 14 Jul 2003 15:39:01 -0700, Stephen Samuel <samuel@bcgreen.com> 
wrote:

> It sounds to me like you've been rooted, and somebody installed
> a trojan.  I'd do a full hunt for signs of a rootkit. When in
> doubt (especially if there are ony a few people on your system),
> I'd just load a new OS and migrate the user data over to it.


Now you've got me worried. What would signs of a rootkit be? I thought 
reinstalling shadow had put everything right, but there are still hiccups. 
For example, although I can now su again --that is, it now recognises the 
password-- if I give the wrong password I still get just 'sorry'. Lilo 
failed to load again and I have had to reinstall it. And I get a very 
strange message in my user .xsession-errors file. It says:
'stderr is not a tty - where are you?'
Do I assume the worst?
For what it's worth, GRC reports most ports as stealthed and 113 IDENT and 
5000 UPnP as closed.
TIA,
Andrew
 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
