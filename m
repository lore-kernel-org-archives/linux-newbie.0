From: Theodore Ts'o <tytso@mit.edu>
Subject: Re: devfs + PCI serial card = no extra serial ports
Date: Fri, 7 Mar 2003 18:38:39 -0500
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <20030307233839.GB24572@think.thunk.org>
References: <3E692281.10906@jpl.nasa.gov>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3E692281.10906@jpl.nasa.gov>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bryan Whitehead <driver@jpl.nasa.gov>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Fri, Mar 07, 2003 at 02:51:45PM -0800, Bryan Whitehead wrote:
> It seems devfsd has an annoying "feature". I bought a PCI card to get a 
> couple (2) more serial ports. The kernel doesn't seem to set up the 
> serial ports at boot, so devfs never creates an entry. However, post 
> boot, since there is no entries, I cannot configure the serial ports 
> with setserial. So basically devfsd = no PCI based serial add on?

Yep.  This I pointed this out as a flaw to devfs a long, long time
(years!) ago, but Richard chose not to listen to me.  Personally, I
solve this (and other) problems by simply refusing to use devfs.

						- Ted
