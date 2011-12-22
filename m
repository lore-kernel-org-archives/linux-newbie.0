From: Alejandro del Rio <scasbyte@gmail.com>
Subject: Fix files with checkpatch errors/warnings
Date: Wed, 21 Dec 2011 18:49:30 -0600
Message-ID: <CAPbJ=BnAn6TfK9rFdVCSzcZizJOucUyJx0FfC03RYwH_zq-uJQ@mail.gmail.com>
References: <CAPbJ=B=KyJ4vM8iTT+K7xie3z13q5_7tj1mMqMAxXEh+XTQFXA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=v7/gJPpbh+Ut/xx+O5tfx2tnrxyXDfZvuDJY8Jley5Q=;
        b=NCY2zlAdSfnBHjvkAFyZZadFhX9qeiyq7hBH/VD2j8Rr1FkMB/fiSPkCYDZgvi5re/
         8zgIjGZU3AcKLHMRNZu9z/aqUYY/0twDouvVhE84odRx0a15X4tSU2kCsOLc0LIYBBk9
         pWMvB1HALXFmeODATHWrDlm5gwoce61zgWe38=
In-Reply-To: <CAPbJ=B=KyJ4vM8iTT+K7xie3z13q5_7tj1mMqMAxXEh+XTQFXA@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi all,

I'm completely new to linux kernel development and I would like to
make a very first contribution by "cleaning" some files. I noticed
that the script checkpatch.pl (inside scripts/ folder) report lots of
style errors on some drivers.
For example try running ./scripts/checkpatch.pl --file
drivers/video/*, you will notice that most of the files contain style
issues.

My questions are: Is people actively fixing this? Maybe they are not
very interested on fixing this typos... Otherwise, could I contribute
by submitting patches on this?
And finally, if I do so, to who should I show this fixes?

Thanks.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
