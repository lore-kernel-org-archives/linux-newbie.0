From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: "struct file" - per process per file?
Date: Fri, 30 Mar 2007 08:04:02 +0530
Message-ID: <b115cb5f0703291934v6fc18759w6fde5aec306f6143@mail.gmail.com>
References: <0A8CFEC45B7F4C419F7543867C47442371B37E@mailserver.nechclst.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=cJu9EQ5TychUrIbBzbfWg3k8fedaT7yIXIYt1PvSKcK7gBAbu576tllkjhmu1ZCjs9Q/Estq8PO46lLqHsY/drRp/B4wGni7SahWoTRJI/mIR3yZlUYINfB9YVsvCCxyboty3uxL+84yDKlfuhiRxYKvgIiRbr2rsTfone7lUYk=
In-Reply-To: <0A8CFEC45B7F4C419F7543867C47442371B37E@mailserver.nechclst.in>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Gaurav Dhiman <gaurav.dhiman@nechclst.in>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

> This has reference to LDD3 chap3 - Char drivers (Pg 60).
>
> The following is my understanding which seems to be incorrect. Can
> somebody please point out what am I missing?
>
> LDD3 states that the fops->open() and fops->release() methods are
> called only when "struct file" is created / destroyed. It further says
> that "struct file" is created ONLY when a process calls open() system
> all on a file. To give an example, it also says that if process 1
> opens file A and then forks another process B, then A and B will share
> the same struct file??
>
>
> GD> This is correct. whenever a process opens the file, corresponding
> "struct file" structure is created in kernel. As you might be knowing that
> this is just a virtual file in kernel which keeps track of attributes of
> actual file, like where to read/write, pointer to file operation structures
> etc. Theseattributes makes sense when a file is opened, till the file is not
> closed, at which time fops->release() function is called.
>
>
> This seems quite strange to me as I had an understanding that two
> processes working on the same file will always have different file
> structure. Also, this would mean that a read by one of the processes
> on the file would affect the file position pointer in the other
> process?
>
>
> GD> Wherever a process forks another process all the "struct file"
> strucutres are shared between both processes unless and untill any one of
> those processes does not write to it at which time a seperate copy is
> created, this is also know as COW (Copy On Write). When a process is forked,
> no other "struct file" structure is created, rather the refference count for
> the "struct file" structures are incremented  and there pointers are also
> saved in new process's file table (struct file_struct).
>

Hi Gaurav,

Yes I understand the CoW procedure. So what you are syaing that when
the process A forks process B, both of them point to same "struct
file" (with a ref count of 2). What I am wondering is that what
happens once both the processes actually start writing to those files.

1) In case a seperate copy is created (CoW) at this point for the
forked thread, is open() method of the driver called?

2) In case both the processes continue to use the same "struct file"
wouldn't reads of one file affect the reads of another (since the
location ptr in file will be affected)?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
