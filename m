From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: scripting the "rec" function for a fixed time.
Date: Tue, 25 Feb 2003 06:14:53 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03022506145301.00602@unix.pa3gcu>
References: <5.1.0.14.1.20030224184821.01eb7e30@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030224184821.01eb7e30@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tuesday 25 February 2003 02:55, Ray Olszewski wrote:
> At 07:01 PM 2/24/2003 -0500, Peter Howell wrote:
> >I would like to be able to run the rec command unattended.  Right now
> >when executed, it will record sound until I hit C-c.  I would really
> >like to be able to right a script which will execute "rec ...", then
> >wait a specified period of time, then pass the C-c to it.  Or is there a
> >simpler way?
>
> I waited to see if anyone else would respond, since I cannot actually
> answer your question.

I can shed some light.

>
> "rec" is not a stock linux command, and I cannot readily identify a package
> that includes that application (just trying to match on "rec" turns up
> several hundred hits in the Debian package database). So I'd suggest you
> tell us a bit more about your setup, including enough information that we
> can identify and take a look at the package that includes this command.

rec is an unix command altho' not well supported, slackware 8 has it included.

rec --help shows a lot but thses are relavant to the question;
  -c, --channels=CHANNELS      specifies the number of sound channels in FILE
  -d, --device=DEVICE          use DEVICE for input/output
  -f, --format=FORMAT          specifies bit format of sample
                               FORMAT is either s, u, U, A, a, or g
  -r, --rate=RATE              sample rate in hertz of FILE
  -s, --size=SIZE              interpret size of sample

I think this one could be an help -s xxxxxxxb
                               SIZE is either b, w, l, f, d, or D
  -t, --type=TYPE              specifies file format of FILE

Now you could use trail and error and see how big one song is and then define 
the byte size.
rec should then exit without crtl-c.

> What file format does it record to, and does it record from standard
> sound-card devices (like /dev/mixer or /dev/dsp)? Does its man page list
> any command-line arguments (many video recording programs, for example,
> accept a flag like "-t 5m" to specify recording time)?
>
> Writing a script of the sort you have in mind is a bit more complicated
> than you might at first think, so you are wise to look for other options.

Agreed.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
