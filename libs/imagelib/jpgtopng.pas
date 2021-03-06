//
// Copyright (c) 1998 Colosseum Builders, Inc.
// All rights reserved.
//
// Colosseum Builders, Inc. makes no warranty, expressed or implied
// with regards to this software. It is provided as is.
//
// Permission to use, redistribute, and copy this file is granted
// without a fee so long as as the following conditions are adhered to:
//
// o The user assumes all risk for using this software. The authors of this
//   software shall be liable for no damages of any kind.
//
// o If the source code is distributed then this copyright notice must
//   remain unaltered and any modification must be noted.
//
// o If this code is shipped in binary format the accompanying documentation
//   should state that "this software is based, in part, on the work of
//   Colosseum Builders, Inc."
//

//
//  Title:  Sample Image Viewer/Format Conversion Application
//
//  Author:  John M. Miano miano@colosseumbuilders.com
//
//---------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "gamma.h"
//---------------------------------------------------------------------
#pragma resource "*.dfm"
TGammaDlg *GammaDlg;
//---------------------------------------------------------------------
__fastcall TGammaDlg::TGammaDlg(TComponent* AOwner)
	: TForm(AOwner)
{
}
//---------------------------------------------------------------------
void __fastcall TGammaDlg::TrackBarChange(TObject *Sender)
{
  GammaLabel->Caption = String (TrackBar->Position / 10.0) ;
}
//---------------------------------------------------------------------------

void __fastcall TGammaDlg::SetGammaValue (double value)
{
  TrackBar->Position = value * 10 + 0.5 ;
  GammaLabel->Caption = String (value) ;
}

double __fastcall TGammaDlg::GetGammaValue ()
{
  return (double) TrackBar->Position / 10.0 ;
}

                                                           