From: "Lee Chin" <leechin@mail.com>
Subject: usleep
Date: Wed, 11 Jun 2003 17:55:02 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030611225502.29651.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

I would think the following code would wait for 1 second each itteration before printing hello, but it waits way too long.  Replacing the for loop body with a 
usleep(1000000) works great... what am I missing here?

Thanks
Lee

#include <unistd.h>

int main()
{
    while (1)
    {
        int i;

        printf("hello\n");
        for(i = 0; i < 50; i++)
        {
            usleep(1000);
        }

    }

}

-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
