From: Ray Olszewski <ray@comarre.com>
Subject: Re: General Guidance - "Drive Mapping"
Date: Tue, 01 Jul 2003 14:28:52 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030701142404.027ddd18@celine>
References: <678FF08CF467D4118DA400508BD9365707431BEA@mail02.adt1.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <678FF08CF467D4118DA400508BD9365707431BEA@mail02.adt1.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:49 PM 7/1/2003 -0600, Linovitz, Scott wrote:
>I'm looking for general guidance on the following and any help is much
>appreciated.
>
>My Situation
>-------------------
>I have two PC's. PC #1 is running WinXP Pro and PC #2 is running RedHat 9.
>
>Goal
>-------
>I have a "shared" folder on PC #1 that I would like to "map" (mount) on PC
>#2.
>
>Question
>-------------
>Which linux service(s) and/or application(s) handle this type of file
>sharing? Is it the Samba service and if so is this the only method to "map"
>(mount) a drive on PC#2 from PC#1?


On the Linux side, the two common ways to mount remote drives are with 
Samba and with NFS. Linux also supports old-style Macintosh sharing via 
netatalk. Your limitation is more likely to be on the Windows side than the 
Linux side.

Usually, Windows supports only SMB (Samba, that is), but I imagine (though 
I don't know ... this is a Linux list, not a Windows list) there *might* be 
add-in NFS servers available for Windows. You can do SMB in userspace with 
smbclient (clumsy, comparatively speaking) or in kernelspace if you compile 
your kernel to support smbfs filesystems (smooth).


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
