From: "Lee Chin" <leechin@mail.com>
Subject: why does this program crash while using setcontext?
Date: Mon, 20 Jan 2003 01:10:01 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030120061001.72340.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

#include <ucontext.h>
#include <stdio.h>

ucontext_t mainucp;
ucontext_t fooucp;
int flag = 0;

int foo()
{
    printf("(2) foo setting context\n");
    getcontext(&fooucp);
    if (!flag)
    {
        flag = 1;
        setcontext(&mainucp);
    }
    printf("(3) foo done\n");
    return 0;
}

void eleven()
{
    printf("(1) calling foo\n");
    foo();
    printf("(4) foo now finished\n");
}

void ten()
{
    eleven();
}

void nine()
{
    ten();
}

void eight()
{
    nine();
}

void seven()
{
    eight();
}

void six()
{
    seven();
}

void five()
{
    six();
}

void four()
{
    five();
}

void three()
{
    four();
}

void two()
{
    three();
}

void one()
{
    two();
}

int main()
{
    getcontext(&mainucp);
    if (!flag)
    {
        one();
    }
    else
    {
        printf("(2.5) main again\n");
        setcontext(&fooucp);
    }
}

~                                               
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

Meet Singles
http://corp.mail.com/lavalife

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
