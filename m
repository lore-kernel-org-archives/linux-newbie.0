From: Alex LIU <alex.liu@st.com>
Subject: The purpose of PT_TRACESYSGOOD
Date: Mon, 10 Jan 2005 13:22:41 +0800
Message-ID: <006301c4f6d4$68ac52c0$ac655e0a@sha.st.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi:

What's the effect of PT_TRACESYSGOOD flag? I found it's used only set in ptrace_setoptions,which is called in the function ptrace_request. And the PT_TRACESYSGOOD flag will be requested in do_syscall_trace. What's the purpose of that flag? Thanks! 

Alex

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
