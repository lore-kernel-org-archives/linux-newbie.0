From: Ray Olszewski <ray@comarre.com>
Subject: Re: group
Date: Fri, 26 Dec 2003 14:17:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031226135536.01f9f780@celine>
References: <3FEC9C39.60007@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FEC9C39.60007@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:38 PM 12/26/2003 -0800, dave wrote:
>I made a subdirectory called "everyone", "/home/everyone".  I want to use 
>this folder for sharing files from my windows clients as well as 
>myself.  I used chgrp to make the folders owner group everyone.  I added 
>the users to this group.  I changed the group permissions to rwx with 
>chmod.  When I reboot, the subdirectory reverts back to r-x.  My group 
>members cannot write to the directory.  I'm running Mandrake 9.2.

I don't *quite* understand what you are describing. Is it only after the 
reboot that users are unable to write to the directory? Or are they always 
unable to write to it?

Just to be sure we are all talking about the same thing, please send us the 
output of this sequence of commands (run as root):

         ls -l /home/everyone
         chmod 775 /home/everyone
         chgrp everyone /home/everyone
         ls -l /home/everyone
         grep everyone /etc/group

What test are you using for "cannot write" and what is an example of the 
actual failure? Are we talking about users unable to save to the directory 
from login shells? Or Samba failures? Or what? Can root save to the 
directory (just trying to eliminate here the possibility of a RO filesystem)?

There is probably some error of detail in your procedure. With the above 
output, I (or someone else here, perhaps even you yourself) may be able to 
spot it. (For example,. you write: "I used chgrp to make the folders owner 
group everyone". The term *owner* applies to a userid, not a groupid. This 
may just be a terminology imprecision, or it may reflect an error in what 
you are actually doing.)

I don't use Konquerer so cannot help with your second problem.

>Another problem is when I start Konquerer as a file manager.  I enter the 
>root password and tell it to save the password.  the next time I start 
>Konquerer I have to enter the root password again.  I'm confused, Does 
>anyone have some light to shed on these issues?  Thanks in advance.
>Dave




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
