From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: gcc version conflict
Date: Fri, 10 Jan 2003 07:00:41 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03011007004101.31603@unix.pa3gcu>
References: <00f901c2b858$a725cb60$6400a8c0@00arc>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00f901c2b858$a725cb60$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jonathan Kallay <yoni@kallay.net>, linux-newbie@vger.kernel.org

On Friday 10 January 2003 03:30, Jonathan Kallay wrote:
> Hi all,
>   I'm trying to compile the kernel module for some NVidia drivers.  I'm
> getting an error message saying that I'm compiling a module with a
> different version of the compiler than the one used to compile the kernel
> (gcc 2.95.4 is what's installed; the kernel version is 2.2.20 and at one
> point I was able to check the compiler version that compiled it but I can't
> remember how I did it).  What's the best way to work around this problem?

This is a FAQ and is in the README you received with the driver/source.
Here is an excrpt;


Q: Compiling the NVdriver kernel module gives this error:

        You appear to be compiling the NVdriver kernel module with
        a compiler different from the one that was used to compile
        the running kernel. This may be perfectly fine, but there
        are cases where this can lead to unexpected behaviour and
        system crashes.

        If you know what you are doing and want to override this
        check, you can do so by setting IGNORE_CC_MISMATCH.

        In any other case, set the CC environment variable to the
        name of the compiler that was used to compile the kernel.

A: You should compile the NVdriver kernel module with the same compiler
   version that was used to compile your kernel.  Some Linux kernel data
   structures are dependent on the version of gcc used to compile it;
   for example, in include/linux/spinlock.h:

        ...
        * Most gcc versions have a nasty bug with empty initializers.
        */
        #if (__GNUC__ > 2)
          typedef struct { } rwlock_t;
          #define RW_LOCK_UNLOCKED (rwlock_t) { }
        #else
          typedef struct { int gcc_is_buggy; } rwlock_t;
          #define RW_LOCK_UNLOCKED (rwlock_t) { 0 }
        #endif

   If the kernel is compiled with gcc 2.x, but gcc 3.x is used when the
   open files in NVdriver are built (or vice versa), the size of rwlock_t
   will vary, and things like ioremap will fail.

   To check what version of gcc was used to compile your kernel, you
   can examine the output of:

        cat /proc/version

   To check what version of gcc is currently in your $PATH, you can
   examine the output of:

        gcc -v


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
