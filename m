From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: Re: path Setting
Date: 13 Jul 2003 14:28:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1058120914.11414.6.camel@goldfinger.orbdesigns.com>
References: <5.1.0.14.1.20030712195144.02087a90@celine>
	 <5.1.0.14.1.20030713071527.0207fea0@celine>
	 <200307131353.33161.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307131353.33161.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frank Roberts - SOTL <sotl155360@earthlink.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Sun, 2003-07-13 at 13:53, Frank Roberts - SOTL wrote:
 [snip]
> Is this procedure incorrect or what?
> Can I not set the PATH by this procedure?

Yes, it's incorrect. No, you can't set the path "PERMANENTLY" by that
procedure. If you had edited your ~/.bashrc as suggested by Ray, then
you would be happy now.

However, please be aware, if you set and export the path in a terminal
session, it does not carry over to any other terminal session. By
setting the path in ~/.bashrc (assuming you're running bash), it will be
sourced by every terminal session as it opens.

Extra credit - export is a command, and as with most other things *NIX,
case sensitive. EXPORT is *not* a command, export is.

SO... If I open a terminal window, and add/export /usr/local/bob/bin to
my path thusly:

export PATH=$PATH:/usr/local/bob/bin

Then going forward IN THAT TERMINAL SESSION, /usr/local/bob/bin is part
of my path. That PATH is *lost* the moment I close that terminal
session. If I want to have /usr/local/bob/bin in my path every time I
open a terminal window or console, then I will put that command in my
~/.bashrc, at the bottom.

export PATH=$PATH:/usr/local/bob/bin

Then I will logout and log back in, to take advantage of the change that
I have just made to the ~/.bashrc configuration file, now and going
forward.

HTH,

.brian

-- 
Brian Bilbrey: bilbrey@orbdesigns.com and http://www.orbdesigns.com/
    First they came for the verbs, and I said nothing,for
    verbing weirds language.  Then, they arrival for the nouns
    and I speech nothing, for I no verbs. - Peter Ellis

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
