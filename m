From: "Kasim Sinan Yildirim" <yildirim@bilmuh.ege.edu.tr>
Subject: Paging and system calls
Date: Mon, 28 Apr 2003 14:48:08 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030428124808.M37677@bilmuh.ege.edu.tr>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
To: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hi,

I am working on a small kernel and i am examining the source code of the=20
linux.

Since every task has its own page tables, when task switching occurs,  the =

cr3 field of the TSS is put to the cr3 register which is page directory bas=
e=20
register.

=DDn my operating system, when a system call occurs, the user level code ju=
mps=20
to system level code by changing its selectors to KernelCS and KernelDS. Bu=
t=20
at this point, the cr3 register still points to the page directory of the=20
user process. So, the actual code that is pointed by kernel level page=20
directory is not equal to the user level page directory entry. As a result =
,=20
the system fails.

How this problem is solved in Linux? Have you got any solution to my proble=
m?

Thanks...


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
