From: Carl <carl@anexia.co.uk>
Subject: Re: bash scripts creating log files
Date: Tue, 17 Sep 2002 14:13:24 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20020917140646.00b38818@interzone.anexia.co.uk>
References: <1032261353.7489.17.camel@Zebra>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1032261353.7489.17.camel@Zebra>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:15 17/09/2002 +0100, Paul Furness wrote:
>Hi, everyone.
>
>I'm trying to write a bash script which is basically a wrapper around a
>number of other commands.
>
>What I _want_ to do is basically _copy_ stdout and stderr to a log file.
>
>Thus, when I run a command, I wans the stdout and stderr to go to
>wherever called the script (eg an interactive terminal) but I _also_
>want it to go to a log file.
>
>I can do it easily for things I'm echoing in my own script by writing a
>function like this:
>
>
>        function ECHO
>        {
>            echo $1
>            echo $1 >> ${Logfile}
>        }
>
>and then any messages which I generate I use ECHO instead of echo:
>
>        ECHO "This is a message"
>
>What I can't figure out is how do I redirect the output of the things
>I'm running to the same 2 places?

There is a command called "tee" which will pipe data to a file and stdout/stderr at the same time

you do:

         someprog | tee /tmp/some.log.file

The output of someprog is sent to stdout/stderr and the file /tmp/some.log.file

You can then do what you like with stdout/stderr as normal.

tee should be installed as it comes with sh-utils package.

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
