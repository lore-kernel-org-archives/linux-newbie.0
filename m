From: Phillip Susi <psusi@cfl.rr.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 12:57:36 -0400
Message-ID: <4649E680.9020102@cfl.rr.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>  <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>  <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>  <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>  <3 <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760293AbXEOQ5l@vger.kernel.org>
In-Reply-To: <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dong Feng <middle.fengdong@gmail.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Dong Feng wrote:
>> Doesn't it run in current process's context ?
>>
> 
> No. I think the concept of process context is a higher-level logical
> concept. Though the interrupt share stack with the interrupted
> process, in my opinion it logically does not share the context with
> the process.

No, the term context here has a specific meaning.  It refers to those 
things which flow from the current pointer, including the virtual memory 
space, file descriptor table, current uid, and so forth.  Because the 
current pointer is not changed on entry to an ISR, the ISR is executing 
in the context of the interrupted process, and thus uses that process' 
virtual memory, etc.

