From: Marek Michalkiewicz <marekm@amelek.gda.pl>
Subject: Re: devfs + PCI serial card = no extra serial ports
Date: Sat, 8 Mar 2003 01:15:17 +0100
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <20030308001517.GB20120@alf.amelek.gda.pl>
References: <11E89240C407D311958800A0C9ACF7D1A33DD4@EXCHANGE>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <11E89240C407D311958800A0C9ACF7D1A33DD4@EXCHANGE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ed Vance <EdV@macrolink.com>
Cc: 'Bryan Whitehead' <driver@jpl.nasa.gov>, linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Fri, Mar 07, 2003 at 03:40:31PM -0800, Ed Vance wrote:
> Sure, go ahead and try the second patch that adds the Netmos cards to the
> serial driver's device tables. It is for a somewhat newer rev, but you might
> just get offsets with no failed hunks. It's worth a try.

Note that the second patch depends on the first one (link order fix),
so please apply both patches in the order listed.

After 2.4.21 is released, I'll try to remember to update the patches.

Marek
