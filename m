From: Ray Olszewski <ray@comarre.com>
Subject: Re: Limiting download with Squid
Date: Tue, 11 May 2004 07:22:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040511071352.01f93e00@celine>
References: <00db01c4373c$ca46a790$0532a8c0@sudhir>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00db01c4373c$ca46a790$0532a8c0@sudhir>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:16 PM 5/11/2004 +0530, Sudhir Barwal wrote:
>Hi everybody,
>I have the following config :
>Linux  : RedHat 8.0
>Squid : 2.5STABLE1
>The above system is working as a proxy server for all the local LAN clients.
>The problem :
>
>My ISP is allowing the total download say 1GB per month. If the download is
>exceded that limit they are charging extra money for that.
>
>My Question :
>
>Is there a way so that I can restrict the client to say
>10 Mb for 1 group
>50 Mb for another group
>and so on..
>I want this restriction on IP basis( e.g. say for 192.168.50.1 to
>192.168.50.50 should be allowed to download 10Mb and after that they should
>get the message ...something like ..."your download limit is over for the
>current month" or simply they should not be allowed to download anything
>beyond that limit, the same is true for other clients also and for
>192.168.50.55 to 192.168.50.90 permissible limit should be 50Mb)
>
>I have looked into the "Delay pool" option of Squid but that will be
>applicable to all the users.(Since there are some executives for whom I have
>to allow unlimited download, I know that they are not downloading much, and
>just surfing the net for 1-2 hours etc.)
>
>Please guide me to the right pointers.

You appear to be looking in the right place.

I have not actually done this myself, but as I read the docs, it is 
possible to set up multiple delay pools and apply them to different users 
(that is, IP addresses or address ranges). See 
http://quark.humbug.org.au/publications/squid/aclsquid.html for an intro to 
this approach ... the page indicates that the issue is an important one in 
Australia. The spec includes providing for a delay pool with unlimited 
access, which would seem to be what you want for your VIP users.

Delay pools themselves do not do *quite* what you want overall, but their 
function may be close enough to serve your actual needs.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
