From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: bash scripts creating log files
Date: 17 Sep 2002 12:15:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1032261353.7489.17.camel@Zebra>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, everyone.

I'm trying to write a bash script which is basically a wrapper around a
number of other commands.

What I _want_ to do is basically _copy_ stdout and stderr to a log file.

Thus, when I run a command, I wans the stdout and stderr to go to
wherever called the script (eg an interactive terminal) but I _also_
want it to go to a log file.

I can do it easily for things I'm echoing in my own script by writing a
function like this:


	function ECHO
	{
	    echo $1
	    echo $1 >> ${Logfile}
	}

and then any messages which I generate I use ECHO instead of echo:

	ECHO "This is a message"

What I can't figure out is how do I redirect the output of the things
I'm running to the same 2 places?

Anyone know a nice easy way to do this?

Tnx.

Paul.




-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
