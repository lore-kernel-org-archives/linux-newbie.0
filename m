From: Mark Johnson <rmjohnson@adelphia.net>
Subject: [Fwd: Re: re-setting up LILO?]
Date: Wed, 19 Jun 2002 11:36:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D10CF13.5080100@adelphia.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org



-------- Original Message --------





Richard Adams wrote:

>On Wednesday 19 June 2002 14:36, Elias Athanasopoulos wrote:
>
>>On Tue, Jun 18, 2002 at 10:23:21PM +0000, Richard Adams wrote:
>>
>>>On Tuesday 18 June 2002 22:03, lawson_whitney@juno.com wrote:
>>>
>>>>FAIK this will make the NTFS unbootable.  I know nothing about XP, but
>>>>I think the NT bootloader can be installed into the partition boot
>>>>record where lilo can chain-boot it if you scrabble through the
>>>>options.  I suspect it will try to use the MBR if you let it.
>>>>
>>>XP will boot just like dos does, no problem at all.
>>>I have 2 machines here with XP and there is no problem at all.
>>>
>>Lawson is correct. LILO can't but an NTFS partition. XP may use NTFS.
>>
>
>Now thats funny then as i use lilo to boot XP, as i said, "no propblem at 
>all".
>

You are correct.  I just told LILO to use hda (didn't think it would be 
that simple), and it boots like a champ with no problems (XP boots no 
problem also).  Thanks.  I even recompiled my kernel (first time) to add 
ntfs support, modified lilo.conf, and with no help I might add.  I think 
I'm starting to get the hang of this system.  

Thanks again
    -=Mark=-
and thanks to everyone for their help.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
