From: James Mohr <linux-newbie@jimmo.com>
Subject: Re: Tar Extract from Tape
Date: Tue, 1 Oct 2002 21:53:48 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210012153.48013.linux-newbie@jimmo.com>
References: <000001c26968$3dd96d90$64fea8c0@pkrausxp>
Reply-To: linux-newbie@jimmo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c26968$3dd96d90$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

The problem I see with both the amerpsand and the asterisks is that the shell 
expands them before passing them to tar. Using a single quote should 
protected them. If you want the entire ./PM65/Orthotic Cat/ directory, try:

tar xvf /dev/rStp0 'PM65/Orthotic Cat/'

This *should* pass the whole phrase as a unit to tar.  Anytime you specific a  
directory the should be no need to use the asterisk.

Regards,

jimmo

On Tuesday 01 October 2002 18:33, Paul Kraus wrote:
> I am trying to extract the file P723.ind. Now this is on a Sco Box so I
> am crossing my fingers that the syntax is similar to Linux. Here is the
> sniped results for tar tvf /dev/rStp0.
>
> rw-r--r--  0/0   614400 Aug 08 16:39 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P722.indd
> rw-r--r--  0/0   712704 Aug 08 16:36 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P723.indd
> rw-r--r--  0/0   794624 Aug 06 16:38 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P724.indd
> rw-r--r--  0/0   856064 Aug 12 11:29 2002 ./PM65/Orthotic Cat/Knee &
> Ankle/P725.indd
>
> I have tried the following with the file never being found.
>
> Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/Knee\ &\ Ankle/*
> Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/Knee\ &\ Ankle/P723.indd
> Tar xvf /dev/rStp0 ./PM65/Orthotic\ Cat/*
> Tar xvf /dev/rStp0 "./PM65/Orthotic Cat/Knee & Ankle/P723.indd"
> Tar xvf /dev/rStp0 "./PM65/Orthotic Cat/Knee & Ankle/*"
>
> I am thinking that tar is having a hard time with "&" which is why I
> tried Cat/*.
>
> Any insights would be good. I have searched google for anything relating
> to special characters and tar as well as long file names.  I have read
> the man pages for tar and the info page and can not seem to find out
> where my mistake is.
>
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
---------------------------------------
"Be more concerned with your character than with your reputation. Your
character is what you really are while your reputation is merely what others
think you are." -- John Wooden
---------------------------------------
Be sure to visit the Linux Tutorial:  http://www.linux-tutorial.info
---------------------------------------
NOTE: All messages sent to me in response to my posts to newsgroups or forums 
are subject to reposting.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
