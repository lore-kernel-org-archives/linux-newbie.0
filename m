From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: recursively removing directories
Date: Sun, 30 Jun 2002 10:16:02 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206301016.02829.pa3gcu@zeelandnet.nl>
References: <20020630.060453.-322229.1.matthewstapleton@juno.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020630.060453.-322229.1.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthew Stapleton <matthewstapleton@juno.com>
Cc: linux-newbie@vger.kernel.org

On Sunday 30 June 2002 10:04, Matthew Stapleton wrote:
> The reason I asked is because I expanded a *.tar.gz file to look-at/build
> and then decided I needed to erase the directory later....Thanks for the
> warning....

Ok, well you can read a tar.gz file first with 'zless' you can then navigate 
thro' it with the search option which is '/' an example would be;
zless foo.tar.gz
/INSTALL
Now you will see all instances of the word INSTALL, ctrl-l goes to the next 
instance.
man less will explain.

Another hint to remove dirs is go into the directory to be deleted, then use 
rm -rf * and or rm -rf .* then cd .. rmdir <foo>
That way is a safer method but caution is the word.

>
> Matthew
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
