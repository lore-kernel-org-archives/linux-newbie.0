From: Peter <peter@skyinet.net>
Subject: Re: Gutenbrowser Won't Open
Date: Sat, 28 Feb 2004 12:27:22 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040228042722.B4A701C67F@heisspf>
References: <5.1.0.14.1.20040227084219.01f680d8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 27 Feb 2004 09:05:06 PST." 
 <5.1.0.14.1.20040227084219.01f680d8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks Ray, you are a genius.

First I moved the /usr/local/qt out of the way, then I copied libqt.so.2.3.1 
from RedHat over to /lib in slackware made the symbolic link libqt.so.2 to it 
and gutenbrowser came to live fast. Slackware has the latest qt library in in 
/usr/lib/qt.....

How do these programs decide where to look for a library?

ray@comarre.com said:
>  you are going to have to say more than "I made a new  installation" for me
> to understand what you did.

Well if I have a .tar.gz program file I do tar xzvf file.tar.gz in usually 
/usr/local and then follow the install instructions which in the case of 
gutenbrowser are different from the normal routine. It uses tmake. Is this 
procedure not called installation or is there another more professional speak?

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
