From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Script as root
Date: Tue, 1 Oct 2002 14:38:15 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0210011438150A.00233@unix.pa3gcu>
References: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

On Tuesday 01 October 2002 13:55, Paul Kraus wrote:
> I have a backup script that mounts a drive on my xp workstations. Is
> there a way I can set this script to run as root so that I do not have
> to su every time I want to run it?

You could automate the process via crond. As root;
crontab -e
add a line for your script an example;

 10 6 * * */home/pa3gcu/scripts/own-work/dynipcheck

'man crontab' shows more examples.


>
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
