From: "Miguel Angel Alvarez" <ma.alvarez@ziv.es>
Subject: Re: Reentrant code / Critical section / Atomic Section
Date: Thu, 03 Aug 2006 09:46:49 +0200
Message-ID: <44D1A9E9.2030909@ziv.es>
References: <292693080608022312x710233f5w4545f223fa00f27f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <292693080608022312x710233f5w4545f223fa00f27f@mail.gmail.com>
Content-Class: urn:content-classes:message
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; format="flowed"; charset="iso-8859-1"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Daniel Rodrick escribi=F3:
> Hi,
>
> Can some body please confirm my understanding?
>
> "Reentrant code" is a piece of code that could be simultaneously
> running by multiple threads of execution. (either via SMP, or via
> preemption on uniprocessor machines)
Not exactly... A "reentrant code" is a piece of code that is prepared to =

be accesed simultaneously by multiple threads of execution. The keyword=20
is to be prepared.
>
> "Critical Section" is a piece of code that can be running by only one
> thread of execution at a time ( If one thread enters critical section
> on one processor, no other thread will enter critical section, even on
> another processor).
"Critical section" is a piece of code that can cause (for example) race=20
conditions in case of being accesed simultaneously by multiple threads=20
of execution. Critical sections should therefor be protected against =
this.
>
> "Atomic Section" is a piece of code that if starts running on a
> processor, then it can't be preempted untill the atomic section is
> exited. (it is however possible that the same atomic section is being
> run simultaneously on a different processor by a different thread).
More or less.
>
> In that sense "Reentrant Code" seems to be just the opposite of
> "Critical Section". Is this right?
I would not consider them as opposite.

>
> Thanks,
>
> Dan
>
> --=20
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
>
>
>
Miguel =C1ngel=20
=20
----------------------------------------- PLEASE NOTE =
-------------------------------------------
This message, along with any attachments, may be confidential or legally =
privileged.=20
It is intended only for the named person(s), who is/are the only =
authorized recipients.
If this message has reached you in error, kindly destroy it without =
review and notify the sender immediately.
Thank you for your help.
=B5SysCom uses virus scanning software but excludes any liability for =
viruses contained in any attachment.
=20
------------------------------------ ROGAMOS LEA ESTE TEXTO =
-------------------------------
Este mensaje y sus anexos pueden contener informaci=F3n confidencial y/o =
con derecho legal.=20
Est=E1 dirigido =FAnicamente a la/s persona/s o entidad/es rese=F1adas =
como =FAnico destinatario autorizado.
Si este mensaje le hubiera llegado por error, por favor elim=EDnelo sin =
revisarlo ni reenviarlo y notif=EDquelo inmediatamente al remitente. =
Gracias por su colaboraci=F3n. =20
=B5SysCom utiliza software antivirus, pero no se hace responsable de los =
virus contenidos en los ficheros anexos.

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

