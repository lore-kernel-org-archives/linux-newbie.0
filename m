From: Wouter Verhelst <w@uter.be>
Subject: Re: [Qemu-devel] Transforming stdin and stdout pair into
	a	socket
Date: Mon, 11 May 2009 21:31:55 +0200
Message-ID: <20090511193155.GO12606@country.nixsys.be>
References: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com>
	<4A0813D6.3050609@codemonkey.ws>
	<8e04b5820905110632q1a3b9ad4u49d4f3208d994755@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <nbd-general-bounces-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <8e04b5820905110632q1a3b9ad4u49d4f3208d994755-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <https://lists.sourceforge.net/lists/listinfo/nbd-general>, 
	<mailto:nbd-general-request-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=nbd-general>
List-Post: <mailto:nbd-general-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>
List-Help: <mailto:nbd-general-request-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/nbd-general>,
	<mailto:nbd-general-request-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org?subject=subscribe>
Errors-To: nbd-general-bounces-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org
To: "Ciprian Dorin, Craciun" <ciprian.craciun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: nbd-general-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, qemu-devel-qX2TKyscuCcdnm+yROfE0A@public.gmane.org, Anthony Liguori <anthony-rdkfGonbjUSkNkDKm+mE6A@public.gmane.org>

On Mon, May 11, 2009 at 04:32:26PM +0300, Ciprian Dorin, Craciun wrote:
>     About the other solution with SSH port forwarding, I don't really
> like it, because it has some security implications: any process on the
> local machine can access the block device...

That's still the case even if you do not use SSH port forwarding; NBD
does not actually implement anything remotely resembling security at
this point.

I've had plans to implement username/password authentication in
nbd-server and nbd-client, and there's even an implementation floating
around somewhere (written by someone else), but it still needs some work
and isn't finished. Additionally, I'd have to be able to get a patch
into qemu-nbd.c so that it'd support that kind of authentication, too.

-- 
<Lo-lan-do> Home is where you have to wash the dishes.
  -- #debian-devel, Freenode, 2004-09-22

------------------------------------------------------------------------------
The NEW KODAK i700 Series Scanners deliver under ANY circumstances! Your
production scanning environment may not be a perfect world - but thanks to
Kodak, there's a perfect scanner to get the job done! With the NEW KODAK i700
Series Scanner you'll get full speed at 300 dpi even with all image 
processing features enabled. http://p.sf.net/sfu/kodak-com
