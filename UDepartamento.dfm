object FrmDepto: TFrmDepto
  Left = 0
  Top = 0
  Caption = 'FrmDepto'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 108
    Height = 15
    Caption = 'DEPARTAMENTO_PK'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 61
    Width = 124
    Height = 15
    Caption = 'NOMEDEPARTAMENTO'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 32
    Width = 154
    Height = 23
    DataField = 'DEPARTAMENTO_PK'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 82
    Width = 379
    Height = 23
    DataField = 'NOMEDEPARTAMENTO'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 400
    Width = 628
    Height = 42
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 630
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 240
    Width = 628
    Height = 154
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDTransaction1: TFDTransaction
    Connection = DataModule1.FDConnection1
    Left = 488
    Top = 16
  end
  object QryDepto: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'gen_departamento_id'
    UpdateOptions.AutoIncFields = 'departamento_pk'
    SQL.Strings = (
      'select * from departamento')
    Left = 408
    Top = 16
    object QryDeptoDEPARTAMENTO_PK: TFDAutoIncField
      FieldName = 'DEPARTAMENTO_PK'
      Origin = 'DEPARTAMENTO_PK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object QryDeptoNOMEDEPARTAMENTO: TStringField
      FieldName = 'NOMEDEPARTAMENTO'
      Origin = 'NOMEDEPARTAMENTO'
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = QryDepto
    Left = 576
    Top = 16
  end
end
