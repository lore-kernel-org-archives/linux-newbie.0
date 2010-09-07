From: ld puri <neoequal@gmail.com>
Subject: State of outstanding command executing driver code during suspend()/resume().
Date: Tue, 7 Sep 2010 10:30:28 -0600
Message-ID: <AANLkTi=GiP+QZ-ZYvOLsq+J2Fi9E42R8ziOKgEDkeyoc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-ide-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:content-type:content-transfer-encoding;
        bh=KArHtiIKcun9yjXt/hxT7W8gGOPLmw+T2xjtqvJQtGM=;
        b=dsgWEtr42DaAFAIof7xHqzX3umbF29pngSDUsU91m43J3TMmBJ7sGL1EufsvIBR66G
         udElHqYj1jm9oWPY3ZrXg/8s87Kvgtdk/m9EdsVR3YacL7otg3/Tv1niLfww4arl7dvR
         jaKPi/FvO9vb8mF2rFva9kesEPrdzeaRd+AM4=
Sender: linux-ide-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-ide@vger.kernel.org, linux-newbie@vger.kernel.org, linux-pci@vger.kernl.org

Hi All,

While browsing through current Linux Power management implementation
wrt AHCI drivers, I stumbled upon following doubts.

I assume=A0whenever=A0system wide=A0suspend (STR/hibernate) occurs, all=
 the
process is=A0freeze=A0by the Kernel's PM=A0subsystem and it ensures the=
re
are no additional command can be issued to AHCI driver.=A0But it can be
very much possible some commands are being executed within the AHCI
driver.

If my understanding is correct suspend() will be called anytime for
the AHCI driver. In other words, the invocation
ahci_pci_device_suspend() from PCI=A0subsystem=A0won't wait for ahci
driver to complete its outstanding command.
The invocation of suspend(), resume() & remove() call backs from PCI
subsystem are not=A0synchronized=A0with that driver's IO path is this
correct ?

Does these outstanding command currently executed by driver will be los=
t ?

Moreover in resume() routine of AHCI driver, the controller is
reinitialized (ahci_init_controller), then how system can restart the
commands that are stopped during previous suspend() call.

Thanks
Das
