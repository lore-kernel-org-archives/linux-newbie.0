From: Chuck <chuck2007@gelm.net>
Subject: Re: ftp large files to new server
Date: Tue, 19 Aug 2008 07:33:29 -0400
Message-ID: <48AAAF89.1010501@gelm.net>
References: <2e35683f0808180824h159060f7ga5d6745694794114@mail.gmail.com>
Reply-To: chuck2008@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2e35683f0808180824h159060f7ga5d6745694794114@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Bhikkhu Mettavihari <draketools@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Bhikkhu Mettavihari wrote:
> I live in Sri Lanka and have 2 servers in the USA.
> Server1 is a Debian Box
> Server2 is a shared box where I do not have command line access
>
> I have several large files that I have to upload from server1 to Server2.
> I would first ssh to Server1
> then as root or as a user I will
> #ftp Server2
> I get a login and password
> I am accepted as a user.
> then I give the command
> mput *.mpeg
> and the first file will start going
> Then my ssh will time out before the file is uploaded
> and I do not have the possibility to say continue with the next file
>
> Is there a way of telling my ftp client to do mput without prompting
> me for the next file name.
>
> regards
> Mettavihari
>   
Dear Mettavihari:

 I don't know which 'ftp' server application is being used at your 
servers, but
here are some commands I have used:
binary ( to make the circuit work with non-text/ascii/... data)
prompt (this toggles prompting between files)
hash (this displays an octothorpe "#" for each SIZE bytes transferred ).
passive (allows 'dir' and 'ls' commands through a firewall or proxy)

# ftp -p -i hostname
"-p and -i" invokes 'passive' and 'non-interactive' from command line.

HTH, Chuck



--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
