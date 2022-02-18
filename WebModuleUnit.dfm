object WebModule1: TWebModule1
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end
    item
      MethodType = mtGet
      Name = 'NumberAction'
      PathInfo = '/Number'
      OnAction = WebModule1NumberActionAction
    end
    item
      MethodType = mtGet
      Name = 'Information'
      PathInfo = '/Info'
      OnAction = WebModule1InformationAction
    end
    item
      MethodType = mtGet
      Name = 'GetKeyValue'
      PathInfo = '/KeyValue*'
      OnAction = WebModule1GetKeyValueAction
    end
    item
      MethodType = mtPost
      Name = 'PostKeyValue'
      PathInfo = '/KeyValue*'
      OnAction = WebModule1PosttKeyValueAction
    end
    item
      MethodType = mtPut
      Name = 'PutKeyValue'
      PathInfo = '/KeyValue*'
      OnAction = WebModule1PutKeyValueAction
    end
    item
      MethodType = mtDelete
      Name = 'DeleteValue'
      PathInfo = '/KeyValue*'
      OnAction = WebModule1DeleteValueAction
    end>
  Height = 230
  Width = 415
  PixelsPerInch = 96
end
