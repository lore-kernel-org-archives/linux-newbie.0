From: James Mohr <linux-newbie@jimmo.com>
Subject: Re: Passing the entire command line
Date: Mon, 18 Nov 2002 18:21:51 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211181821.51710.linux-newbie@jimmo.com>
References: <200211161235.37309.Adam@Luchjenbroers.com> <004301c28f18$ee535160$4100a8c0@desarrolloxp>
Reply-To: linux-newbie@jimmo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004301c28f18$ee535160$4100a8c0@desarrolloxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> ----- Original Message -----
> From: "Adam Luchjenbroers" <Adam@Luchjenbroers.com>
> To: <linux-newbie@vger.kernel.org>
> Sent: Friday, November 15, 2002 9:05 PM
> Subject: Passing the entire command line
>
> > While bash can retrieve the different commandline values using the
>
> variables
>
> > $1, $2, $3, etc - is there a way to just read out them all at once (with
> > spaces between the values).
> >
> > I use startup scripts for many of my games, and I want the script to pass
> > through command line options at the end (for connecting to servers, etc).

The special variable $* (dollar-sign asterisk) contains ALL of the positional 
parameters, regardless of how many they are. This is obiviously useful when 
you do not know how many variables will be passed. The variable $0 stands for 
the actual command. More details can be found here:

http://www.linux-tutorial.info/cgi-bin/display.pl?33&0&0&0&3

Regards,

jimmo

-- 
---------------------------------------
"Be more concerned with your character than with your reputation. Your
character is what you really are while your reputation is merely what others
think you are." -- John Wooden
---------------------------------------
Be sure to visit the Linux Tutorial:  http://www.linux-tutorial.info
---------------------------------------
NOTE: All messages sent to me in response to my posts to newsgroups, mailing 
lists or forums are subject to reposting.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
