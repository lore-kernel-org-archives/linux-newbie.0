From: Ray Olszewski <ray@comarre.com>
Subject: Re: problem using keyboard and mouse
Date: Thu, 20 Nov 2003 10:40:21 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031120102816.01f8fb90@celine>
References: <20031120133458.67144.qmail@web60601.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031120133458.67144.qmail@web60601.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:34 AM 11/20/2003 -0800, Ravi Kumar Munnangi wrote:

>  Hi,
>
>   When Iam working on my computer, suddenly I face
>  problems using mouse and keyboard.
>   Iam not able to do scrolling using the mouse.
>   Though I keep hold a key down, the character is not
>  displayed repeatedly.
>   I don't why this is happening suddenly.

It could be happening for any number of reasons, ranging from physical 
failure of the keyboard/mouse or motherboard, through BIOS problems, or X 
problems (assuming this is happening in X), or problems specific to the 
application where this happens, or even user error (for example, a focus 
problem).

To get help, you will have to tell us more. For example:

What version of Linux (what distro, what kernel)?

Are the keyboard and mouse PS/2 devices, or USB? (Or AT and serial, if this 
is an old system?)

What version of X and what X driver (or if this is not an X problem, what 
display setting it occurs in)?

What application are you running when you see the problem? Has this 
SPECIFIC application worked properly with the keyboard and the mouse 
before? Is "suddenly" completely out of the blue, or did you just do a 
system update that may have loaded a new version of the app or apps in 
question?

How are you "scrolling using the mouse"? Are you referring to a scrool 
wheel or the use of scrollbars provided by the app?

Is the keypress problem happening with all (or a lot of) keys, or did you 
just encounter it with 1 or 2 keys (which ones)? Do single keypresses still 
work?

Is the system simply busy, so responding v-e-r-y s-l-o-w-l-y? Even though 
it usually has high priority, the UI is still a process (actually, a whole 
set of processes), and if the CPU is heavily loaded, it can bog down. You 
might try running "top" in an xterm or over an ssh connection while this 
problem is showing up, just to check for this (admittedly, long shot) 
possibility.

There are so many other possibilities that I can't really frame good 
questions, so I'll end with a general one: Can you think of anything 
different between the situations where keyboard and mouse work the way you 
expect them to and situations where they do not? For *example*, are 
different uid's involved?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
