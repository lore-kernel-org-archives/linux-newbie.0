From: Ray Olszewski <ray@comarre.com>
Subject: Re: MPG Video Format
Date: Mon, 14 Nov 2005 20:23:11 -0800
Message-ID: <437962AF.9000902@comarre.com>
References: <20051115105214.25290e02@Peter.meridiantelekoms.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051115105214.25290e02@Peter.meridiantelekoms.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter wrote:
> Hi,
> 
> I downloaded a video clip of 270 MB in mpg format. I would like to burn it
> onto a CD, however, I get the error message with k3b:
> 
> "unable to handle the file due to unsupported format"
> 
> The program graveman tries to write and stops just saying: failed.
> 
> Changing the file.mpg to file.mpeg made no difference.
> 
> The video clip plays nicely with Totem.
> 
> Is there a way to burn it onto a CD?
> 
> Thanks & regards
> 

It depends on what sort of CD you want.

If you want to put it on a data CD (an iso9660 filesystem, that is), 
then one way is to follow this two-step process:

	1.  mkisofs -J -o somename.iso -r file.mpg
	2. cdrecord cdrecord dev=[something] somename.iso

Where [something] is an entry like "0,0,0", with the exact value 
depending where on the SCSI bus (or the ide-scsi simulation of a SCSI 
bus) the CD writer is (find our with "cdrecord --scanbus"). Depending on 
your drive and media, you may have to set other parameters too, like 
speed=[value].

If your CD burner isn't SCSI or using ide-scsi simulation ... I've read 
that newer versions of cdrecord support burning to /dev/hd* devices, but 
I've never managed to get it to work here so still use ide-scsi myself.

If you want to make a video CD that a DVD player can play back ... those 
are usually called VCDs or VideoCDs. They use a distinct filesystem, not 
iso9660, and require some fiddling with the video itself. I've never 
made one myself, but there is Linux software that's supposed to do it. 
Look into the packages vcdimager and vcdtools. (As you should be sued to 
with me, these are Debian package names, so you may find the Slack 
packages or the underlying developer packages have slightly different 
names.) mencoder may also be of help with the transcoding part.

If you are trying to do something other than one or the other of these 
things ... then you'll have to be more specific in your question. I'm 
not familiar with k3b (or Totem) ... other than seeing that both are 
available as Debian packages, and seeing in the description of k3b that 
(a) it is a front-end to cdrecord and cdrdao and (b) it supports both 
iso9660 and VCD burns (among other things, including "eMovix CDs", a 
format I am unacquainted with).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
