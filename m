From: joy <gracecott@sancharnet.in>
Subject: Re: Moving Hard Drive
Date: Tue, 20 Jan 2004 09:14:44 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <400CA42C.2040807@sancharnet.in>
References: <20040120021411.0C9D91C905@heisspf>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:

>It's that simple and I should have figured it out myself. However, I remember 
>in my early Linux days somebody had told that the boot must be on hda.
>
>Since I removed my old drive, going back to me old machine, would it then not 
>be necessary to move hdc to hda, instead just leave it where it is? Thus the 
>secondary master becomes primary master or not?
>
>  
>
As long the connection on the mobo is the secondary, it wont be moved to 
hda.
you would know wether it is a primary or secondary master during the h/w 
check bfore
lilo is loaded


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
