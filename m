From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: Syslog - doubt
Date: Wed, 5 Jun 2002 20:41:44 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0206052034570.18504-100000@orthanc.lemmerling.net>
References: <200206051714.g55HE8u18108@cs.annauniv.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206051714.g55HE8u18108@cs.annauniv.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 5 Jun 2002, Suriya Narayanan M S wrote:

> Hi all,
> 	The following program writes 2 messages to
> syslog
> /********** Begin code ***********/
> #include <syslog.h>
> int main()
> {
>         openlog("Test of syslog",0,0);
>         syslog(LOG_EMERG,"Hello World\n");
>         syslog(LOG_EMERG,"Good Bye World\n");
>         closelog();
>         return 0;
> }
> /**********End code ***************/
> 
> If someone executes this program repeatedly
> of from a loop, syslog would become too large.
> Is something wrong?  Can access to syslog
> be restrcted?

perhaps you can build some sort of a test in your program so the program
doesn't "flood" the syslog. I've some messages in my syslog: "last 
message repeated n times". Maybe something like that is what you're
looking for?


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
