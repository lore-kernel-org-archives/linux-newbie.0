From: "Alan Bort" <333101@personal.net.py>
Subject: Re: setting my path
Date: Mon, 8 Sep 2003 16:36:49 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001601c37648$fd593270$6e17a8c0@Wellwisher>
References: <HBEJLOFMLEPBMAAEFNFDKEHGCBAA.azapata@du.edu> <200309082117.59502.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl, "Anna G. Zapata" <azapata@du.edu>, Linux-Newbie <linux-newbie@vger.kernel.org>

Anyway, in RedHat the ifconfig is in /sbin/ifconfig

If you want a certain user to have access to ifconfig, you should give the
right permissions and then add to the .bashrc or .bash_profile the line:
alias ifconfig="/sbin/ifconfig" and then log out and in again (so that the
RC file will be run again. You can also run another shell /bin/sh. But
logging out and back in is better.
----- Original Message -----
From: "pa3gcu" <pa3gcu@zeelandnet.nl>
To: "Anna G. Zapata" <azapata@du.edu>; "Linux-Newbie"
<linux-newbie@vger.kernel.org>
Sent: Monday, September 08, 2003 3:17 PM
Subject: Re: setting my path


> On Monday 08 September 2003 18:35, Anna G. Zapata wrote:
> > Hello,
> >
> > I am running Red Hat 8.0.  When I run ifconfig as a user, I cannot see
what
> > the IP address is of my box.  However, when I switch to being a root
user
> > (su -) and run ifconfig, I can see the IP address.  How do I set my
$PATH
> > so I can run ifconfig as a regular user?  Or is this possible?
>
> The main reason for a user not having access to programs like ifconfig is
> basicly a user has no need to use programs a admin would normally use so
> those programs are not in a users path, however i am sure if you type;
> /usr/sbin/ifconfig as a user {Note the full path is given on the command
line}
> then it shuld produce the desired results.
>
> > Here is the user path:
> >
> > -bash: /usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/home/azapata/bin
> >
> > Root path:
> >
> > -bash:
> >
/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin/X11:/
> >u sr/X11R6/bin:/root/bin
>
> Yes thats basicly as it should be, /usr/sbin and /sbin are System spesific
and
> normally speaking are for the system operator.
>
> There is nothig stopping you adding /sbin and /usr/sbin to a users path,
> however it is not a nix done thing as per the above mentioned reason.
> I am sure others will point out other reasons as well.
>
> >
> > Let me know if I am missing any useful information.
>
> No i think is more a need to understand that there is a "root" user and a
> "normal" user on all linux systems.
>
> root = the superuser and therefor can do what he wants.
> user = a normal user and cant do what he wants, he can only do what "root"
> lets him/her do.
>
> >
> > Thanks.
> >
> > Anna Zapata
> >
>
> --
> If the Linux community is a bunch of theives because they
> try to imitate windows programs, then the Windows community
> is built on organized crime.
>
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
>
>
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
