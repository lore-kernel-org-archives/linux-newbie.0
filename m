From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: gcc-3.3.3 native compiler build error on FC4
Date: Mon, 2 Jan 2006 14:49:08 +0530
Message-ID: <3AEC1E10243A314391FE9C01CD65429B223B4B@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Dear All,

I have a system running FC4 whose default gcc is 4.0.0.
I have requirement of gcc-3.3.3 i.e. FC2 default gcc over the FC4.

I am trying to install the gcc rpms found in the FC2 CD's.
It looks like the gcc rpm has a check to see whether the installed gcc is the latest one.
And seeing that installed gcc is the latest one It stops.

What would be a better approach of install the gcc 3.3.3 over my FC4 dist?

I also downloaded the gcc 3.3.3 from gcc.gnu.org.I am failing to get the build successful.
I followed the following steps:

./configure --prefix=/usr/bin
(i got NO errors here)

when I tried to build the gcc using the make file generated

# make 
./read-rtl.c: warning: traditional C rejects ISO C style function definitions
./read-rtl.c: 653: error: invalid lvalue in increment
make[1]: *** [read-rtl.o] Error 1
make[1]: Leaving directory '/root/gcc-3.3.3/gcc'
make[1]: *** [all-gcc] Error 2

Can someone smell the problem?
Do I need to pass any specific arguments to configure script an well as make?

Best Regards,
Mukund Jampala








-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
