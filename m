From: Matthew Frederico <matt@ultrize.com>
Subject: Re: remote sound
Date: Fri, 02 Apr 2004 11:52:12 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1080928332.6927.2.camel@localhost.localdomain>
References: <Pine.LNX.4.44.0404020923060.31267-100000@reddevil.virtualblueness.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0404020923060.31267-100000@reddevil.virtualblueness.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: dante@virtualblueness.net
Cc: Andrew Langdon-Davies <ald2@arrakis.es>, linux-newbie@vger.kernel.org

On Fri, 2004-04-02 at 08:28, dante@virtualblueness.net wrote:
> I want to do the same thing.  This afternoon I'm going to try to implement 
> the following idea:
> 
> 1) on the client box where I plan to listen to the sound (music in my 
> case), I'm going to listen for incoming tcp/ip connections using nc or 
> the like and pipe the stream to /dev/dsp locally.
> 
> 2) on the server box where the sound is to originate, I'm going to replace 
> /dev/dsp with a local unix socket, open it using nc or the like, establish 
> a tcp/ip connection to the client box and stream the data.
> 
> Does this sound like a stupid idea to anyone?

Sounds like its going to use a lot of bandwidth to me.  

Correct me if I am wrong, but isn't /dev/dsp for raw sound data AFTER
conversion FROM e.g. MP3 OGG WAV etc?  So "redirecting" /dev/dsp will
probably lag your network substantially.  I think this is a very cool
idea though, and you're probably on the right track.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
