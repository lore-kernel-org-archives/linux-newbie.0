From: "Bob.Wang" <merrysoft@tom.com>
Subject: about kernel stack FP
Date: Thu, 18 Jul 2013 16:32:14 +0800
Message-ID: <000101ce8391$4ec1e6b0$ec45b410$@com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-apps-owner@vger.kernel.org>
Content-Language: zh-cn
Sender: linux-apps-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: linux-apps@vger.kernel.org, linux-bbs@vger.kernel.org

Hello everyone

I have meeted a problem with linux kernel 2.6.X.X that my user app wants to
get thread kernel stack frame ponter(FP)
from user space by system call or /proc system or any other ways except
driver. I do not want to write a driver,) to steal
FP from kernel. I have tried to use ptrace syscall to get FP with command
PTRACE_GETREGS, but It returns only user 
stack FP rather than kernel stack fp.

would anyone please to give me a hint to solve the problem.


thanks a lot.

regards

Bob Wang

