From: Korkakakis Nikos <korkakak@ceid.upatras.gr>
Subject: questions; gcc builtins - IO scheduler - profiling
Date: Tue, 28 Apr 2009 09:24:52 +0300
Message-ID: <49F6A134.4020308@ceid.upatras.gr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

since I have played a bit with the kernel sources these are some newbie
questions, that I couldn't find with trivial search engine usage;

a) It is possible to use gcc builtin functions in conjuction with some
gcc switches and the march to produce somewhat optimal code. For
instance function __builtin_popcount, together with the march=amdfam10
and -mabm produces a POPCNT assembly instruction which counts the bits
on word (machine word) in 1 instruction. For archs that does not support
the popcnt instruction  as far as I can tell gcc produces
/normal-expected/ code that does the same thing in a simple (using a
loop, shifting and counting Zero-Flags) or a more advanced way ().  Is
such programming practice condemned?

b) One of the coolest things in kernel is the different types of I/O
schedulers. I haven't exhaustively checked the source but is it possible
to have a differnet I/O scheduler per device? If for instance I have an
SSD and a normal hdd wouldn't be cooler to use noop I/O Sched for the
SSD  and anticipatory I/O Sched for the normal hdd?

c) Is there a way to profile *just* one specific module/function/group
of functions that run as a kernel thread for runtime performance? So far
I've (tried to) used (use) oprofile (http://oprofile.sf.net) for some
profiling and it is quite disturbing ( can't see the tree for the forest
:P ).


Cheers :)
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
