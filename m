From: mike <mike@kevino.org>
Subject: Re: Java and Mozilla problem
Date: Thu, 12 Feb 2004 20:07:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <402C3F82.7020603@kevino.org>
References: <402B16D6.7030707@vcss.k12.ca.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <402B16D6.7030707@vcss.k12.ca.us>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Dave & Kim Howe wrote:

> Thanks for the reply Mike.  I checked an I have a link from the 
> libjavaplugin_oji.so file to the  mozilla/plugins directory.  I 
> changed the permissions from root to Dave (user) and from root to 
> users (group).  I have RWX permissions.  I made these permission 
> changes to the link, the source file and the source file's directory.  
> Still no go.  Any other tips or suggestions?
>
> Dave


I dont believe there is a need to change permissions. One other thing 
you may
check is later mozillas are built with gcc3.x, you can type 
about:buildconfig into
the addressbar and see what it says.
If gcc3.x, then link should have been made to--> 
/ns610-gcc32/libjavaplugin_oji.so
not-->  /ns610/libjavaplugin_oji.so

Heres a link to a mozilla java faq
http://plugindoc.mozdev.org/faqs/java.html#Linux
it will explain it better.

Other than that, I don't think I can help much more. I've been lucky on 
the plugins
for mozilla, I guess. (knock on wood) ;-)

Perhaps if someone on this list does not reply, you could try a Suse 
list or Mozilla list.
And of course www.google.com is a great search tool.

Good luck
Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
