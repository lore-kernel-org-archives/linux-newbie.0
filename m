From: "Michael Scottaline" <nbhs2@i-2000.com>
Subject: Re: Set the "mail system".
Date: Tue, 07 Jan 2003 18:22:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1041963753_PM_BeOS.nbhs2@i-2000.com>
References: <20030107190203.26D873E2F@sitemail.everyone.net>
Reply-To: nbhs2@i-2000.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030107190203.26D873E2F@sitemail.everyone.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

>  Hi all in this place. No is later for say Happy New Year!!
>
>  I'm not really a newbie, i am for 4 years with Linux, but still there 
are
>areas in which i don't have any idea, cos never before worried about 
it.
>
>  I ever used webmail, but now i get a pop3 account and i want 
configure
>the Operating System for use it.
>
>  Of course, i don't find any difficult in the use of programs like 
mozilla
>or netscape. But... what about configure the whole system for use my 
new
>mail adress?. Any hint or advice?.
>
>  I don't know if i get express what i want in the correct way (my 
english
>need be improved). I am talking about, for example, the mail that 
appears in
>the first line of dmesg, now is root@Smeagol.org, this isn't my real 
adress,
>i am talking about can use Pine, or exim, or procmail or whatever 
program
>that you recommend me.
===============================
For ease of set up and use, I'm going to recommend sylpheed with linux.  
In the setup dialogue box you'll add all required info:  for pop server 
(incoming mail) you'll likely need to put pop.your-isp-domain.com.  For 
outgoing, choose smtp server and put (most likely) 
smtp.your-isp-domain.com.
The rest is likely to be self explanatory.  you can download sylpheed 
from:
sylpheed.good-day.net
If you take the tar file, just: "tar zxvf sylpheed-0.8.8.tar.gz" (w/o 
quotes)
cd to the new directory
./configure
make 
su
password
make install
If kmail is already on your system (I don't like it nearly as much as 
Sylpheed) you could try that first and just add the info I suggested 
above.
HTH,
Mike
-- 
"Always remember, I've taken more out of alcohol than alcohol has taken
out of me."
	--Winston Churchill

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
