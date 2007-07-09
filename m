From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Padding in gcc
Date: Mon, 9 Jul 2007 20:08:35 +0530
Message-ID: <366312910707090738u5b3b00bxe56e609dae905b7a@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0575FCC7@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=cpJk0GrT9+ZtcG75KhN1JMUt3jTFKM7JMnTlZovVR8eSxQu2wf4zeLG1F+kOxmTaa5tAnRLAVLxjM888xkduEekgIrBrwrOGq2mZbDR2iVoYy+4rSgEGZyEABuzQPtXlAdy7k7/qvH+kWULff6z+9Gfs5xwbMDQFWf2D1Mz+q0Q=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B0575FCC7@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 7/9/07, Rajat Jain <Rajat.Jain@infogain.com> wrote:
> Hi,
>
> Perhaps a little offtopic but no harm in trying ...
>
> Can we always rely on the fact that gcc will pad the following structure?
>
> typedef struct {
>     int descrp;      SYSCALL64_STRUCT_ATTR;
>     (Automatic padding here?)
>     long long pos;   SYSCALL64_STRUCT_ATTR;
>     int mode;        SYSCALL64_STRUCT_ATTR;
> } lseek64_t;
>
> What is the correct way to make it portable? Explicitly added padding fields?
may be i am missing something but why is this not portable? And how
does padding makes this portable?
Please enlighten me.
Thanks
>
> Thanks,
>
> Rajat
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


-- 
play the game
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
