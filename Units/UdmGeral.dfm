object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 424
  Top = 209
  Height = 346
  Width = 248
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = '../dados/RECARGA.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 136
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 136
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    Left = 32
    Top = 88
  end
  object QRGS: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from RECARGA')
    Left = 32
    Top = 152
  end
  object QExtintor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESTINTOR')
    Left = 32
    Top = 200
  end
  object tbItensRecarga: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ITENS_RECARGA'
    Left = 32
    Top = 248
  end
end
