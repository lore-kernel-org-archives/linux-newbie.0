From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: Passing the entire command line
Date: Fri, 15 Nov 2002 22:13:20 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0211152211530.22398-100000@router.windsormachine.com>
References: <200211161235.37309.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211161235.37309.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Cc: linux-newbie@vger.kernel.org



On Sat, 16 Nov 2002, Adam Luchjenbroers wrote:

>
> While bash can retrieve the different commandline values using the variables
> $1, $2, $3, etc - is there a way to just read out them all at once (with
> spaces between the values).
>
> I use startup scripts for many of my games, and I want the script to pass
> through command line options at the end (for connecting to servers, etc).

mdresser@router:~$ cat testingforadam
echo $*
mdresser@router:~$ ./testingforadam hello adam how are you today
hello adam how are you today

=)

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
