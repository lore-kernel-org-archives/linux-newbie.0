From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: Syscall() vs _syscallN()
Date: Wed, 30 Mar 2005 22:41:53 +0545
Message-ID: <652016d305033008562e969e7f@mail.gmail.com>
References: <Pine.LNX.4.21.0503291133250.560-100000@hestia>
	 <000101c534c9$230750c0$90b3c68a@st.com>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000101c534c9$230750c0$90b3c68a@st.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wed, 30 Mar 2005 09:38:09 +0800, Alex LIU <alex.liu@st.com> wrote:
> Sorry for my unclear words...
> I want to know the DIFFERENCE between SYSCALL() and _SYSCALLN()...
> _syscallN() ( _syscall0(),_syscall1(),...._syscall6() ) is a macro defined
> in include/asm/unist.h while syscall() is a glibc function which I'm not
> sure. Thanks!
>
> Alex
>

You are absolutely correct.
_syscallN is a macro on unistd.h whah takes no of parameters according
to the value of N. i.e _syscall0() does not take any parameters
whereas _syscall6() takes 6 parameters.
_syscallN calls calls the glibc function syscall which is an assembly
entry in  sysdeps\unix\sysv\linux\i386\syscall.S (glibc source).

regards
Manish Regmi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
