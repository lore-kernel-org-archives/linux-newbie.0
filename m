From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: re-setting up LILO?
Date: Wed, 19 Jun 2002 17:36:28 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020619173628.B1135@neutrino.particles.org>
References: <20020618.180432.134664264.1.lawson_whitney@juno.com> <02061822232101.05133@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <02061822232101.05133@unix.pa3gcu>; from pa3gcu@zeelandnet.nl on Tue, Jun 18, 2002 at 10:23:21PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: lawson_whitney@juno.com, rmjohnson@adelphia.net, linux-newbie@vger.kernel.org

On Tue, Jun 18, 2002 at 10:23:21PM +0000, Richard Adams wrote:
> On Tuesday 18 June 2002 22:03, lawson_whitney@juno.com wrote:
> 
> > FAIK this will make the NTFS unbootable.  I know nothing about XP, but I
> > think the NT bootloader can be installed into the partition boot record
> > where lilo can chain-boot it if you scrabble through the options.  I
> > suspect it will try to use the MBR if you let it.
> 
> XP will boot just like dos does, no problem at all.
> I have 2 machines here with XP and there is no problem at all.

Lawson is correct. LILO can't but an NTFS partition. XP may use NTFS. 

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
