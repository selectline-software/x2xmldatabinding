object MainForm: TMainForm
  Left = 245
  Top = 81
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'X'#178'Software XML Data Binding for Delphi'
  ClientHeight = 291
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    438
    291)
  PixelsPerInch = 96
  TextHeight = 13
  object lblSchema: TLabel
    Left = 8
    Top = 11
    Width = 58
    Height = 13
    Caption = 'Schema file:'
  end
  object feSchema: TcxButtonEdit
    Left = 99
    Top = 8
    Anchors = [akLeft, akTop, akRight]
    Properties.Buttons = <
      item
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = feSchemaPropertiesButtonClick
    Properties.OnChange = feSchemaPropertiesChange
    TabOrder = 0
    Width = 331
  end
  object gbOutput: TGroupBox
    Left = 8
    Top = 43
    Width = 422
    Height = 204
    Anchors = [akLeft, akTop, akBottom]
    Caption = ' Output '
    TabOrder = 1
    ExplicitHeight = 167
    DesignSize = (
      422
      204)
    object rbFile: TRadioButton
      Left = 11
      Top = 21
      Width = 127
      Height = 17
      Caption = ' Output to &single file'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = OutputTypeClick
    end
    object rbFolder: TRadioButton
      Left = 11
      Top = 44
      Width = 150
      Height = 17
      Caption = ' Output to separate &files'
      TabOrder = 1
      OnClick = OutputTypeClick
    end
    object plOutput: TPageControl
      Left = 3
      Top = 68
      Width = 416
      Height = 93
      ActivePage = spFolder
      Anchors = [akLeft, akTop, akRight]
      Style = tsButtons
      TabOrder = 2
      object spFile: TTabSheet
        TabVisible = False
        ExplicitHeight = 85
        object lblFile: TLabel
          Left = 4
          Top = 7
          Width = 55
          Height = 13
          Caption = 'Output file:'
        end
        object feFile: TcxButtonEdit
          Left = 88
          Top = 4
          Properties.Buttons = <
            item
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = feFilePropertiesButtonClick
          TabOrder = 0
          Width = 317
        end
      end
      object spFolder: TTabSheet
        TabVisible = False
        ExplicitLeft = 8
        ExplicitHeight = 195
        DesignSize = (
          408
          83)
        object lblFolder: TLabel
          Left = 4
          Top = 7
          Width = 69
          Height = 13
          Caption = 'Output folder:'
        end
        object lblFolderPrefix: TLabel
          Left = 4
          Top = 32
          Width = 51
          Height = 13
          Caption = 'File prefix:'
        end
        object lblFolderPostfix: TLabel
          Left = 4
          Top = 58
          Width = 56
          Height = 13
          Caption = 'File postfix:'
        end
        object deFolder: TcxButtonEdit
          Left = 88
          Top = 4
          Anchors = [akLeft, akTop, akRight]
          Properties.Buttons = <
            item
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = deFolderPropertiesButtonClick
          TabOrder = 0
          Width = 317
        end
        object edtFolderPrefix: TcxTextEdit
          Left = 88
          Top = 29
          TabOrder = 1
          Text = 'xml_'
          Width = 121
        end
        object edtFolderPostfix: TcxTextEdit
          Left = 88
          Top = 55
          TabOrder = 2
          Width = 121
        end
      end
    end
    object cbHasChecksEmpty: TCheckBox
      Left = 11
      Top = 175
      Width = 401
      Height = 17
      Hint = 
        'Workaround for XML'#39's generated by people who do not understand t' +
        'he concept of optional elements or XSD'#39's in general'
      Caption = 
        ' Check for empty elements as well as omitted elements in Has pro' +
        'perties'
      TabOrder = 3
    end
  end
  object btnGenerate: TButton
    Left = 274
    Top = 258
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Generate'
    Default = True
    TabOrder = 3
    OnClick = btnGenerateClick
    ExplicitTop = 221
  end
  object btnClose: TButton
    Left = 355
    Top = 258
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Close'
    TabOrder = 4
    OnClick = btnCloseClick
    ExplicitTop = 221
  end
  object btnHints: TButton
    Left = 7
    Top = 258
    Width = 142
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Generate blank &Hints file'
    TabOrder = 2
    OnClick = btnHintsClick
    ExplicitTop = 221
  end
  object DefaultEditStyle: TcxDefaultEditStyleController
    Style.HotTrack = False
    Left = 264
    Top = 60
    PixelsPerInch = 96
  end
  object LookAndFeel: TcxLookAndFeelController
    Kind = lfFlat
    Left = 368
    Top = 60
  end
  object dlgSchema: TOpenDialog
    Filter = 'W3C XML Schema files (*.xsd)|*.xsd|All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 212
    Top = 40
  end
  object dlgOutputFile: TSaveDialog
    Filter = 'Delphi source files (*.pas)|*.pas|All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 323
    Top = 45
  end
end
