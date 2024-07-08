object Form1: TForm1
  Left = 221
  Top = 147
  Width = 1138
  Height = 593
  Caption = 'Satuan'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 80
    Top = 112
    Width = 49
    Height = 18
    Caption = 'Name :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 144
    Top = 376
    Width = 124
    Height = 18
    Caption = 'Search by Name : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 80
    Top = 160
    Width = 71
    Height = 18
    Caption = 'Deskripsi : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 160
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 160
    Top = 160
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 672
    Top = 168
    Width = 377
    Height = 209
    DataSource = DataModule2.dssatuan
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 296
    Top = 376
    Width = 177
    Height = 21
    TabOrder = 3
    OnChange = edt3Change
  end
  object btn1: TButton
    Left = 80
    Top = 256
    Width = 89
    Height = 33
    Caption = 'BARU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 200
    Top = 256
    Width = 89
    Height = 33
    Caption = 'SIMPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 312
    Top = 256
    Width = 89
    Height = 33
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 424
    Top = 256
    Width = 89
    Height = 33
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 512
    Top = 368
    Width = 89
    Height = 33
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btn5Click
  end
end
