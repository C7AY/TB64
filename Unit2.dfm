object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Timer+Base64'
  ClientHeight = 334
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl1: TLabel
    Left = 88
    Top = 50
    Width = 95
    Height = 15
    Caption = 'Time per seconds:'
  end
  object lbl2: TLabel
    Left = 88
    Top = 96
    Width = 74
    Height = 15
    Caption = 'Word encode:'
  end
  object Label1: TLabel
    Left = 88
    Top = 136
    Width = 86
    Height = 15
    Caption = 'Encrypted word:'
  end
  object Label2: TLabel
    Left = 257
    Top = 318
    Width = 24
    Height = 15
    Caption = 'c7ay'
  end
  object edt1: TEdit
    Left = 88
    Top = 69
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 88
    Top = 112
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object btn1: TButton
    Left = 88
    Top = 192
    Width = 121
    Height = 41
    TabOrder = 2
    OnClick = btn1Click
  end
  object mmo1: TMemo
    Left = 593
    Top = 8
    Width = 241
    Height = 193
    TabStop = False
    Enabled = False
    Lines.Strings = (
      '<head>'
      '<meta charset="UTF-8">'
      '<style>'
      '  .centered {'
      '    text-align: center;'
      '    font-size: 15px;'
      '    '
      ''
      '  }'
      '</style>'
      '</head>'
      '<body>'
      '<div id="timerDisplay" class="centered">')
    ReadOnly = True
    TabOrder = 3
    Visible = False
  end
  object mmo2: TMemo
    Left = 593
    Top = 208
    Width = 241
    Height = 193
    Enabled = False
    Lines.Strings = (
      '</div>'
      '<script>'
      'document.addEventListener'
      '('#39'DOMContentLoaded'#39', (event) => {'
      '  let timer = ')
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object mmo3: TMemo
    Left = 840
    Top = 8
    Width = 233
    Height = 193
    Enabled = False
    Lines.Strings = (
      ';'
      '  let timerDisplay ='
      'document.getElementById'
      '('#39'timerDisplay'#39');')
    ReadOnly = True
    TabOrder = 5
    Visible = False
  end
  object mmo4: TMemo
    Left = 840
    Top = 208
    Width = 233
    Height = 193
    Enabled = False
    Lines.Strings = (
      #39'; '
      ''
      '  function updateTimerDisplay(seconds) {'
      '    timerDisplay.textContent = '
      'seconds.toString();'
      '    if (seconds <= 0) {'
      '      let decodedMessage = atob'
      '(encodedCompleteMessage);'
      '      let completeMessage = '
      'document.createElement('#39'div'#39');'
      '      completeMessage.textContent = '
      'decodedMessage;'
      '      completeMessage.className = '
      #39'centered'#39';'
      '      document.body.appendChild'
      '(completeMessage);'
      '      clearInterval(timerInterval);'
      '    }'
      '  }'
      ''
      '  updateTimerDisplay(timer);'
      ''
      '  let timerInterval = setInterval(() => {'
      '    if (timer > 0) {'
      '      timer--;'
      '      updateTimerDisplay(timer);'
      '    }'
      '  }, 1000);'
      '});'
      '</script>'
      '</body>')
    ReadOnly = True
    TabOrder = 6
    Visible = False
  end
  object mmo5: TMemo
    Left = 32
    Top = 407
    Width = 561
    Height = 201
    Enabled = False
    TabOrder = 7
    Visible = False
  end
  object mmo6: TMemo
    Left = 88
    Top = 152
    Width = 121
    Height = 25
    TabStop = False
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    WordWrap = False
  end
  object Button1: TButton
    Left = 88
    Top = 239
    Width = 121
    Height = 41
    TabOrder = 9
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 319
    Top = 8
    Width = 249
    Height = 23
    TabOrder = 10
    Text = 'let encodedCompleteMessage ='#39
    Visible = False
  end
end
