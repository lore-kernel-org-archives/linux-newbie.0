From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: searching a mail solution
Date: Sun, 19 May 2002 19:56:22 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02051919562211.27213@unix.pa3gcu>
References: <11924676928.20020519190418@chello.pl>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <11924676928.20020519190418@chello.pl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mateusz =?iso-8859-1?q?=3Foskot?= <m.loskot@chello.pl>, linux-newbie@vger.kernel.org

On Sunday 19 May 2002 17:04, Mateusz ?oskot wrote:
> Hello All,
>
> I have some idea and I have some questions:
>
> I'm using "CABLE MODEM" internet connection, I mean I have a small bo=
x
> (cable modem) which is connected with BNC cable comming from my ISP.
> My ISP is a bit popular in Europe (Austria, Poland, Germany etc.).
> It is called CHELLO.

In Holland we have a word for "chello" but i will spare everyone that.

>
> So, this ISP doesn't allow to run any server services.

Please explain, run servers, who is chello so dictate what "they" a;;ow=
 and=20
don not allow, they provide an "internet service" which means you the e=
nd=20
user are connect to the net, it does not matter what you do or what ser=
vices=20
you supply to others, you pay on a data basis, or is it so much differe=
nt in=20
your Country as it is here in Holland.?????

> I know that I could run some servers (www, ftp, mail) with some trick=
s
> ;) in order to be not visible (my services) for my ISP.

That is AFAIK not nessasary..

> Bay the way, could someone explain me, how to make services on my box
> unvisible for  my ISP ?

I think you need to understand that every byte of data is readable to y=
ou=20
isp, every packet is readable so your isp knows on which ports you oper=
ate,
its up to you to encrypt your data so noone can read your data period, =
but=20
you cannot stop one from seeing to which port it is sent and which port=
 it=20
came from.

> I know that I can run, for example FTP server on different ports and
> so on, but I think that my ISP can make some monitoring of SYN packet=
s
> going straigth to my server and check on which port someone try to
> connect with my server.
> What do you think, am I talking nonsense ?

I said nothing, but your isp can see "everything" belive me, o BTW; he =
see's=20
it only if he wants to..

>
> But, as I said  on the start, I;m going to not use tricks ;)

Why should you.???

>
> My local home network structure looks like this:
>
> 3 machines: 1x linux (Slackware), 2x Windows.
> Slackware runs as local network server: printer server, file server
> (with big HDD), backup server, and masq & firewall .
>
> So, me and my Wife works on 2 Windows machines, we have e-mail and ww=
w
> accounts outside (in different ISP's).
> As I said, we have'nt any server on Linux machine.
>
> I have some idea:
>
> I would like to treat my Linux as e-mail (pop3) server.
> Linux is running 24 hours per day, so it could fetch mail from our
> e-mail accounts and on windows machines, I could fetch e-mails
> straight from my Linux server (it could runs POP3 server).
> So, Linux may try to fetch e-mails every 15 minutes.
> This solution could prevent my e-mail accounts (which I have in
> different ISP's) to run out of free space, because my Linux (in my
> home, fetches this e-mails).
> When I'll send my e-mails, I will use SMTP servers from my ISP's
> (outside my home network).
> So, I have some question:
>
> Could someone try to explain me what software should I install ?
> I know that I have to install some POP3 server or/and fetchmail.

Simply use IP_MASQ on your linux router for you internal network,  i ha=
ve had=20
to read between the lines here but i think you mean, you want your inte=
rnal=20
machines to be able to access the net via chello right.?????

>
> Any suggestions, piece of advice ???

Yes one, please try to explain just what you want to do as here in Holl=
and i=20
know of many who use CHELLO and one can do what one wants, its a pay as=
 you=20
go basis not you may not have servers...

>
> Best regards,
>
> --
>
> Mateusz =A3oskot
> E-mail: m.loskot@chello.pl
> GG#: 792434
>

--=20
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
