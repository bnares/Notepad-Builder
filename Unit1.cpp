//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

AnsiString fileName = "";
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Otworz1Click(TObject *Sender)
{
        if(OpenDialog1->Execute())
        {
          try
          {
                tresc->Lines->LoadFromFile(OpenDialog1->FileName);
                fileName = OpenDialog1 ->FileName;
          }
          catch(...)
          {
           ShowMessage("Error Ocured: Check the name of the file again");
          }
        }


}
//---------------------------------------------------------------------------
void __fastcall TForm1::Zapiszjako1Click(TObject *Sender)
{
        if(SaveDialog1->Execute())
        {
          try
          {
                tresc->Lines->SaveToFile(SaveDialog1->FileName);
                fileName = SaveDialog1 ->FileName;
          }
          catch(...)
          {
           ShowMessage("Cant Save");
          }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Zapisz1Click(TObject *Sender)
{
        if(fileName !="")
        {
             tresc -> Lines ->SaveToFile(fileName);
        }
        else
        {
            Form1 -> Zapiszjako1Click(MainMenu1);
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Nowy1Click(TObject *Sender)
{
        if(Application -> MessageBox("Do You wannt new file?", "Confirm",
        MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES)
        {
         tresc -> Lines->Clear();
         fileName = "";
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::trescKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if(Shift.Contains(ssCtrl))
        {
         if((Key =='s') || (Key =='S'))
         {
              Form1 -> Zapisz1Click(MainMenu1);
         }
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Zakoncz1Click(TObject *Sender)
{
        if(Application -> MessageBox("Do really want to quit?", "Confirm",
        MB_YESNO | MB_ICONQUESTION) == IDYES)
        {
                Application -> Terminate();
        }
        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
          if(Application -> MessageBox("Do really want to quit?", "Confirm",
        MB_YESNO | MB_ICONQUESTION) == IDNO)
        {
                Action = caNone;
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::WytnijCtrX1Click(TObject *Sender)
{
        tresc -> CutToClipboard();        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::KopiujCtrC1Click(TObject *Sender)
{
        tresc -> CopyToClipboard();        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::WklejCtrV1Click(TObject *Sender)
{
        tresc -> PasteFromClipboard();        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Zawijaniewierszy1Click(TObject *Sender)
{
        if (Zawijaniewierszy1 -> Checked ==true)
        {
         Zawijaniewierszy1 -> Checked =false;
         tresc ->WordWrap = false;
         tresc -> ScrollBars = ssBoth;
        }
        else
        {
         Zawijaniewierszy1 -> Checked = true;
         tresc ->WordWrap = true;
         tresc -> ScrollBars = ssVertical;
        }
}
//---------------------------------------------------------------------------
