From: Arno Seitzinger <spam2_arno@lucienet.de>
Subject: Re: nfs ownership
Date: Wed, 22 Jan 2003 14:40:32 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <b0m6vf$i18$1@main.gmane.org>
References: <3E2E815C.2020902@arrakis.es>
Reply-To: spam2_arno@lucienet.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Andrew Langdon-Davies wrote:

> I was using Suse 8.0 on two machines, sharing certain directories via
> NFS, with no problems.
> Having changed one machine to Mandrake 9.0 (for the sake of variety), I
> now find I don't own the files on the other machine. Mandrake says the
> owner of the files on the Suse machine is 500; Suse says the owner of
> the files on the Mandrake machine is 501. Where do I start changing
> things? TIA
> Andrew
> 

The user id have to be the same on both machines if you want to share files 
with a rwx------ permission (only owner can read, write, execute, no 
permission to others). One way would be to delete user on one machine and 
create it new with matching id. Very likely there will be other ways for 
matching the user id, too (NIS?).
When you're done, chown -R the files from the user you deleted if you want 
to keep them under the new name.

Arno


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
