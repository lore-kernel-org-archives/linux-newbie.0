From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: How do I stop GUI from autoloading?
Date: Mon, 19 May 2003 20:49:41 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305192049.41645.pa3gcu@zeelandnet.nl>
References: <20030510100903.GA1586@localhost.localdomain> <20030510160917.GA890@localhost.localdomain> <3EC9198F.9080600@bcgreen.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EC9198F.9080600@bcgreen.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stephen Samuel <samuel@bcgreen.com>, Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

On Monday 19 May 2003 19:51, Stephen Samuel wrote:
> Amin wrote:
> > On Sat, May 10, 2003 at 08:42:05AM -0700, Ray Olszewski
> >
> > wrote:
> >>I did not see the original posting, and I can't find it
> >>anywhere. Amin's response does not indicate whether the
> >>original posting mentioned the Linux distro involved, and
> >>he does not do so. And Amin's advice is not
> >
> > Sorry, I found the original post in Google Groups:
> > http://groups.google.com/groups?q=mlist.linux.newbie&ie=UTF-8&oe=UTF-8&hl
> >=en&btnG=Google+Search

NOt having been around much latly i missed ost of this thread, however i did 
read the above message in google, As Far As I Can See, the best thing to do 
here is to boot into either runlevel 1 or 3, as mentioned there will be a 
boot loader presant, be it lilo or grub, (i dont use grub) but i can give an 
example of howto do it with lilo.

At the lilo boot prompt "Hit any key" to stop the boot(ing) timer, you now 
have time to think, what one needs to do is to choose the "linux Option" and 
enter either a "1" or  "3" after it, example;

You can choose from 
Linux
 or
Dos

choose Linux it will be highlighted at the :Boot" prompt, add a "1" or a "3" 
after it, 1 or 3 is the runlevel if any askes...
When booted into one or 3 they are both console modes, do the following;

cd /etc
vi inittab
(Got to something like line 20) a line which looks like);
id:4:initdefault:   
{OR}
id:5:initdefault:
Edit that line to;
id:3:initdefault:
save the file, now on the next boot linux will boot into console mode.

Find your problem at ease now and then when you are sure you can boot properly 
change /etc/inittab back to runlevel 4 or 5 which ever your distro uses.

--
Regards Richard.
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
