From: ACario <acario@wanadoo.fr>
Subject: Getting ls results in text file - Charset issue
Date: Tue, 21 Dec 2004 23:25:42 +0100
Message-ID: <cqa80n$6q6$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

I'm running following command in a console:

ls > out.csv

Then I open the file "out.cvs" in vi and here is what I get, whith all 
these strange characters (below is a copy/paste from vi screen):

^[[00m^[[01;34mcxoffice^[[00m/
^[[01;34mDesktop^[[00m/
^[[01;34mGNUstep^[[00m/
^[[01;34mkde^[[00m/
^[[01;34mLogs^[[00m/
^[[01;34mNntp^[[00m/
^[[00mNOTEBOOK.DBF^[[00m
^[[00mout.csv^[[00m
^[[01;34mSw^[[00m/
^[[01;34mSwWork^[[00m/
^[[01;34mtmp^[[00m/
^[[01;34mWorkspace^[[00m/

My config: Mandrakelinux 10.1, bash
My question: how can I get the results of my "ls" command in a plain 
text file with ASCII or ISO-8891 character set instead of all this 
unreadable characters?

Thanks

ACario

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
