object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=masterkey'
      'User_Name=sysdba'
      'Database=E:\2I3\Ds\SistemadeGerenciamento\BDADOS.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 200
    Top = 240
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 328
    Top = 208
  end
end
