From: Ray Olszewski <ray@comarre.com>
Subject: Re: Convert PBM to ascii text??
Date: Tue, 09 Mar 2004 07:21:02 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040309070617.01fde278@celine>
References: <5.1.0.14.1.20040308130547.01f63e50@celine>
 <20040308204535.GA1010@lnx2.w8mch.ampr.org>
 <5.1.0.14.1.20040308130547.01f63e50@celine> <20040309142907.GA680@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040309142907.GA680@lnx2.w8mch.ampr.org>
References: <5.1.0.14.1.20040308130547.01f63e50@celine>
 <20040308204535.GA1010@lnx2.w8mch.ampr.org>
 <5.1.0.14.1.20040308130547.01f63e50@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:29 AM 3/9/2004 -0500, Hal MacArgle wrote:
>[...]
>
>         Greetings Ray and thanks for the input.. I've fetched gocr
>and noted the "text in graphic image" mentioned and should compile it
>to see if it'll work for me, but it needs some dependencies I don't
>have on this machine so thought I'd try the easy query way first.
>
>         I was, hoping, to find a program that will convert the scan
>to plain ordinary character generated text, rather than bit mapped..
>I'm hazy about what all this means plus my quest for simplicity is
>not the modern way to think.. I want to, merely, write the guy using
>all my brain power to compose/answer his letter - not spend all my
>time figuring out complicated manipulations for non significant
>stuff.. <g>

Yes, I got that from your earlier message. What confuses me is that you 
seem to think this process ... "convert the scan to plain ordinary 
character generated text, rather than bit mapped" involves something other 
than OCR software. The process you describe here *is* OCR (Optical 
Character Recognition), so looking for something other than OCR software to 
do it is an exercise in futility (or miscommunication).

You have two basic options:

1. Run a program that will scan to an image file, then a separate program 
that will do OCR on the scanned image.

2. Run a single program that will do both steps described in (1) ... 
probably saving the scan as a scratch file and deleting it after the OCR step.

In practice on Linux/Unix systems, any program of the second sort will 
probably be a wrapper for two separate apps that function as in (1) ... 
sort of the way "abcde" automates the process of CD ripping by serving as a 
frontend to about a half-dozen different applications.

The only OCR programs I can find in the Debian package database are gocr 
and clara. Several other scanner apps refer to OCR, but they all seem to 
call gocr in the background actually to do it. Rwally, gocr seems like the 
consensus solution for Linux users.

If neither gocr nor clara is suitable, your next option is to consider a 
commercial product. This article -- 
http://www.linuxworld.com/story/32641.htm -- describes one called "OCR 
Shop" ... but its pricing appears to be way too high to make sense for the 
simple need you have.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
