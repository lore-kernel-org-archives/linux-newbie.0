From: "Robin Doer" <robin@robind.de>
Subject: Re: Zipping files listed in a file
Date: Tue, 19 Oct 2004 11:24:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041019.18S.00273900@192.168.0.6>
References: <cl1ega$s77$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <cl1ega$s77$1@sea.gmane.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ACario <acario@wanadoo.fr>, linux-newbie@vger.kernel.org

ACario (acario@wanadoo.fr) schrieb:
>
> Hi,
> For backup purpose, I'd like to zip all files of a folder that have been
> modified or created since a given date. I get the wanted list files by
> running "find myrep -anewer aFileWithGivenDate". Now how can I pass this
> list of files to the "zip" compresser?
> Thanks in advance for your help,
> ACario

Hey!

Copied from the manpage (http://linux.math.tifr.res.in/manuals/man/zip.html)

If the file list is specified as -@, [Not on MacOS] zip takes the list of
input files from standard input. Under UNIX, this option can be used to
powerful effect in conjunction with the find(1) command. For example, to
archive all the C source files in the current directory and its
subdirectories:

    find . -name "*.[ch]" -print | zip source -@

This should be exactly what you want!

Bye,
Robin

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
