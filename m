From: "Philippe De Neve" <Philippe.deneve@intec.ugent.be>
Subject: undefined reference to...
Date: Fri, 20 Aug 2004 16:47:43 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001301c486c4$a625bea0$bb7ac19d@King>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I'm new to programming and I'm having a problem I don't understand:

I have 3 very simple files:

1) Integerclass.h containing :

class Integer{
        int i;
public:
        Integer(int j){
                i=j;
        }
        void change(void);
};

2) Integerclass.cpp containing :


#include "Integerclass.h"

void Integer::change(void){
        i=5;
}

3) my_prog.cpp containing

#include "Integerclass.h"

int main(){
        Integer P(2);
        P.change();
        return 0;
};

When I compile the Integerclass.cpp file no errors are returned.

But when I compile and link this :

c++ -o my_prog my_prog.cpp

the output is :

demovideo3:/Projects/little_proggie# c++ -o my_prog my_prog.cpp
/tmp/ccsGvVWq.o: In function `main':
/tmp/ccsGvVWq.o(.text+0x1f): undefined reference to `Integer::change(void)'
collect2: ld returned 1 exit status
demovideo3:/Projects/little_proggie#

I do not understand where I'm making a mistake. I did the same on a windows
machine using VC++ and no errors where returned? Can anyone explain me what
I'm doing wrong? Any help is appreciated!

regards, Philippe.










-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
