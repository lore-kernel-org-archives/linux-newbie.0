From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: scripting the "rec" function for a fixed time.
Date: Wed, 26 Feb 2003 06:01:16 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03022606011600.08497@unix.pa3gcu>
References: <5.1.0.14.1.20030224184821.01eb7e30@celine> <03022506145301.00602@unix.pa3gcu> <1046220248.15520.27.camel@smeagle>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1046220248.15520.27.camel@smeagle>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Howell <p.howell74@rcn.com>
Cc: linux-newbie@vger.kernel.org

On Wednesday 26 February 2003 00:44, Peter Howell wrote:

> It appears that rec does not buffer the sound, but instead writes it
> directly to the file.

OK, i should have mentioned that i dont use the program myself.

> It's inelegant, but I suppose I could kill the application after a
> specified delay.  There are two problems with implementing that for me.
> Firstly, I don't think I could do that in perl, which I'm most familiar
> with because there doesn't appear to be an easy way to spawn a process
> and continue running the scipt.  Secondly, I don't know how to run a
> process and get it's process id, which I'd need to kill it.
>
> 	Ok, just did a little rtfm.  I guess I could use ps and extract the id.
> Now I guess I'd better learn some bash scripting

Do both at once, get pid(s) of rec and kill it/them.

kill `ps aux | grep rec | grep -v grep | awk '{print $2}'`

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
