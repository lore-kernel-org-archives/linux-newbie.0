From: Adwin <fox@sby.centrin.net.id>
Subject: a trouble with OpenGL (additional information)
Date: Mon, 16 Sep 2002 09:41:50 +0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209160941.50666.fox@sby.centrin.net.id>
References: <200209160910.49335.fox@sby.centrin.net.id>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209160910.49335.fox@sby.centrin.net.id>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: Learn-linux@yahoogroups.com

addtional information : 

I have just found in /usr/lib (not in /usr/X11R6/lib)

lrwxrwxrwx    1 root     root           21 Sep 16 08:42 libGLcore.so.1 -> 
libGLcore.so.1.0.3123*
-r-xr-xr-x    1 root     root      3623820 Aug 28 06:36 libGLcore.so.1.0.3123*
lrwxrwxrwx    1 root     root           10 Sep 16 08:42 libGL.so -> 
libGL.so.1*
lrwxrwxrwx    1 root     root           17 Sep 16 08:42 libGL.so.1 -> 
libGL.so.1.0.3123*
-r-xr-xr-x    1 root     root       283444 Aug 28 06:36 libGL.so.1.0.3123*

can I remove those file into /usr/X11R6/lib  ? 

thanxs
adwin



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
