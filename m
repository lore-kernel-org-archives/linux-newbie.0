From: Ray Olszewski <ray@comarre.com>
Subject: Re: Heavy load of graphics
Date: Mon, 04 Oct 2004 23:34:44 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041004232356.01fba510@celine>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: newbie <linux-newbie@vger.kernel.org>

At 06:01 AM 10/5/2004 +0100, Ankit Jain wrote:
>hi
>
>well i am using linux 9.0 kernel 2.4 ver. 128 Mb RAM
>
>i have seen not only on this sytem but the other one
>having 512 Mb RAM the most of the memory is lost or
>taken by graphics or xserver. on my system around 90%
>is occupied by the xsever and on the sys with 512 Mb
>RAM around 70% is occupied. how to reduce this load. i
>oculd not get any article or stuff relate to this . if
>we can do something in kernel or in some way reduce
>this load while working in GUI envt

When you say "the most of the memory is lost", what exactly do you mean by 
"lost"?

Any Linux system will gradually "use" 100% of available (real, not swap) 
memory, by the common measures of "use", such as the diaplay in "top" or on 
the first line of "free". But most of this memory (on a typical system, 
anyway) is used for "cache and buffer",  a jargony phrase that means, in 
plain English, that Linux keeps in memory copies of recently run 
executables and recently accessed data files.

You see one effect of this bit of optimizing when you run a command and it 
takes a couple of seconds to run, then run it again and it runs close to 
instantly. The difference, often, is that the first time, the command had 
to be loaded from disk, but the second time it was cached.

But the kernel knows to make this memory available to any new processes 
that need it, so it is available to users.

To see how much of your RAM is being used for cache and buffer, run "free" 
and look at the entries on the second line.

OF course, all of this response is a guess. A 128 MB system running a rich 
GUI like KDE might well use most of its RAM for real; here, for example, 
the system I have that runs KDE really is using about 200 MB of its 768 MB 
of RAM. But to be using most of 512 MB of RAM, you would have to be running 
a lot of apps.

If you really are using memory with active applications, then your only 
solution is to run fewer, or smaller, apps. To help at that level, we'd 
need to know more of the details of how your system is set up.

PS - I'd appreciate your using standard English spellings, capitalization, 
punctuation, and syntax in future postings.  The shortcuts you used made it 
hard for me to read your message, anough so that I almost did not take the 
time to reply to it.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
