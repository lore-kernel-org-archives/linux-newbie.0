From: ACario <acario@wanadoo.fr>
Subject: Re: Zipping files listed in a file
Date: Tue, 19 Oct 2004 22:01:16 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <cl3rsr$hb6$1@sea.gmane.org>
References: <cl1ega$s77$1@sea.gmane.org> <20041019.18S.00273900@192.168.0.6>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041019.18S.00273900@192.168.0.6>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Oops, I guess I've increased the counter of 
newbies-who-peruse-man-pages-a-bit-too-quickly before asking for help... 
Danke sehr Robin!
ACario

> ACario (acario@wanadoo.fr) schrieb:
> 
>>Hi,
>>For backup purpose, I'd like to zip all files of a folder that have been
>>modified or created since a given date. I get the wanted list files by
>>running "find myrep -anewer aFileWithGivenDate". Now how can I pass this
>>list of files to the "zip" compresser?
>>Thanks in advance for your help,
>>ACario
> 
> 
> Hey!
> 
> Copied from the manpage (http://linux.math.tifr.res.in/manuals/man/zip.html)
> 
> If the file list is specified as -@, [Not on MacOS] zip takes the list of
> input files from standard input. Under UNIX, this option can be used to
> powerful effect in conjunction with the find(1) command. For example, to
> archive all the C source files in the current directory and its
> subdirectories:
> 
>     find . -name "*.[ch]" -print | zip source -@
> 
> This should be exactly what you want!
> 
> Bye,
> Robin
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
