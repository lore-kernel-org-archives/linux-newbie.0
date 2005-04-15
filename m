From: Peter <peterg@fishinternet.com.au>
Subject: Re: convert windows file names
Date: Sat, 16 Apr 2005 01:39:43 +1000
Message-ID: <1113579584.10338.29.camel@localhost.localdomain>
References: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Fri, 2005-04-15 at 10:04 -0500, James Miller wrote:
> Among various frustrations recently I've had the gratifying success of 
> learning how to use streamripper to augment my music collection. 
> Streamripper is a program that writes an audio stream (e.g., from internet 
> radio) to your hard drive as an mp3 file. This is about the closest thing 
> to the mythical "Rivo" (Tivo for radio) that currently exists, I think, 
> and could maybe serve as the basis for a *real* Rivo-type program, should 
> someone really decide to develop one.
> 
> Despite the success, there are some problems--mainly having to do with 
> file names. I've found a nice commercial-free classical (Baroque) station 
> and have been happily recording away for the last 24 hrs or so. The 
> streamripper program was evidently written for rock or more popular genres 
> and tries to detect breaks between songs so as to make discrete files from 
> them. For whatever strange reason, it has a problem detecting beginnings 
> and endings between movements in classical music (despite the noticeable 
> pause) and wants to break between movements about 30 seconds into the next 
> movement, rather than at the pause. The cat command seems to fix this, 
> though:
> 
> cat movement1.mp3 >full-piece.mp3
> cat movement2.mp3 >>full-piece.mp3
> cat movement3.mp3 >>full-piece.mp3
> 
> The breaks at 30 seconds into the following movement are hardly even 
> noticeable in the full-piece.mp3 (I don't have the kind of purist 
> standards I used to when it comes to audio quality, though).
> 
> But, on to file names. unfortunately, the names for the pieces I'm 
> recording from this station follow Windows long-file-naming conventions. 
> Even worse, the names tend to be quite complex and long. Here are a couple 
> of examples:
> 
> Anton\ Reicha-\ Albert\ Schweitzer\ Quintett\ -\ Wind\ Quintet\ No.9\ 
> in\ D\ major\ Op.91\ No.3-\ Finale-\ Allegretto.mp3
> 
> Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\ 
> Strings\ In\ D\ Major\,\ Op.565\,\ G411\ -.\ Andante\ Come\ 
> Prima.mp3
> 
> Feeding those names to cat so I can join the movements into a single file 
> is going to be a major pain in the wazoo, as they say down at symphony 
> hall. What I was hoping to find is a script that would automatically 
> convert all the wierd characters into more standard Unix file-naming 
> characters. But so far I've come up empty-handed. Can anyone point me to 
> some utility that might do what I need?
> 
> As a last resort, I might try to write my own script. I'm not too hot on 
> doing that though, since I'm at an extremely rudimentary level when it 
> comes to script writing. If it comes to that, could someone maybe help me 
> get started by giving an example for a script that would do the renaming I 
> want? I'd like to retain the bulk of the information, though I don't mind 
> truncating words at, say 5 letters. I suppose the main thing would be 
> replaing all the spaces and/or punctuation with dashes and/or underscores.
> 
> Thanks, James

I just tried this with some mp3 tracks I have here:

cat Really\ Annoying\ File <hit tab key> Second Ultra\ Irritating\ File
<hit tab key>  > testfile.mpg

Seems to work and saves a lot of typing. Of course if you have a large
number of such files even this could get to be a pain, I guess.

By the way, since you like Streamripper, have a look at Streamtuner:

http://www.nongnu.org/streamtuner/

It integrates with Streamripper for click-the-button recording of
streams. Very nice app - the latest version includes a number of sources
as indices, including Xiph, Shoutcast and Live365 as well as a complete
index of your local files, each of these categories having its own tab.

Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
