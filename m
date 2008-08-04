From: Dave Haywood <tla@oak.selfip.net>
Subject: Re: Problems compiling Binutils 2.17
Date: Mon, 04 Aug 2008 11:11:04 +0100
Message-ID: <4896D5B8.2000505@oak.selfip.net>
References: <633001.84864.qm@web59712.mail.ac4.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <633001.84864.qm@web59712.mail.ac4.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Phil C <hpypenguin@yahoo.com>
Cc: Yeti <yeti@myhich.com>, Newbie Mailing List <linux-newbie@vger.kernel.org>

Phil C wrote:

>> It seems like the configure script is not working.
>> Did you check whether it is executeable or not? ( chmod +x )
>>     
>
>   
>> Is it in the directory ../binutils-2.12/ ?
>> Why are you installing a system wide libary with sudo and not as root user?
>> Yeti
>>     
>
> Ill have to check on the permissions. I'm installing with sudo because I use Ubuntu so there is no root login.
>
>   
Couple of options I can think of on Ubuntu:

    1) sudo su -

          You now have a root shell to do the install


or:


    2) add a "wheel" group to /etc/group and add your user id to it

         in /etc/pam.d/su uncomment "auth sufficient pam_wheel.so trust"

          You can now su without using sudo and without specifying any
password so long as you are a member of the wheel group


Dave.

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
