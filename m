From: John Kelly <bilbo@waitrose.com>
Subject: Re: error: premature end of script headers in cgi
Date: Tue, 31 Aug 2004 23:02:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040831230253.4c8c6091.bilbo@waitrose.com>
References: <fc.004c4e000061b03e004c4e000061b03e.61b099@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e000061b03e004c4e000061b03e.61b099@palmertrinity.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Cc: linux-newbie@vger.kernel.org

Hi,
On Tue, 31 Aug 2004 10:47:44 -0400
"William Stanard" <wstanard@palmertrinity.org> wrote:

> I'm running Linux 2.4.18-14smp on a Compaq Proliant. When trying to
> run gm.cgi (correctly chmod-ed, I believe) to start using Greymatter
> blogging, I receive the following error when I look at the httpd
> error_log:
> 
> [error] [client 10.0.4.126] Premature end of script headers: gm.cgi
> 
> I am guessing that in moving the cgi scripts to my Linux box via
> Dreamweaver, I "added" some bogus carriage returns or some such...
> How can I (first) see if that is what I did and (two) edit same...
> 
There are a few methods to see non printing characters in a file.
Try 
cat -v filename 

In vi, in command mode you can do:
: set list
and all the 'funny' characters will be displayed.
Do:
: set nolist 
to make the file appear normal.

Personally whenever I come across an MS-dos file on Unix, I first
check it in vi with the :set list command and then I do a vi command
like:

:%s/<CTRL>v<CTRL>M//g

This is a substitute command. 
The % sign means apply the command to the whole file
s means substitute.
/ is the delimiter
<CTRL>v means dont interpret the next keystroke
<CTRL>M is the 'funny' character you want to get rid of. In this case
it is control M, though you may find something else in your
particuliar file. g means do the command globally ie do it as many
times as necessary on each line.

Of course if it all goes wrong, you can type u in command mode and the
change will be undone :-)

Hope this helps.

regards,

John Kelly


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
