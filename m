From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Tkdesk Segmentation Fault
Date: Tue, 12 Nov 2002 12:25:23 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021112122523.H29343@neutrino.particles.org>
References: <200211120123.gAC1NihN005141@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211120123.gAC1NihN005141@pyxis.wanadoo.be>; from hammer@revobild.net on Tue, Nov 12, 2002 at 10:17:19AM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

On Tue, Nov 12, 2002 at 10:17:19AM +0000, Heimo Claasen wrote:
> Indication is that just one application complains, with some
> "Gtk-CRITICAL **" error, evidently some file is lacking.
> 
> Searching through the pertinent distribution CDs I could not find
> anything apparenly relevant to reload/re-install.
> 
> What is the real name for those "Gtk-" libraries ?

Don't bother. In most of the cases these are cases that haven't predicted
by the programmers and apparently drive into 'inoccent' error messages.

% ldd /path/to/gtkfoo

To see which libs are dynamically linked to your gtk foo application.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
