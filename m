From: "Joseph D. Wagner" <wagnerjd@prodigy.net>
Subject: INFO REQ: Clarification of Memory Management
Date: Fri, 6 Dec 2002 14:42:11 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000101c29d67$f50ce310$670b3941@joe>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

I'm a little confused about the way the Linux kernel allocates memory, and
I'm hoping someone could clarify this for me.

Does the __get_free_pages() function eventually call the kmalloc() function?
Or does the kmalloc() function eventually call the __get_free_pages()
function?  Or are these two totally separate functions for different
purposes?

Which of these functions can be called by user process for the purpose of
allocating memory for that user process?

TIA

Joseph Wagner

Flames will be directed to /dev/null

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
