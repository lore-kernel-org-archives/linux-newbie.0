From: Ray Olszewski <ray@comarre.com>
Subject: Re: Gutenbrowser Won't Open
Date: Fri, 27 Feb 2004 23:15:27 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040227230421.01ee82e8@celine>
References: <Your message of "Fri, 27 Feb 2004 09:05:06 PST."  <5.1.0.14.1.20040227084219.01f680d8@celine> <20040228042722.B4A701C67F@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040228042722.B4A701C67F@heisspf>
References: <Your message of "Fri, 27 Feb 2004 09:05:06 PST."  <5.1.0.14.1.20040227084219.01f680d8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:27 PM 2/28/2004 +0800, Peter wrote:
>Thanks Ray, you are a genius.
>
>First I moved the /usr/local/qt out of the way, then I copied libqt.so.2.3.1
>from RedHat over to /lib in slackware made the symbolic link libqt.so.2 to it
>and gutenbrowser came to live fast. Slackware has the latest qt library in in
>/usr/lib/qt.....
>
>How do these programs decide where to look for a library?

They ask the shared-library loader, /lib/ld-linux.so.2 You set it up using 
ldconfig . See the relevant man pages for the details. (Usually your 
distro's installer does all that is necessary for you, but once you start 
doing installs outside your distro's system, you may need to pay attention 
to this.)

Normally /lib and /usr/lib are safe standard places to put shared 
libraries. Other allowed places (e.g., /usr/local/lib) will be listed in 
/etc/ld.so.conf .

>ray@comarre.com said:
> >  you are going to have to say more than "I made a new  installation" for me
> > to understand what you did.
>
>Well if I have a .tar.gz program file I do tar xzvf file.tar.gz in usually
>/usr/local and then follow the install instructions which in the case of
>gutenbrowser are different from the normal routine. It uses tmake. Is this
>procedure not called installation or is there another more professional speak?

Yes, I would call it "installation". And I did, after all, surmise that 
this was what you meant.

But I would also use the term "installation" if I installed a binary 
package (.rpm, .tgz, .deb) that was part of my distro.  Or if I installed 
from the source package that came with my distro (.srpm, .deb-src, whatever 
nameing convention Slackware uses). So the reason for my comment was not 
that your usage was wrong, but that it was not specific.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
