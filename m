From: Mateus Interciso <p.zarnick@gmail.com>
Subject: Re: writing a script to simulate keyboard input
Date: Thu, 19 Jul 2007 23:56:00 +0000 (UTC)
Message-ID: <f7otmf$r55$1@sea.gmane.org>
References: <Pine.LNX.4.64.0707191142490.11409@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 19 Jul 2007 11:48:58 -0400, Karthik Vishwanath wrote:

> Hello,
> 
> I have to use an archaic, menu-driven C program that requires keyboard
> input to process commands (all of these commands are terminated by a
> newline)
> 
> I was wondering if there was any way I could use the program within a
> script so that I could have the script "feed" in the sequence of
> keystrokes/string-inputs that I must otherwise type in manually?
> 
> As ever, all help/advice is appreciated.
> 
> 
> Thanks,
> 
> -K
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> in the body of a message to majordomo@vger.kernel.org More majordomo
> info at  http://vger.kernel.org/majordomo-info.html Please read the FAQ
> at http://www.linux-learn.org/faqs

As far as I know, this greatly depends on the C program you are trying to 
use.
But one thing that doesn't hurt trying, is to pipe it with an echo 
command, for instance
echo "command string" | ./program
A pratical example would be to actually count how many leters you have in 
abcdef, for this, execute this
echo "abcdef" | wc -c
The | will execute the command that's after the | with the output (I 
think) of what's on the left of the |

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
