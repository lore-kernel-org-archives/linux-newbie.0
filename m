From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Tar Exclude
Date: Wed, 13 Nov 2002 10:31:15 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <078101c28b29$b4737260$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Also I just noticed I get an error about removing leading / from member
names.

Here is my archive.exclude
/backup/advserver
/backup/logs
/backup/lost+found
/backup/scripts
/backup/tar.archive

-----Original Message-----
From: Paul Kraus [mailto:pkraus@pelsupply.com] 
Sent: Wednesday, November 13, 2002 10:26 AM
To: 'Mike Dresser'
Cc: 'linux-newbie@vger.kernel.org'
Subject: RE: Tar Exclude


Here is the script
------------------
 exceptions=/backup/scripts/archive.exclude
        dt=`date +%A`
        cd /backup
        for filestotar in `ls --almost-all --directory -x1 *`
        do
                tar --directory /backup/tar.archive \
                    --create --verbose  \
                    --exclude-from $exceptions \
                    --file /backup/tmp/$filestotar.$dt.tar \
                    /backup/$filestotar/* 1>
/backup/tmp/$filestotar.$dt.index
        done

-----Original Message-----
From: Mike Dresser [mailto:mdresser_l@windsormachine.com] 
Sent: Wednesday, November 13, 2002 10:22 AM
To: Paul Kraus
Cc: linux-newbie@vger.kernel.org
Subject: Re: Tar Exclude


On Wed, 13 Nov 2002, Paul Kraus wrote:

> When running tar with the exclude set tar creates a 10k empty tar
> file.
>
> I have a script that tars a all the sub directories of a directory
> into individual tar files for each subdirectory. I have an exclude 
> file that is set to skip some of the folders I don't want tarred. This

> works but it creates the empty tar files. Is this normal? Can it be 
> set not to do this?

How about showing us the line out of the script that calls tar, and a
sample of your exclude line.  Tar can be... tempermental when it comes
to exclude's.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
