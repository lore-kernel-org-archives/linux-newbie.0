From: "Calin Szonyi" <caszonyi@linuxmail.org>
Subject: Re: Page swap
Date: Fri, 08 Nov 2002 09:39:31 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021108073931.25649.qmail@linuxmail.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: cba20032002@yahoo.com, linux-newbie@vger.kernel.org


----- Original Message -----
From: Mike Ni <cba20032002@yahoo.com>
Date: 	Thu, 7 Nov 2002 21:16:26 -0800 (PST)
To: linux-newbie@vger.kernel.org
Subject: Page swap


> Folks,
> 
> I am having performance issue with one of the
> application. It looks like it is running low on the
> memory. 
> 
> In addition to add new memory to the system, is there
> anything can be done while we are waiting for the
> memory upgrade? 
> 

Yes. You could add a swap file if you have enough
 disk space:

dd if=/dev/zero of=path_to_your_file bs=1024 count=number_of_MB_you_want_to_add

mkswap -v1 path_to_your_file
swapon path_to_your_file

Also keep in mind that when the physical memory is
 full and the application is alocating more and 
mor memory your system will run at the speed of the hard drive 

> Thanks in advance
> MIke
> 
You're welcome
Bye
Calin
-- 
______________________________________________
http://www.linuxmail.org/
Now with POP3/IMAP access for only US$19.95/yr

Powered by Outblaze
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
