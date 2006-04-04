From: Mac <macduineabhan@yahoo.com>
Subject: Problems with Scanner class in Blackdown JDK
Date: Mon, 3 Apr 2006 20:28:56 -0700 (PDT)
Message-ID: <20060404032856.93706.qmail@web37814.mail.mud.yahoo.com>
References: <4428C787.50804@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4428C787.50804@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm currently using the most recent release of the
Gentoo kernel, version 2.6.15.  The JDK I am using is
Blackdown 1.4.2.03.

Right now I'm taking a college java course, and I'm
trying to get my java up and running so I can do
homework outside of the labs.  The IDE I am supposed
to be using for the class is Bluej (which I have
installed), although I have duplicated the problems I
have been having on Netbeans as well.

Basic java programs seem to compile just fine, but I
have trouble whenever I try to use certain import
statements, specifically with the Scanner class.  For
example:

import java.util.Scanner;
  (error message: cannot resolve symbol - class
Scanner)

-- the same error message occurs with 
import java.util.*;

This class is VERY important to have for my course, as
a large number of the projects we have utilize it. 
The course I'm taking uses it to get keyboard input.
(example: Scanner keyboard = new Scanner(System.in);
 int exampleInt = keyboard.nextInt(); // reads in an
integer using the new Scanner object, keyboard)

The computers at the campus labs are Windows-based.
However, java is very portable, and I have no problems
writing a program in the Linux Bluej, then e-mailing
it to myself and opening in the Windows Bluej on
campus.  The programs written in Linux compile in
Windows, even when they don't compile in Linux.  While
I can still keep doing it this way, it would be nice
to be able to test and debug my projects BEFORE I get
to class, if you know what I mean.

--  Does anyone have a suggestions as to why I might
be getting this message?
--  I know that Java is fairly portable, but is it
possible that the Scanner class is not available for
Linux?

A bit of info:

mycomputer / # java-config -v    #version of JVM
java version "1.4.2-03"
Java(TM) 2 Runtime Environment, Standard Edition
(build Blackdown-1.4.2-03)
Java HotSpot(TM) Client VM (build Blackdown-1.4.2-03,
mixed mode)

Any help would be appreciated.  Thanks!

Mac




__________________________________________________
Do You Yahoo!?
Tired of spam?  Yahoo! Mail has the best spam protection around 
http://mail.yahoo.com 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
