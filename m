From: Peter <heisspf@skyinet.net>
Subject: Re: MPG Video Format
Date: Tue, 15 Nov 2005 11:00:43 +0800
Message-ID: <20051115110043.4f99c011@Peter.meridiantelekoms.com>
References: <20051115105214.25290e02@Peter.meridiantelekoms.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051115105214.25290e02@Peter.meridiantelekoms.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tue, 15 Nov 2005 10:52:14 +0800
Peter <heisspf@skyinet.net> wrote:

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
Sorry missed to add this output:
.
.
.
......
k3b: (K3bMad::findNextHeader) error: forbidden bitrate value
k3b: (K3bMad::findNextHeader) error: forbidden bitrate value
k3b: (K3bMad::findNextHeader) error: forbidden bitrate value
k3b: (K3bMad::findNextHeader) error: forbidden bitrate value
k3b: (K3bMad::findNextHeader) error: reserved sample frequency value
k3b: (K3bMad) found first header at 6997
k3b: (K3bMad::findNextHeader) error: forbidden bitrate value
k3b: (K3bMadDecoder) unsupported format: /mnt/kpx/file.mpg
k3b: (K3bMad) cleanup at offset: Input file at: 47957 Input file size:
283553564 stream pos: 9313

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
