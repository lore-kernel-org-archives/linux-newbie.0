From: Peter <heisspf@skyinet.net>
Subject: Skype and more
Date: Wed, 30 Mar 2005 15:19:55 +0800
Message-ID: <200503300719.j2U7JtHw001378@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Slackware 10.1 kernel 2.4.29

Sometime ago I reported that skype would not open and at the same time after I 
had reinstalled slackware 10, xine and totem did not open anymore. Richard 
Adams then suggested to reinstall slackware w/o the old /usr/local and /home 
mounted, instead mount them after the installation.

Well that worked only until I installed additional programs such as efax after 
which neither skype nor the other 2 mentioned programs would not open again.

When slackware is installed it puts a number of library paths into 
/etc/ld.so.conf. This list is headed by /usr/local/lib. Now I found that this 
positioning was the cause of the problems. If I put /usr/local/lib at the end 
of the list all programs open properly and I can install further new programs 
w/o any change, meaning all programs keep on opening properly. If I just 
deactivate /usr/local/lib then naturally programs looking at that path will 
not open such as siag.

I just thought I will let the list know in case others have similar 
experiences, there was one in skype forum.

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
