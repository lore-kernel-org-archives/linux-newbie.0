From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: finding directories within a particular directory
Date: Wed, 11 Feb 2009 20:26:19 +0100
Message-ID: <4993265B.2000205@vip.cybercity.dk>
References: <Pine.LNX.4.64.0902101643170.16854@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0902101643170.16854@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: karthikv@Alum.Dartmouth.ORG

Karthik Vishwanath wrote:
> Hi all,
> 
> I have been trying to come up with a way of getting find to give me a 
> list of all directories within a specific directory, without including 
> the parent in the list. I do not seem to be able to achieve it.
> 
> For instance, my directory tree has the following structure:
> .
> `-- Patient1
>     |-- 02-03-2009
>     `-- 02-10-2009
> 
> I want find to only match 02-03-2009 and 02-10-2009. However, the 
> following command gives:
> 
> $ find Patient1 -type d
> Patient1/
> Patient1/02-03-2009
> Patient1/02-10-2009
> 
> How do I stop matching the parent directory - "Patient1", in this case?
> 
> Of course, I could pipe this output through sed/grep to get what I need, 
> but I am curious if I can do it using find alone. All help is appreciated.
> 
> 
> Thanks,
> 
> -K
> 

Hello.

$ find Patient1 -type d -printf %P\\n

Remove the '\\n' if you don't want a newline printed after each line.

-- 
Flemming Greve Skovengaard                   Just a few small tears between
a.k.a Greven, TuxPower                       Someone happy and one sad
<dsl58893 @ vip.cybercity.dk>                Just a thin line drawn between
4011.25 BogoMIPS                             Being a genius or insane
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
