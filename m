From: Ray Olszewski <ray@comarre.com>
Subject: Re: authentication issues
Date: Sat, 08 Jun 2002 15:35:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020608152031.020bb6c0@celine>
References: <20020608205646.FPKS13408.mtiwmhc22.worldnet.att.net@alan>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020608205646.FPKS13408.mtiwmhc22.worldnet.att.net@alan>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org

At 01:56 PM 6/8/02 -0700, Alan Womack wrote:
>How can I tell if each layer of my authentication is working or not working?

At this level of abstraction, there is no meaningful answer to the 
question. Unless you think "check each of them, one by one" is meaningful 
advice (I don't).


>eg.  how do I tell if I use/need shadow passwords?
To tell if your system *uses* shadow passwords, see if it has a file called 
/erc/shadow . Also check that the password field in each entry of 
/etc/password contains only a single "x" character.

Whether you "need" shadow passwords? They are pretty much the standard now 
for any Linux system that is connected to the Internet.

>How do I tell if I have md5 and what encryption method it is using?

Depends on the details of your setup. You might look for the MD5 flag in 
any of these locations: /etc/pam.conf, /etc/pam.d/passwd, or (just barely 
possible) /etc/login.defs .


>I ask because when I enable my authconfig to use ldap, I can no longer log 
>in, but there are several changes that occur to enable ldap and I am not 
>sure ldap is the actual non functional portion of the whole mess.

I don't use ldap here. Do the logs tell you anything you (or we) might 
consider informative?


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
