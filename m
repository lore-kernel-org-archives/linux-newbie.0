From: mike <mike@kevino.org>
Subject: Re: Java and Mozilla problem
Date: Wed, 11 Feb 2004 20:42:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <402AF613.20700@kevino.org>
References: <c0eop1$j1l$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <c0eop1$j1l$1@sea.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Dave wrote:

> Several web sites have told me that I need x-java-vm plugin installed 
> in my Mozilla 1.6.  I downloaded it and it says it installed properly. 
> However, when I put about:plugins in the URL of Mozilla, it is not 
> listed and the pages still won't load.
>
> I think the issue is that my Mozilla was loaded a Root and I'm trying 
> to  install the plugin as a user.  I'm afraid I'm too new to know 
> where to turn next.
>
> Any tips would be greatly appreciated.
>
> Dave
>
Just a guess but, make sure you linked your java plugin in your mozilla 
plugins directory.
At the plugin document site http://plugindoc.mozdev.org/linux.html
look under java section and you need to make a soft link in 
/mozilla/plugins
directory something like this
[mike@avatar plugins]$ ln -s 
usr/java/j2re1.4.2_03/plugin/i386/ns610-gcc32/libjavaplugin_oji.so
Or where ever the path is to the libjavaplugin_oji.so on your system 
then restart mozilla and
it should be there when you type about:plugins

You may have to be root to make the link, I forget.

Mike


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
