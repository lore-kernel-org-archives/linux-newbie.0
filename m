From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: bash scripts creating log files
Date: Tue, 17 Sep 2002 15:04:26 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0209171501210.28745-100000@orthanc.lemmerling.net>
References: <1032261353.7489.17.camel@Zebra>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1032261353.7489.17.camel@Zebra>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 17 Sep 2002, Paul Furness wrote:

> What I _want_ to do is basically _copy_ stdout and stderr to a log file.
> 
> Thus, when I run a command, I wans the stdout and stderr to go to
> wherever called the script (eg an interactive terminal) but I _also_
> want it to go to a log file.
> 
> I can do it easily for things I'm echoing in my own script by writing a
> function like this:
> 
> 
> 	function ECHO
> 	{
> 	    echo $1
> 	    echo $1 >> ${Logfile}
> 	}
> 
> and then any messages which I generate I use ECHO instead of echo:
> 
> 	ECHO "This is a message"
> 
> What I can't figure out is how do I redirect the output of the things
> I'm running to the same 2 places?

"tee" is your friend:

echo test | tee -a logfile.txt

test is printed to the screen and appended to the file "logfile.txt". If
you don't use the "-a" the file is overwritten every time.

HTH


--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
