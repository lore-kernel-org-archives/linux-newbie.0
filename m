From: Ray Olszewski <ray@comarre.com>
Subject: Re: TGZ Installation ProbleM
Date: Sun, 09 Mar 2003 22:38:12 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030309222527.01ec9210@celine>
References: <200303100543.h2A5hDu11203@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303100543.h2A5hDu11203@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Peter -- What  you describe is not a problem particular to Red Hat. It can 
affect any attempt to install non-distro-packaged source-code programs into 
any distribution. In a way, it represents bad programming of the configure 
script ... configure's *job* is to find where the things it needs are 
located on a specific system, and looking for needed #include files in both 
/usr/include and /usr/local/include seems to me to be a natural thing to 
cover.

Blurriness in the specification for "standard" locations of files is to 
blame for configure having to answer this particular multiple-choice 
question ... the *same* program (or, in this case, header files) might be 
*part* of a distribution, thus properly located in /usr/include . Or they 
may be add-ins done on the user end, in which case they properly go in 
/usr/local/include . Very messy, really.

As to your actual, practical question ... I would leave everything in 
/usr/include . If RH puts those header files there, then at least src-rpm 
packages will look there for them. I'd *probably* then symlink 
/usr/local/include to /usr/include, then mv the files you put "somewhere 
else" in /usr/include (after checking to make sure you won't be overwriting 
anything ... if you are, those problems need to be examined on a 
case-by-case basis).

As a general matter, every distro does some repackaging of things, and 
sometimes it is in ways that upstream developers don't like. Since (the 
so-called filesystem "standards" notwithstanding) the dirstos vary in their 
file placement in many detailed ways, no upatream .tgz source package can 
conceivably be consistent with all the approaches. In practice, they match 
whatever system of organiztion the upstream developer prefers, and it's the 
job of the distro-level package maintainer to make things consistent (at 
least it is in Debian, and I think it is for the commcercial distros as well).

At 01:43 PM 3/10/2003 +0800, Peter wrote:
>Hi,
>
>Since the dawn of RH5.2 I am struggling to install tgz packed programs. I
>succeed only in 1 out 10. Usually when running configure somewhere it is
>aborted with various error messages. I am using RH7.3 now and the 
>installation
>was made from scratch.
>
>Now with the help of Richard, he traced the problem to the fact that the
>program configure is looking for files in /usr/local/include when in fact the
>files are in /usr/include.
>
>There are some files in /usr/local/include, however, not as many as in
>/usr/include.
>
>What I did now is move /usr/local/include somewhere else and make a symbolic
>link to /usr/include in usr/local/.
>
>On the first try with 3 programs configure run flawlessly, 2 then fully
>installed and 1 somewhere aborted with error messages when running make.
>
>Questions: Will it be alright if I fully copy or move /usr/include to
>/usr/local/include or I just stay with the symbolic linc?
>
>Are most tgz packed programs made to be looking for files in
>/usr/local/include and if so why when installing RedHat distros the files are
>not there instead they are in /usr/include?





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
