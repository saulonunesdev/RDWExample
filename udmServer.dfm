object DMServer: TDMServer
  OldCreateOrder = False
  Encoding = esUtf8
  Height = 180
  Width = 178
  object DWSE: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crPost]
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'objPost'
        OnReplyEvent = DWSEEventsobjPostReplyEvent
      end
      item
        Routes = [crGet]
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'objGet'
        OnReplyEvent = DWSEEventsobjGetReplyEvent
      end
      item
        Routes = [crPut]
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'objPut'
        OnReplyEvent = DWSEEventsobjPutReplyEvent
      end
      item
        Routes = [crDelete]
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'objDelete'
        OnReplyEvent = DWSEEventsobjDeleteReplyEvent
      end>
    Left = 64
    Top = 16
  end
end
