From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Newbie Qt compiling
Date: Sat, 14 Jun 2003 20:23:32 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306142023.32931.sotl155360@earthlink.net>
References: <200306141255.54711.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306141255.54711.sotl155360@earthlink.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi All

I have Md 9.1 installed on my Thinkpad which eliminates most of the issues
that I had with Md 9.0.

Currently, I am trying to set up the Qt compiler so that I may again
attempt to start to learn a little bit of programming.

-----
In that light I have located Qt to be in the following directory.

bash-2.05b$ locate bin/designer
/usr/lib/qt3/bin/designer-real
/usr/lib/qt3/bin/designer
/usr/bin/designer-qt3

-----
From the above I adjusted the complier parameters to be as follows:
gcc -I/usr/lib/qt3/include -L/usr/lib/qt3/lib -lqt -o 
       helloworld helloworld.cpp

-----
The Helloworld program that follows was copied from Worx's site of example 
files for the O'Reilly "Programming with Qt" book follows: 

#include <qapplication.h
#include <qlabel.h

int main( int argc, char* argv[] )
{
   QApplication myapp( argc, argv );

   QLabel* mylabel = new QLabel(NULL, "Hello World" );
   mylabel-resize( 80, 30 );

   myapp.setMainWidget( mylabel );
   mylabel-show();
   return myapp.exec();
}

-----
When I attempt to compile  I get the following:

/usr//bin/ld: cannot find -lqt/usr/lib/qt3/bin
collect2: ld returned 1 exit status

-----
My objective with this example program is simply to verify that the Qt 
compiler is working correctly.

Thus to do this in as simple as possible format I DO NOT desire to use qmake 
and make files as they only another layer of complexity making complier 
verification even more difficult.

Since this program is not compiling correctly I am assuming that I do not have 
the gcc compile parameters correct. I was able at one point several years ago 
to make the above complier procedure work with Qt 1.x so I strongly suspect 
that there is something wrong in my path statement but I am unaware of how to 
correct this.

I would appreciate it if anybody who sees the problem and could furnish a wee
bit of guidance.

Thanks
Frank

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
