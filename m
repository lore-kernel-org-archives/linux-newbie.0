From: Ray Olszewski <ray@comarre.com>
Subject: Re: Re: Compiation Err:Derefercing pointer to incomplete type
Date: Mon, 07 Apr 2003 21:00:09 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030407205048.0203f590@celine>
References: <200304080235.IAA04461@WS0005.indiatimes.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304080235.IAA04461@WS0005.indiatimes.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: ramands <ramands@indiatimes.com>
Cc: linux-newbie@vger.kernel.org

You sent this reply to me personally instead of to the list. Assuming that 
was simply a typo, I've added the list back in via a Cc: entry.

At 08:37 AM 4/8/2003 +0530, ramands wrote:
>hi Ray
>I got the catch now .
>The problem is with the header files provided by red hat 8.0
>They are incomplete
>i downloaded one kernel tree . include header files of that tree and it 
>went smooth
>But again i am facing one problem
>Now i want to compile that sourse but it is throwing me some error in make 
>bzImage
>I think may be its due to the patch i havent downloaded or maybe its 
>something else
>Do u have any clue why make bzImage would fail
>It says error in timer.c multiple types for times

"make bzImage" can fail for any number of reasons, many of which are the 
direct resut of not following to the letter the procedure described in 
/usr/src/linux/README (your path might vary a bit from this). Check to be 
sure that you followed all the steps specified there.

As to your specifics ... I don't even try to interpret paraphrased or 
truncated error messages from make or gcc. Interpreting the actual output 
is hard enough. If you want help at that level of detail, post the complete 
error line(s), with enough context to let me (and others) see where in the 
compile process you are. And please mention which kernel-source package is 
involved (what kernel version and from what distro - are you getting your 
source from RH rpms or are you downloading from elsewhere?), and whether 
you've made any changes to the source.

Unpatched kernel trees from the big-name distros may contain bugs, but it's 
rare for one not to compile if you follow the instructions in the README 
file. (Rare but not impossible -- the Debian 2.4.20 source I downloaded 
recently would not compile if SMP support was turned off; go figure.) So I 
doubt a missing patch is your problem.

>"Ray Olszewski" wrote:
>
>
>
>At 05:16 PM 4/7/2003 +0530, ramands wrote:
>
>&gt;whenever i incude header uaccess.h for copy my compiler throws a lot of
>&gt;compilation errors . They are generaly of nature
>&gt;
>&gt;uaccess.h&gt;dereferencing pointer to incomplete type
>&gt;
>&gt;sched.h&gt;dereferncing pointer to incomplete type
>&gt;
>&gt;i am using redhat 8.0
>&gt;i have read that some distributions do not provide complete headers for
>&gt;module level programming
>&gt;Is that the reason for error i am getting ?
>
>
>1. What do you mean by "for copy"?
>
>2. Are you #include'ing, in these cases, the uaccess.h that is located in
>/usr/include/asm, or one that comes as part of kernel source? (I ask
>because the context of your questions is "module level programming".) If
>the second, what kernel, and are you compiling for i86 hardware?
>
>3. The lines you (sort of) quote look more like warnings than errors, but
>it is hard to be sure from the small fragments you provide. Could you
>please post a complete "error" line or two?
>
>4. What is "my compiler"? Some version (which) of gcc? Of g++? Or are you
>using some other compiler?
[rubbish removed]




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
