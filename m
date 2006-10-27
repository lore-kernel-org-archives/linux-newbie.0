From: "OpenDos Team" <opendos@gmail.com>
Subject: =?WINDOWS-1252?Q?Open_Dos_=96_An_Open_Source_Dynam?= =?WINDOWS-1252?Q?ic_Optimization_System_Released?=
Date: Fri, 27 Oct 2006 18:02:03 +0530
Message-ID: <477e1b2f0610270532l6934b320y5e523601db69721@mail.gmail.com>
References: <477e1b2f0610270530g680759a0he553cd04354264bc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <477e1b2f0610270530g680759a0he553cd04354264bc@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
To: linux-newbie@vger.kernel.org

Open Dos =96 An Open Source Dynamic Optimization System


Dynamic optimization refers to the runtime optimization of a native
program binary. Dynamic binary optimization is an important area for
compiler research, because the additional information available at
runtime can substantially improve the effectiveness of optimizations
that can be performed at runtime. The challenge is to monitor a
process during its execution and optimize the static part of the
binary.  We are building a system for monitoring and modifying a
program's behavior while it is execution, without changing the
semantics of the code. The basic idea of our system is to group a
program's static instruction sequences into traces, optimize those
traces, store the optimized trace in a software-based code cache, and
then execute the optimized code in the code cache. As the runtime
environment exposes several execution paths that have not been
discovered during static optimization, it gives us several
opportunities for performing optimizations even though the binary is
strongly optimized statically. Several dynamic optimizers like Dynamo,
Dynamo-Rio, Mojo have been implemented none of them being an open
source [1]. Hence research in this area is substantially difficult. In
this report we describe the design and high-level implementation of
our dynamic optimization system.

This is a very early version of the system, which has been tested
completely on Fedora core 3 distro. So, kindly don't expect it to be
complete.

Kindly give your reviews on it.

=46or further queries or to be a part of the development team:

You can download the source from :
http://sourceforge.net/project/showfiles.php?group_id=3D166921&release_=
id=3D434335


Mail    :  opendos@gmail.com
Group :  opendos@googlegroups.com
              http://groups.yahoo.com/groups/opendos
Blog    : http://opendos.blogspot.com

Regards,
OpenDos Team.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
