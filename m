From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: usleep
Date: Thu, 12 Jun 2003 18:16:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE92606.9050203@bcgreen.com>
References: <20030611225502.29651.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030611225502.29651.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Lee Chin <leechin@mail.com>
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

On my box, (a P3/450) usleep seems to have an overhead of about 10000usec
and a minimum response time of about 20000

/* my test prog:
  * (based on yours)
  */

#include <unistd.h>
#include <sys/time.h>

struct timeval tv1,tv2;
#define PAUSE 100000

int main()
{
     while (1)
     {
         int i;
         double sum=0.0,t;
         gettimeofday(&tv2, NULL);
         printf("hello\n");
         for(i = 0; i < 20 ; i++)
         {
                 gettimeofday(&tv1, NULL);
             usleep(PAUSE);
                gettimeofday(&tv2, NULL);
                printf("slept %9.6fs\n", t=tv2.tv_sec+tv2.tv_usec*.000001 -tv1.tv_sec-tv1.tv_usec*.000001 );
                sum+=t;
         }
         printf ("average %9.6fs\n",sum/i);
         sleep (5);
     }
}



Lee Chin wrote:
 > I would think the following code would wait for 1 second each itteration before printing hello, but it waits way too long.  Replacing the for loop body with a
 > usleep(1000000) works great... what am I missing here?
 >
 > Thanks
 > Lee



-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
