From: network_gauner <network_gauner@seznam.cz>
Subject: Re: JEdit install
Date: Tue, 05 Oct 2004 20:26:00 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <ck37b6$g0q$1@sea.gmane.org>
References: <4147DDF5.8000601@pobox.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4147DDF5.8000601@pobox.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

> I'd like to install and use jedit on Fedora Core 2.
> 
> I understand that it requires that java be installed first. When I yum 
> for either java or jedit, neither package is found.
> 
> I went to Sun's site to get java but it was too confusing for a newbie. 
> Can anyone explain how to install these packages from the command line 
> in Fedora Core 2?

1) Download package jedit-4.0.3-1.noarch.rpm
    (google will find it)

2) make yourself a superuser (the simplest way is typing 'su' /without 
aphostrophes/ and enter root password) and type
rpm -Uvh jedit-4.0.3-1.noarch.rpm

That's all! Now you can run it typing 'jedit'

Zdenek

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
