From: Ray Olszewski <ray@comarre.com>
Subject: Re: undefined reference to...
Date: Fri, 20 Aug 2004 10:47:09 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040820103008.01f4cb58@celine>
References: <001301c486c4$a625bea0$bb7ac19d@King>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001301c486c4$a625bea0$bb7ac19d@King>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:47 PM 8/20/2004 +0200, Philippe De Neve wrote:
>Hi,
>
>I'm new to programming and I'm having a problem I don't understand:
>
>I have 3 very simple files:
>
>1) Integerclass.h containing :
>
>class Integer{
>         int i;
>public:
>         Integer(int j){
>                 i=j;
>         }
>         void change(void);
>};
>
>2) Integerclass.cpp containing :
>
>
>#include "Integerclass.h"
>
>void Integer::change(void){
>         i=5;
>}
>
>3) my_prog.cpp containing
>
>#include "Integerclass.h"
>
>int main(){
>         Integer P(2);
>         P.change();
>         return 0;
>};
>
>When I compile the Integerclass.cpp file no errors are returned.
>
>But when I compile and link this :
>
>c++ -o my_prog my_prog.cpp
>
>the output is :
>
>demovideo3:/Projects/little_proggie# c++ -o my_prog my_prog.cpp
>/tmp/ccsGvVWq.o: In function `main':
>/tmp/ccsGvVWq.o(.text+0x1f): undefined reference to `Integer::change(void)'
>collect2: ld returned 1 exit status
>demovideo3:/Projects/little_proggie#
>
>I do not understand where I'm making a mistake. I did the same on a windows
>machine using VC++ and no errors where returned? Can anyone explain me what
>I'm doing wrong? Any help is appreciated!
>
>regards, Philippe.

Since VC++ is GUI based, I doubt you really did the "same" using it. I 
mention this only because as a beginner, you need too learn the importance 
of giving exact reports, not impressionistic ones, when asking for help or 
advice.

Your problem is that the way you compile using c++, you do not give the 
linker (ld, invoked by c++ to link after the compile is done) any 
information about where to find the intermediate code for Integerclass.cpp. 
If you run c++ this way instead --

          c++ -o my_prog my_prog.cpp Integerclass.cpp

-- you should get a successful compile/link. (At least I do here, though 
when run the program doesn't actually do anything visible, which looks to 
be consistent with what you've actually coded.) But this is just a 
quick-and-dirty solution to your immediate problem, not the real answer you 
need.

More generally, what you are missing is the use of "make" to manage 
multi-file compiles with gcc, c++, and the rest of the Gnu compiler set. I 
haven't used VC++ in years, but I expect it has an equivalent to make 
hidden somwehere in the programming environment it offers (I know the 
Borland C++ compiler suite does; I've used that more than VC++).

An e-mail is no place for a tutorial on make, but there are plenty of 
resources that introduce it and its use. Look around in the usual places.

BTW, how did you compile Integerclass.cpp by itself? Since it is not a 
standalone program, you'd need to use some of the c++ switches to make the 
compile work (the natural one is "c++ -c Integerclass.cpp"), and that 
suggests you know more about using c++ than I'd been thinking here.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
