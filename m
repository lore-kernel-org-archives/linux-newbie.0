From: "eddysan" <eddysan@alusis.ucb.edu.bo>
Subject: Re: ?Copying 'difficult' CD-ROM discs
Date: Mon, 19 Aug 2002 14:53:11 -0400 (BOT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3243.65.173.62.82.1029783191.ucb@www.ucbmail.ucb.edu.bo>
References: <3D5E8669.41B0CB38@gelm.net>
Reply-To: eddysan@alusis.ucb.edu.bo
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D5E8669.41B0CB38@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org

Try using this command:

mkisofs -J -r -l -allow-lowercase -V "CD label" -o image.iso /mnt/cdrom

and you can mount this file system using...

mount -t iso9660 -o loop,ro image.iso /mnt/cdromproof

If you want burn in linux..

cdrecord -v speed=8 dev=0,0,0 image.iso

speed would be= 2,4,8,12,16

If you have got problems just tell me..

bye

> Howdy, Y'all:
>
> I have a commercial CD-ROM disc that resists being copied.
> (using Eazy-CD-Creator v4.02 & Windows98se & CD-ROM R/W drive)
>
> It is used very frequently and I'd like to create a backup
> and store the original in a safe place.
>
> I have a linux 'file server' system with a CD-ROM read-only drive.
>
> Can I create an '.iso' image of the original CD-ROM disc
> using linux utilities/applications that can be 'burned'
> with my Windows CD-ROM-writer software?
> If 'yes', how or where to go for more information? ;-)
>
> Regards, Chuck
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> in the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
