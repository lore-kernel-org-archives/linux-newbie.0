From: dante@virtualblueness.net
Subject: Re: remote sound
Date: Fri, 2 Apr 2004 09:28:15 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0404020923060.31267-100000@reddevil.virtualblueness.net>
References: <406D4A10.50505@arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <406D4A10.50505@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Langdon-Davies <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org


I want to do the same thing.  This afternoon I'm going to try to implement 
the following idea:

1) on the client box where I plan to listen to the sound (music in my 
case), I'm going to listen for incoming tcp/ip connections using nc or 
the like and pipe the stream to /dev/dsp locally.

2) on the server box where the sound is to originate, I'm going to replace 
/dev/dsp with a local unix socket, open it using nc or the like, establish 
a tcp/ip connection to the client box and stream the data.

Does this sound like a stupid idea to anyone?

--Tony


On Fri, 2 Apr 2004, Andrew Langdon-Davies wrote:

> Hello all,
> The idea is to use an old p100 (there aren't any new ones) as an X 
> client on which to display videos. The server is a Pentium IV running 
> Mandrake 9.2. I am gradually getting there and so far can run totem or 
> mplayer on the server and watch the results on the client. What I cannot 
> get is sound. Both client and server have working sound. Both have 
> esound installed. What more should I do to get the sound being produced 
> on the server to be heard on the client?
> TIA,
> Andrew
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
