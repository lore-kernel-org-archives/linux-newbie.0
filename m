From: Ray Olszewski <ray@comarre.com>
Subject: Re: scripting the "rec" function for a fixed time.
Date: Mon, 24 Feb 2003 18:55:53 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030224184821.01eb7e30@celine>
References: <1046131264.10885.28.camel@smeagle>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1046131264.10885.28.camel@smeagle>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:01 PM 2/24/2003 -0500, Peter Howell wrote:
>I would like to be able to run the rec command unattended.  Right now
>when executed, it will record sound until I hit C-c.  I would really
>like to be able to right a script which will execute "rec ...", then
>wait a specified period of time, then pass the C-c to it.  Or is there a
>simpler way?


I waited to see if anyone else would respond, since I cannot actually 
answer your question.

"rec" is not a stock linux command, and I cannot readily identify a package 
that includes that application (just trying to match on "rec" turns up 
several hundred hits in the Debian package database). So I'd suggest you 
tell us a bit more about your setup, including enough information that we 
can identify and take a look at the package that includes this command.

What file format does it record to, and does it record from standard 
sound-card devices (like /dev/mixer or /dev/dsp)? Does its man page list 
any command-line arguments (many video recording programs, for example, 
accept a flag like "-t 5m" to specify recording time)?

Writing a script of the sort you have in mind is a bit more complicated 
than you might at first think, so you are wise to look for other options.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
