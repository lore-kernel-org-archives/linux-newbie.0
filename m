From: Ray Olszewski <ray@comarre.com>
Subject: Re: failed scp with fortune
Date: Wed, 11 Feb 2004 16:43:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040211163851.01f271a8@celine>
References: <Pine.LNX.4.44.0402111604410.845-100000@legolas.personal.en
 gin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0402111604410.845-100000@legolas.personal.en
 gin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:07 PM 2/11/2004 -0500, Karthik Vishwanath wrote:
>Hello,
>
>scp fails to get files from a remote machine when the .bashrc in the
>remote machine runs /usr/games/fortune (or even just a plain echo). How
>can I fix this without removing the "offending" line from the .bashrc
>file?

I weas able to duplicate your problem here using the "date" command. The 
workaround is to put this command (and any others) inside an if-statement 
block that can distijnguish interactive from non-interactive connections. 
My setup (Debian-Sid) sets the skeleton .bashrc file up this way be 
default. To do it by hand, do something like this (taken from my .bashrc file):

         # If running interactively, then:
         if [ "$PS1" ]; then
                 ... various other commands ...
                 /usr/games/fortune
         fi

Make sure *all* executable content of the file is inside the if block and 
you should be set.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
