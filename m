From: Ray Olszewski <ray@comarre.com>
Subject: Re: general Debian questions
Date: Mon, 09 Dec 2002 20:21:51 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021209201020.0209fa60@celine>
References: <3DF5018B.4050802@mailandnews.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DF5018B.4050802@mailandnews.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Response below.

At 09:48 PM 12/9/02 +0100, James Miller wrote:
>I've begun using Debian after having spent most of my Linux "career"
>(all 18 month of it!) on mostly Mandrake and Red Hat. I've come to
>really like Debian, especially the apt-get installation and update
>routine. I'm considering defecting to Debian. True, I was spared the
>majority of Debian install problems by using the install-to-hard-disk
>utility that was written for Knoppix. It worked quite well, actually. I
>think it was the least painful Linux install I've been through - and
>I've been through more than I can count. At any rate, before devoting
>full alegiance to Debian, I thought I'd ask onlist some general feedback
>on the distro, both pro and con. I use my computer strictly as a
>workstation, though I am considering setting up a tiny home network on
>the LTSP model - something about the "target system." I guess I'd like
>to start off on Debian feedback asking some particulars about how and
>how often packages are updated? I understand Debian tends to "run
>behind" with respect to the other distros. As I understand it, new
>releases of the OS itself occur with far less frequency than the distros
>I'm used to. But the packages (what, under M$ systems, would be called
>"3rd party apps," as I understand it), surely, must be upgraded with
>greater frequency, are they not?
>
>Thanks in advance for feedback on this issue.

It depends a bit on which Debian you are running. If you run Debian Stable 
(currently Woody), you'll find that updates of everything are slow in 
coming (except for security-related issues). If you are using apps that are 
advancing rapidly, you'll want either to be getting updates from the 
upstream providers themselves, or adding in packages from Debian Unstable 
(currently Sid) ... this can be a tricky process, due to dependency issues.

Or you can do what I do. On servers and production machines, I use Woody. 
On workstations where I need to keep up with things a bit more, I run Sid, 
update regularly (weekly, roughly), and live with the occasional problem 
("Unstable" is definitely a truth-in-advertising label, but the actual 
problems I experience tend to be small and soon fixed).

Between these two is Debian Testing (currently Sarge). I don't use it so 
can't say anything substantive about it.

Overall, I'd say that Stable lags well behind other big distros ... but as 
a consequence, for tasks that do not push the envelope, it is rock solid. 
Unstable is probably a bit ahead of the others (mostly thanks to its being 
installed from an online archive rather than from CDs, normally, so it 
avoids the datedness that comes from the CD contents being static).

Going back a couple of years, all versions of Debian were, in my opinion, 
faster at security fixes, and better at setting up a system that was 
reasonably secure out of the box, than the other major distros. The others 
have improved considerably in this respect, though, and my hands-on 
experience with them is too out of date for me to be able to compare 
current performance with respect to security.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
