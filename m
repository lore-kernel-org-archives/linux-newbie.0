From: Daniel Peter Cavanagh <nofsk@vtown.com.au>
Subject: bash script problem
Date: Tue, 10 Dec 2002 12:08:06 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF54C86.7070908@vtown.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

I'd like to write a script that will run a command, and if successful 
run another command otherwise echo a message.

This is what I have but it doesn't work (I've never written a bash 
script before):

if [ `fetchmail -su nofsk pop.vtown.com.au` ]; then
    pine
else
    echo failed fetch
fi

Could something please fix this up. Thanks for your help, Daniel.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
