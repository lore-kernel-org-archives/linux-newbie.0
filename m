From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Laptop Prompt
Date: Wed, 16 Oct 2002 19:08:20 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021016170820.GA18126@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

A number of weeks ago, I approached the list about making apm more accurately reflect the amount of charge left on my laptop battery.  As suggested to me here on the list, I am pretty certain that my problem is due to the age of the battery.  Some testing here shows that I have a similar inaccuracy when I boot the laptop into Windows.

While I was digging around on laptop-related issues, however, I found the Bash-Prompt-HOWTO at the Linux Documentation Project (www.tldp.org).  That HOWTO has an example bash prompt for laptop users that indicates the amount of battery charge remaining and whether the charger is attached.  I wasn't able to get the example to work, but I was able to use the general information in the HOWTO to get a prompt put together.  I thought I might post it here for anyone who is interested.  I put this into my .bashrc.


function pwr_chk {

ACstat=$(apm | cut -f2 -d ' ')

case $ACstat in

	on-line* )
		echo -n '^'$( apm | cut -f5 -d ' ')
		;;

	off-line* )
		echo -n 'v'$( apm | cut -f6 -d ' ')
		;;

esac

}

PS1='\[\033[0;31m\][$(pwr_chk)]\[\033[0m\]\[\033[1;33m\]\u@\h:\w\[\033[0m\]\$ '

The charger indicator and % battery charge reading are in red and the prompt is in yellow, because I also wanted to play with colors a bit.  They are easily removed.  BTW, there was a question here recently about console colors.  The Bash-Prompt-HOWTO contains a pretty helpful discussion on that topic.

Cheers,
Sean

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
