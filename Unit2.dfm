object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 255
  Width = 519
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Downloads\libmysql.dll'
    Left = 32
    Top = 32
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 112
    Top = 32
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 112
    Top = 96
  end
end
