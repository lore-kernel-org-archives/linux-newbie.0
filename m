From: Ray Olszewski <ray@comarre.com>
Subject: Re: What happened to "From "???
Date: Mon, 04 Jul 2005 14:06:38 -0700
Message-ID: <42C9A4DE.8000601@comarre.com>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org> <42C84133.7030808@comarre.com> <20050704172331.GA1151@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050704172331.GA1151@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
[...]
>>3. Most interesting ... in an actual, downloaded mail file, is the "From 
>>" line present or not? (Open it with vi or whatever text editor you 
>>like, and simply take a look.) If not, is there *any* line that looks 
>>like a message delimiter in there? If there is, please post a sample.
> 
> 
> 	Cant post a sample because, in despiration <grin>, I purged
> all the tests to start with a level playing field.. Can only mention
> that as originally setup all the messages had: From: as the very
> first word, whereas, when working "properly", now with the older
> apps; the first word is From_.. Of course I mean; From(spc) that's as
> old as Unix IIRC... I've seen it listed as "From_" many times so 
> thought that proper...

When you refer to the fist line, do you mean a line that resembles the 
following (taken from a raw mail file here):

	From REI@email.rei.com Mon Jul 04 09:46:34 2005

but that differs from this form only in that it begins with "From:" 
instead of "From "?

Or do you mean that a different sort of line, but one beginning with 
"From:", is the first line now?

I'm guessing you mean the first of these, and if so, the culprit is most 
likely a bad sendmail-style rewriting rule somewhere in a config file 
for something ... whether fetchmail, getmail, sendmail, or something 
else (do you use procmail or an equivalent with this setup, for 
instance?) I cannot say.

Check the various apps' config files for any rules that involve the word 
"From" and see if you hit the jackpot.

Beyond that ... are you *certain* that both apps are giving you the 
problem? Did you start with a clean inbox each time you tested, or might 
(say) existing messages with the getmail problem have still been present 
during the fetchmail test?

And the last thing I can think of is to run tcpdump, or something 
similar, to capture the packets your ISP actually sends, to see if the 
"From: is in them, rather then being rewritten locally.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
