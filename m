From: "Weston M. Price" <weston_p@yahoo.com>
Subject: Re: setting my path
Date: Mon, 8 Sep 2003 16:46:51 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309081646.51096.weston_p@yahoo.com>
References: <HBEJLOFMLEPBMAAEFNFDKEHGCBAA.azapata@du.edu>
Reply-To: weston_p@yahoo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDKEHGCBAA.azapata@du.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I assume that when you run the command you are getting a "ifconfig: command 
not found" error. 

Easiest thing to do would be to do a 

whereis ifconfig

Typically this command is placed in th /sbin directory. Since you said that 
you can su to root then I assume you can make sure that your user account has 
the appropriate permissions to execute this command. If not then you get set 
them. 

Regards,

Weston


On Monday 08 September 2003 04:35 pm, Anna G. Zapata wrote:
> Hello,
>
> I am running Red Hat 8.0.  When I run ifconfig as a user, I cannot see what
> the IP address is of my box.  However, when I switch to being a root user
> (su -) and run ifconfig, I can see the IP address.  How do I set my $PATH
> so I can run ifconfig as a regular user?  Or is this possible?
>
> Here is the user path:
>
> -bash: /usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/home/azapata/bin
>
> Root path:
>
> -bash:
> /bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin/X11:/
>u sr/X11R6/bin:/root/bin
>
> Let me know if I am missing any useful information.
>
> Thanks.
>
> Anna Zapata
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
