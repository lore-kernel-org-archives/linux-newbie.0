From: "Smarduch Mario-CMS063" <CMS063@motorola.com>
Subject: RE: SCSI device recover
Date: Tue, 11 Sep 2007 14:28:00 -0400
Message-ID: <2D25C6D9C1440E4E8228FC62AE28649802371B03@de01exm69.ds.mot.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-scsi-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-scsi-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, linux-scsi@vger.kernel.org

Hi,
 
We're seeing an issue where a SCSI device failure freezes the system
and it takes about 13s for the system to recover. Not knowing enough
about SCSI or how SCSI works on Linux I have a couple questions.
 
- is there a way to configure the recovery timeouts such as aborts
  and resets?
 
- if yes to what values (ms, seconds) can these be changed?
 
BR,
  mjs.
