From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: Getting ls results in text file - Charset issue
Date: Wed, 22 Dec 2004 09:35:30 +0530
Message-ID: <4b0d6e0d04122120055263ef80@mail.gmail.com>
References: <cqa80n$6q6$1@sea.gmane.org>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <cqa80n$6q6$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ACario <acario@wanadoo.fr>
Cc: linux-newbie@vger.kernel.org

Hi,

don't ask me why, but these characters look more
like ANSI escape sequences (everything prefixed with 
an ESC (^[ ) ) .looks like your console is giving you the
raw data it receives instead of just the text......

regards,
Joy.M.Monteiro


On Tue, 21 Dec 2004 23:25:42 +0100, ACario <acario@wanadoo.fr> wrote:
> Hi,
> 
> I'm running following command in a console:
> 
> ls > out.csv
> 
> Then I open the file "out.cvs" in vi and here is what I get, whith all
> these strange characters (below is a copy/paste from vi screen):
> 
> ^[[00m^[[01;34mcxoffice^[[00m/
> ^[[01;34mDesktop^[[00m/
> ^[[01;34mGNUstep^[[00m/
> ^[[01;34mkde^[[00m/
> ^[[01;34mLogs^[[00m/
> ^[[01;34mNntp^[[00m/
> ^[[00mNOTEBOOK.DBF^[[00m
> ^[[00mout.csv^[[00m
> ^[[01;34mSw^[[00m/
> ^[[01;34mSwWork^[[00m/
> ^[[01;34mtmp^[[00m/
> ^[[01;34mWorkspace^[[00m/
> 
> My config: Mandrakelinux 10.1, bash
> My question: how can I get the results of my "ls" command in a plain
> text file with ASCII or ISO-8891 character set instead of all this
> unreadable characters?
> 
> Thanks
> 
> ACario
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
people always turn away,
from the eyes of a stranger...
Afraid to know
what lies behind the stare.......
    --QueensRyche
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
