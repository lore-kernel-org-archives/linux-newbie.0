From: Jim Nelson <james4765@verizon.net>
Subject: Re: problems with command su
Date: Tue, 07 Dec 2004 17:08:52 -0500
Message-ID: <41B629F4.2030709@verizon.net>
References: <200412071101.31027.vrodriguez@municipiodeloja.gov.ec> <4b0d6e0d041207102128c4e0e6@mail.gmail.com> <200412071627.53625.vrodriguez@municipiodeloja.gov.ec>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200412071627.53625.vrodriguez@municipiodeloja.gov.ec>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Vladimir E. Rodriguez" <vrodriguez@municipiodeloja.gov.ec>
Cc: joy_mm@ieee.org, linux-newbie@vger.kernel.org

Vladimir E. Rodriguez wrote:
> Hello again, I tried this thing but it doesn't work.
> Also I checked that my user vladimir belongs to the group wheel, it's true, 
> but I can't log with su.
> 
> Please someone could help me?
> 
> Thanks
> 
> Vladimir
> 

Last time I had to unlock a box, I booted into Knoppix, mounted the root fs, and 
deleted the root password in /etc/shadow.  In about 3 minutes.  Scared the scat 
out of the guys watching me.

Just make sure you fix the permissions both before and after - /etc/shadow is set 
at 0400 and vi will gripe.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
