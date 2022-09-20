
 �;
 7199248f8b924a74add9528c9123b07b abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://15873444-8d16-4d28-9091-9c623fda5224"x-mod/codeblock2�:�:{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "15873444-8d16-4d28-9091-9c623fda5224",
    "Language": 1,
    "Name": "UIPopup",
    "Type": 5,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-08-25T13:31:27.2888156+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": "3606e39d-32de-427e-8d23-b38af810a3b4:52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "message"
      },
      {
        "Type": "Component",
        "DefaultValue": "94a274e4-4111-40f1-924d-c95a3a1f14d5:9",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnOk"
      },
      {
        "Type": "Component",
        "DefaultValue": "0f5de49b-2adc-409a-816d-15aa43df8e0d:9",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnCancel"
      },
      {
        "Type": "Entity",
        "DefaultValue": "fb7a3b06-7026-4590-8efe-bb33416dd8f9",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "popupGroup"
      },
      {
        "Type": "Entity",
        "DefaultValue": "aa954759-0e39-430f-85fa-80bf2e5fe31d",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "popup"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "onOk"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "onCancel"
      },
      {
        "Type": "number",
        "DefaultValue": "0.15",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "duration"
      },
      {
        "Type": "number",
        "DefaultValue": "0.5",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "from"
      },
      {
        "Type": "number",
        "DefaultValue": "1",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "to"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isOpen"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isTweenPlaying"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tweenEventId"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "okHandler"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "cancelHandler"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "message"
          },
          {
            "Type": "any",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "onOk"
          },
          {
            "Type": "any",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "onCancel"
          }
        ],
        "Code": "if self.isOpen == true then\n\treturn\nend\nself.isOpen = true\nself.popupGroup.Enable = true\nself.message.Text = message\nself.onOk = onOk\nself.onCancel = onCancel\n\n\nself.okHandler = self.btnOk.Entity:ConnectEvent(ButtonClickEvent,self.OnClickOk)\nself.cancelHandler = self.btnCancel.Entity:ConnectEvent(ButtonClickEvent,self.OnClickCancel)\nself:StartTween(true)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "Open"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "if self.isTweenPlaying == true then\n\treturn\nend\nif self.onOk ~= nil then\n\tself.onOk()\n\tself.onOk = nil\nend\nself:Close()",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnClickOk"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "if self.isTweenPlaying == true then\n\treturn\nend\nif self.onCancel ~= nil then\n\tself.onCancel()\n\tself.onCancel = nil\nend\nself:Close()",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnClickCancel"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "self.btnOk.Entity:DisconnectEvent(ButtonClickEvent,self.okHandler)\nself.btnCancel.Entity:DisconnectEvent(ButtonClickEvent,self.cancelHandler)\nself:StartTween(false)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "Close"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "open"
          }
        ],
        "Code": "\nlocal transform = self.popup.UITransformComponent\nlocal canvasGroup = self.popupGroup.CanvasGroupComponent \nif open == true then\n\tcanvasGroup.GroupAlpha = 0\n\ttransform.UIScale = Vector3(self.from,self.from,1)\nelse\n\ttransform.UIScale = Vector3(self.to,self.to,1)\nend\nself.isTweenPlaying = true\nlocal time = 0\n\n\nlocal preTime = _UtilLogic.ElapsedSeconds\n\nlocal tween = function()\n\tlocal delta = _UtilLogic.ElapsedSeconds - preTime\n\ttime = time + delta\n\tlocal timeValue = time\t\n\tpreTime = _UtilLogic.ElapsedSeconds\n\n\tif time >= self.duration then\n\t\ttimeValue = self.duration\n\t\tif open == false then\n\t\t\tself.popupGroup.Enable = false\n\t\t\tself.isOpen = false\n\t\tend\n\t\tself.isTweenPlaying = false\n\t\t_TimerService:ClearTimer(self.tweenEventId)\n\n\tend\n\tif open == false then\n\t\ttimeValue = self.duration - timeValue\n\tend\n\tlocal tweenValue = _TweenLogic:Ease(self.from, self.to, \n\t\tself.duration, EaseType.SineEaseIn, timeValue)\n\ttransform.UIScale = Vector3(tweenValue,tweenValue,1)\n\tcanvasGroup.GroupAlpha = timeValue / self.duration\nend\nself.tweenEventId = _TimerService:SetTimerRepeat(tween,1/60)\n",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "StartTween"
      }
    ],
    "EntityEventHandlers": []
  }X�
 2d7548bc1e1c452a95ac4d89935b67d5 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://3cc2ac00f2ee4c0a8513065252069d41"x-mod/directory2��{
    "entry_id": "directory://3cc2ac00f2ee4c0a8513065252069d41",
    "name": "Events",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://4e05f369-c76c-417d-b9fc-bd8d20bd4a34",
      "codeblock://1223e51b-ce37-473d-af8a-40121f69ffa0",
      "codeblock://41520014-042e-4c73-9bcf-0f79ac0dc769"
    ]
  }X�
 f9848f402ca24d2893cac2a41c99cf8a abfbb4d6a57440cf8a60560ad8ab7c9c)sprite://1107c3befce343f7b33e68c8849286e4"x-mod/sprite2��{
    "upload_keyname": "ab/fb/abfbb4d6a57440cf8a60560ad8ab7c9c/sprite/1107c3befce343f7b33e68c8849286e4/637989120209906898",
    "upload_hash": "AAF63B6B9035F242B841E06751A2EB103A8CC4B6303B9122D462C35456464CAB",
    "name": "잔디(나중에 교체해야함)",
    "resource_guid": "1107c3befce343f7b33e68c8849286e4",
    "resource_version": "63242d14a6421097197ded3d"
  }X�
 05d8d69cfeb84d5b9983bc80beac3978 abfbb4d6a57440cf8a60560ad8ab7c9c2userdataset://60c6dcae-e767-490d-9048-ed8e0cc6ec23"x-mod/userdataset2��{
    "name": "ChatTutoData",
    "id": "60c6dcae-e767-490d-9048-ed8e0cc6ec23",
    "serveronly": false,
    "columns": [
      "name",
      "portrait",
      "text"
    ],
    "datas": [
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "1",
        "name": "운영자"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "2",
        "name": "운영자"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "3",
        "name": "운영자"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "4",
        "name": "운영자"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "5",
        "name": "운영자"
      }
    ]
  }XΤ
 0cdfad9b2e79424c9cd5f75cab029d55 abfbb4d6a57440cf8a60560ad8ab7c9c)ui://fb7a3b06-7026-4590-8efe-bb33416dd8f9"x-mod/ui2ϣ�+
$fb7a3b06-7026-4590-8efe-bb33416dd8f9/ui/PopupGroup�*{
          "name": "PopupGroup",
          "path": "/ui/PopupGroup",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "//",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIGroup",
            "sub_entity_id": null
          },
          "modelId": "uigroup",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "OffsetMin": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 1914.73291,
                "y": 1080.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.UIGroupComponent",
              "DefaultShow": false,
              "GroupOrder": 1,
              "GroupType": 1,
              "Thumbnail": "/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAMgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDFooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAEZgilmOABk1At7buflk9T909uamkXfGy+oIqqtmQcfKqkEED6Ef1oAmS6hkZVViS3T5SM0UyO3cTRuxTCLtGPTB/xooAs0UUUAFFFFABRRRQAUUVd03SdQ1eYxafZzXDL94ovC9cbj0GcHGeuKAKVFdF/wgvib/oFSf9/E/wAaP+EF8Tf9AqT/AL+J/jQBztFdF/wgvib/AKBUn/fxP8aP+EF8Tf8AQKk/7+J/jQBztFdF/wAIL4m/6BUn/fxP8aP+EF8Tf9AqT/v4n+NAHO0V0X/CC+Jv+gVJ/wB/E/xo/wCEF8Tf9AqT/v4n+NAHO0V0X/CC+Jv+gVJ/38T/ABrO1PQdV0fadQsZoFbADsuUJOeNw4zweM5oAzqKKKACiiigAooooAKKKKACiiigAooooAKKKKACvXvhR/yLN5/1/N/6LjryGvXvhR/yLN5/1/N/6LjoA7uiiigAooqtdy3UbW/2aDzQ8wWY5A2Jg5bkjPOPz6GgCzRVKK5vWggaSxYOyHzFLqCj5UdASMHLNkEkAdCTimaZPqU6g39otufIjJAIP73LBxwx+XhSPr+QBoUUUUAFct8RUVvA9+WUEq0RUkdD5ijI/AkfjXU1y/xE/wCRF1H6xf8Ao1KAPDqKKKACiiigAooooAKKKKACiiigAooooAKKKKACvXvhR/yLN5/1/N/6LjryGvXvhR/yLN5/1/N/6LjoA7uivNNY+MNnY6lLbWGmG+iiJUzm4CKzAkfLhWyvTByM56VQ/wCF2H/oXh/4G/8A2ugD1qivJf8Ahdh/6F4f+Bv/ANro/wCF2H/oXh/4G/8A2ugD1qisjQvElj4i0f8AtOy80RByjJIoDqw7EAkdCD16EVcN4+TiJSO2X/8ArUAW6Kp/bJP+eK/99/8A1qPtkn/PFf8Avv8A+tQBcrl/iJ/yIuo/WL/0albq3jFgGjAXuQ2f6VhfEMhvAmoEEEEwkEf9dUoA8OooooAKKKKACiiigAooooAKKKKACiiigAooooAK9e+FH/Is3n/X83/ouOvIa0dL1/VtDEw0u+a287HmYjR84zj7wOOp6UAQar4F8RaXqElsNKvLlAT5c0EJkV1yQD8ucZxnB5GaisdB8S6fqFtew6BqRlt5VlQNZyYypBGcD2rc/wCE88Wf9Bx//AaH/wCIo/4TzxZ/0HH/APAaH/4igDDu9B8R3RiH/CO6lGkSlURbaYhQXZsDdnAyx/mckkmv/wAIt4h/6AOqf+Acn+FdJ/wnniz/AKDj/wDgND/8RR/wnniz/oOP/wCA0P8A8RQB6J8PvD2o6B4TltdQiWO5luWmEQcEqMKuCRxn5Sevcfh0flv/AHG/75NeMf8ACeeLP+g4/wD4DQ//ABFH/CeeLP8AoOP/AOA0P/xFAHsUtoZpIHZGzC5dfkB52svcHHDHkYPvgkEt7Q20CxIs7KucGRmduTn7zZJrx3/hPPFn/Qcf/wABof8A4ij/AITzxZ/0HH/8Bof/AIigD2fy5CcCNsn2rH+IK7fAV+uc48kZ/wC2qV5h/wAJ54s/6Dj/APgND/8AEVS1PxJrWtW6W+p6g1zEj+YqmKNMNgjPyqOxNAGXRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAH/9k=",
              "Enable": true
            },
            {
              "@type": "MOD.Core.CanvasGroupComponent",
              "BlocksRaycasts": true,
              "GroupAlpha": 1.0,
              "Interactable": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "fb7a3b06-7026-4590-8efe-bb33416dd8f9"
        }"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent� 
$e25e8e41-5cb9-4fae-8dc0-ea7dca85a91d/ui/PopupGroup/PopupBack�{
          "name": "PopupBack",
          "path": "/ui/PopupGroup/PopupBack",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UISprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 220.724091,
                "y": 200.0
              },
              "OffsetMin": {
                "x": -220.724152,
                "y": -200.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 2356.18115,
                "y": 1480.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -2.28881836E-05,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.600646734
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "e25e8e41-5cb9-4fae-8dc0-ea7dca85a91d"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent� 
$aa954759-0e39-430f-85fa-80bf2e5fe31d#/ui/PopupGroup/PopupBack/PopupPanel�{
          "name": "PopupPanel",
          "path": "/ui/PopupGroup/PopupBack/PopupPanel",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UISprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 490.5,
                "y": 254.0
              },
              "OffsetMin": {
                "x": -490.5,
                "y": -254.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 981.0,
                "y": 508.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "499c70eab41cfeb418a3ad9f87fd0285"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "aa954759-0e39-430f-85fa-80bf2e5fe31d"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent�*
$3606e39d-32de-427e-8d23-b38af810a3b40/ui/PopupGroup/PopupBack/PopupPanel/PopupMessage�){
          "name": "PopupMessage",
          "path": "/ui/PopupGroup/PopupBack/PopupPanel/PopupMessage",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIText",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 389.999969,
                "y": 216.440643
              },
              "OffsetMin": {
                "x": -390.000031,
                "y": -43.5593567
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 780.0,
                "y": 260.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -2.11927636E-05,
                "y": 86.44064
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -2.11927636E-05,
                "y": 86.44064,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 0.4509804,
                "g": 0.4509804,
                "b": 0.4509804,
                "a": 1.0
              },
              "FontSize": 36,
              "OutlineColor": {
                "r": 0.698039234,
                "g": 0.698039234,
                "b": 0.698039234,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "팝업 메시지",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "3606e39d-32de-427e-8d23-b38af810a3b4"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�6
$94a274e4-4111-40f1-924d-c95a3a1f14d5./ui/PopupGroup/PopupBack/PopupPanel/PopupBtnOK�4{
          "name": "PopupBtnOK",
          "path": "/ui/PopupGroup/PopupBack/PopupPanel/PopupBtnOK",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIButton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -12.0,
                "y": -81.0
              },
              "OffsetMin": {
                "x": -420.0,
                "y": -197.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 408.0,
                "y": 116.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -216.0,
                "y": -139.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -216.0,
                "y": -139.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "83b7e4bf01f5ba14abf3adaa68cb3ad3"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.3019608,
                "g": 0.3019608,
                "b": 0.3019608,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 38,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "확인",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "94a274e4-4111-40f1-924d-c95a3a1f14d5"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�6
$0f5de49b-2adc-409a-816d-15aa43df8e0d2/ui/PopupGroup/PopupBack/PopupPanel/PopupBtnCancel�4{
          "name": "PopupBtnCancel",
          "path": "/ui/PopupGroup/PopupBack/PopupPanel/PopupBtnCancel",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIButton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 420.0,
                "y": -81.0
              },
              "OffsetMin": {
                "x": 12.0,
                "y": -197.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 408.0,
                "y": 116.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 216.0,
                "y": -139.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 216.0,
                "y": -139.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "83b7e4bf01f5ba14abf3adaa68cb3ad3"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.9254902,
                "g": 0.9254902,
                "b": 0.9254902,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 0.3019608,
                "g": 0.3019608,
                "b": 0.3019608,
                "a": 1.0
              },
              "FontSize": 38,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "취소",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0f5de49b-2adc-409a-816d-15aa43df8e0d"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent� 
$d57e4ae3-8b17-4cbf-bc44-e7c737743117-/ui/PopupGroup/PopupBack/PopupPanel/deco_line�{
          "name": "deco_line",
          "path": "/ui/PopupGroup/PopupBack/PopupPanel/deco_line",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UISprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 10,
              "AnchorsMax": {
                "x": 1.0,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -18.0,
                "y": -44.0
              },
              "OffsetMin": {
                "x": 18.0,
                "y": -46.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 945.0,
                "y": 2.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -45.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -45.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.9254902,
                "g": 0.9254902,
                "b": 0.9254902,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "d57e4ae3-8b17-4cbf-bc44-e7c737743117"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentX�
 7a7b568d391f4d9a8340f31a846c69d0 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://92e2c2b9-e1e2-4b60-80ad-c9aa52ca28f2"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "92e2c2b9-e1e2-4b60-80ad-c9aa52ca28f2",
    "Language": 1,
    "Name": "MatchEnum",
    "Type": 5,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-02-21T12:58:58.2580582+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0--매칭 중이 아닙니다",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "NONE"
      },
      {
        "Type": "number",
        "DefaultValue": "1--매칭 대기 중 입니다",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "WAIT"
      },
      {
        "Type": "number",
        "DefaultValue": "2--매칭되어 최종 대기 중입니다",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "FINAL_READY"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "string",
          "DefaultValue": "\"\"",
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "state"
          }
        ],
        "Code": "if state == self.NONE then\n\treturn \"NONE\"\nend\nif state == self.WAIT then\n\treturn \"WAIT\"\nend\nif state == self.FINAL_READY then\n\treturn \"FINAL_READY\"\nend",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "ToString"
      }
    ],
    "EntityEventHandlers": []
  }X�
 4a0258a9d9ae4dde8b183707e6f4d71a abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://eb5c815a-1b2e-426c-93d1-01fea48ef04f"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "eb5c815a-1b2e-426c-93d1-01fea48ef04f",
    "Language": 1,
    "Name": "UIExitButton",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-02-17T11:07:14.2442478+09:00",
    "Properties": [
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isAllUserExit"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.Entity.Enable = _InstanceMapService:IsInstance()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleButtonClickEvent",
        "EventName": "ButtonClickEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal Entity = event.Entity\n--------------------------------------------------------\nif self.isAllUserExit then\n\t_MatchLogic:ExitInstanceMapAllUser()\nelse\n\t_MatchLogic:ExitInstanceMap(_UserService.LocalPlayer.OwnerId)\nend",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X�t
 7465a2fc7c7248e7bb01beeb46fd1f87 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://caa729ed-65d4-4a47-afaf-4d532414154c"x-mod/codeblock2�s�s{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "caa729ed-65d4-4a47-afaf-4d532414154c",
    "Language": 1,
    "Name": "MatchLogic",
    "Type": 5,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-16T16:47:45.3600838+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "2--최소 매칭 인원",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "minPlayerCnt"
      },
      {
        "Type": "number",
        "DefaultValue": "2--최대 매칭 인원",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "maxPlayerCnt"
      },
      {
        "Type": "number",
        "DefaultValue": "5--매칭 대기하는 시간",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "waitingDuration"
      },
      {
        "Type": "boolean",
        "DefaultValue": "true--누군가매칭을 취소하면 대기시간을 초기화합니다",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "resetDurationByCancel"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false--이벤트매칭 사용여부입니다",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isEventMatchType"
      },
      {
        "Type": "number",
        "DefaultValue": "10--이벤트매칭의 주기입니다",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "eventMatchPeriod"
      },
      {
        "Type": "string",
        "DefaultValue": "\"%d초후 게임이 시작됩니다\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "logMessage"
      },
      {
        "Type": "number",
        "DefaultValue": "1--배수 매칭입니다(1:기본, 2일 경우 짝수 매칭)",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "multipleMatching"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "self._T.instanceMapCnt = 0\nself._T.readyCnt = 0\nself.minPlayerCnt = math.ceil(self.minPlayerCnt/self.multipleMatching) * self.multipleMatching\nself.maxPlayerCnt = math.ceil(self.maxPlayerCnt/self.multipleMatching) * self.multipleMatching \nself:SetMatchState(_MatchEnum.NONE)\n\n\n\nif  _InstanceMapService:IsInstance() == false then\n\tlocal onUserEnterEvent = function(event)\t\t\t\n\t\t\tlocal user = _UserService:GetUserEntityByUserId(event.UserId)\n\t\t\tif _EntityService:IsValid(user) then\n\t\t\t\tself:OnReadyResult(user.PlayerComponent.UserId,false,self._T.readyCnt ,self._T.matchState,user.OwnerId)\n\t\t\tend\n\t\tend\n\tself._T.onUserEnterEvent = _UserService:ConnectEvent(UserEnterEvent,onUserEnterEvent)\nend\n\nif self.isEventMatchType == false then\n\tself:SetMatchState(_MatchEnum.WAIT)\nelse\t\t\n\tif _InstanceMapService:IsInstance() == false then\n\t\tself:InitEventMatch()\n\tend\nend",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "player"
          },
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "ready"
          }
        ],
        "Code": "if _InstanceMapService:IsInstance() then\n\treturn\nend\nif self.isEventMatchType == false then\n\tif self._T.matchState == _MatchEnum.FINAL_READY then\n\t\tif self.resetDurationByCancel and ready == false then\n\t\t\tself:SetMatchState(_MatchEnum.WAIT)\n\t\t\tself:StartFinalReady(false)\n\t\tend\n\tend\nend\nself._T.readyCnt = self:CheckReadyPlayer()\nself:OnReadyResult(player.PlayerComponent.UserId,ready,self._T.readyCnt ,self._T.matchState)",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "SetReady"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "playerId"
          },
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "ready"
          },
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "playerCnt"
          },
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "matchState"
          }
        ],
        "Code": "local ReadyEvent = MatchReadyEvent(playerId,ready,playerCnt,matchState)\nself:SendEvent(ReadyEvent)",
        "Scope": 2,
        "ExecSpace": 6,
        "Attributes": [],
        "Name": "OnReadyResult"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "start"
          }
        ],
        "Code": "if self._T.timerId ~= nil and self._T.timerId > 0 then\t\n\t_TimerService:ClearTimer(self._T.timerId)\n\tself._T.timerId = 0\n\tself:SetMatchLog(\"\")\nend\nif start then\n\tlocal time = math.floor(self.waitingDuration)\n\tself._T.timerId = 0\n\tlocal timer = function()\n\t\tlocal log = string.format(self.logMessage,time)\t\n\t\ttime = time - 1\n\t\tif time < 0 then\n\t\t\tlog = \"\"\n\t\t\t_TimerService:ClearTimer(self._T.timerId)\n\t\t\tself:StartEnterGame()\n\t\tend\n\t\tself:SetMatchLog(log)\n\tend\n\tself._T.timerId = _TimerService:SetTimerRepeat(timer,1,0)\nend",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "StartFinalReady"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "log"
          }
        ],
        "Code": "self:SendEvent(MatchLogEvent(log))",
        "Scope": 2,
        "ExecSpace": 6,
        "Attributes": [],
        "Name": "SetMatchLog"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local readyCnt = self:CheckReadyPlayer()\nif readyCnt >= self.minPlayerCnt then\t\n\tself:MoveToInstanceMap()\nend\nself:SetMatchState(_MatchEnum.NONE)\nif self.isEventMatchType == false then\n\twait(1)\n\tself:SetMatchState(_MatchEnum.WAIT)\n\tself:CheckReadyPlayer()\nend",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "StartEnterGame"
      },
      {
        "Return": {
          "Type": "number",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local users = _UserService.UserEntities\nif users == nil or users.Count == 0 then\n\treturn 0\nend\n\nlocal readyCnt = 0\nfor k,v in pairs(users) do\n\tif v.PlayerMatch ~=nil and v.PlayerMatch.isReady then\n\t\treadyCnt = readyCnt + 1\n\tend\nend\nif self.isEventMatchType == false then\n\tif readyCnt >= self.minPlayerCnt then\n\t\tif self._T.matchState ~= _MatchEnum.FINAL_READY then\n\t\t\tself:SetMatchState(_MatchEnum.FINAL_READY)\n\t\t\tself:StartFinalReady(true)\n\t\tend\n\telse\n\t\tif self._T.matchState == _MatchEnum.FINAL_READY then\n\t\t\tself:SetMatchState(_MatchEnum.WAIT)\n\t\t\tself:StartFinalReady(false)\n\t\tend\t\n\tend\nend\nreturn readyCnt",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "CheckReadyPlayer"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "matchState"
          }
        ],
        "Code": "if matchState == self._T.matchState then\n\treturn\nend\nself._T.matchState = matchState\nself:OnChangeMatchState(matchState)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "SetMatchState"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "matchState"
          }
        ],
        "Code": "self:SendEvent(MatchStateEvent(matchState))",
        "Scope": 2,
        "ExecSpace": 6,
        "Attributes": [],
        "Name": "OnChangeMatchState"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local users = _UserService.UserEntities\nif users == nil or users.Count == 0 then\n\treturn\nend\nlocal readyCnt = 0\nlocal userTable = {}\n\nfor k,v in pairs(users) do\n\tlocal user = v.PlayerMatch\n\tif user ~=nil and user.isReady then\n\t\treadyCnt = readyCnt + 1\n\t\ttable.insert(userTable,user)\n\tend\nend\ntable.sort(userTable,function(a,b) return a.readyClickTime < b.readyClickTime  end)\n--매칭 시간이 긴 사람부터 매칭 시작\n\nself._T.instanceMapCnt = self._T.instanceMapCnt + 1\n\n\nlocal multiplePlayerCnt = math.floor(readyCnt/self.multipleMatching) * self.multipleMatching\nlocal maxPlayerCnt = math.min(self.maxPlayerCnt,multiplePlayerCnt)\n\nlocal instanceMap = _InstanceMapService:GetOrCreateInstanceMap(self._T.instanceMapCnt)\nlocal usersIds = {}\nlocal moveUserCnt = 0\nfor k,v in pairs(userTable) do\n\tlocal user = v\n\tif moveUserCnt < maxPlayerCnt then\n\t\ttable.insert(usersIds,v.Entity.PlayerComponent.UserId)\n\t\tmoveUserCnt = moveUserCnt + 1\n\telse\n\t\tbreak\n\tend\t\nend\ninstanceMap:MoveUsers(usersIds)",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "MoveToInstanceMap"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "userId"
          }
        ],
        "Code": "_InstanceMapService:MoveUserToParentMap(userId)",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "ExitInstanceMap"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local users = _UserService.UserEntities\nif users == nil or users.Count == 0 then\n\treturn\nend\nlocal exitUsers = {}\nfor k,v in pairs(users) do\n\ttable.insert(exitUsers,v.PlayerComponent.UserId)\nend\n_InstanceMapService:MoveUsersToParentMap(exitUsers)",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "ExitInstanceMapAllUser"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local eventMatch = function()\n\tself:SetMatchState(_MatchEnum.WAIT)\n\tself:StartFinalReady(true)\nend\n_TimerService:SetTimerRepeat(eventMatch,self.eventMatchPeriod+self.waitingDuration,self.eventMatchPeriod)\n",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "InitEventMatch"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "_UserService:DisconnectEvent(UserEnterEvent,self._T.onUserEnterEvent)\nif self._T.timerId ~= nil and self._T.timerId > 0 then\t\n\t_TimerService:ClearTimer(self._T.timerId)\n\tself._T.timerId = 0\nend",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "OnEndPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": "\"\"",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "id"
          }
        ],
        "Code": "local instanceMap = _InstanceMapService:GetOrCreateInstanceMap(self._T.instanceMapCnt)\nself._T.instanceMapCnt=self._T.instanceMapCnt+1\ninstanceMap:MoveUser(id)",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "SinglePlay"
      }
    ],
    "EntityEventHandlers": []
  }X�3
 74b5ff7efe25451bb5e4ebaac36a6f1c abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://ea15274c-a25b-422d-851e-39f932a26236"x-mod/codeblock2�2�2{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "ea15274c-a25b-422d-851e-39f932a26236",
    "Language": 1,
    "Name": "Chat",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-20T10:28:23.5947475+09:00",
    "Properties": [
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "chatUI"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnPrev"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnNext"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnClose"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnComplete"
      },
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "chatDataName"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "chatName"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "chatPortrait"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "chatText"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "chatData"
      },
      {
        "Type": "number",
        "DefaultValue": "1",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "chatIndex"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self._T.handlerBtnPrev = self.btnPrev:ConnectEvent(ButtonClickEvent,function()self:OnClickBtnPrev()end)\nself._T.handlerBtnNext = self.btnNext:ConnectEvent(ButtonClickEvent,function()self:OnClickBtnNext()end)\nself._T.handlerBtnClose = self.btnClose:ConnectEvent(ButtonClickEvent,function()self:OnClickBtnClose()end)\nself._T.handlerBtnComplete = self.btnComplete:ConnectEvent(ButtonClickEvent,function()self:OnClickBtnComplete()end)\n\nself.btnPrev.Visible = false\nself.btnComplete.Visible = false\nself.chatData = _DataService:GetTable(self.chatDataName)\nself:UpdateChat()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "if (self.chatIndex == 1) then return end\nself.chatIndex = self.chatIndex -1\nself:UpdateChat()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnClickBtnPrev"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "if (self.chatIndex == self.chatData:GetRowCount()) then return end\nself.chatIndex = self.chatIndex +1\nself:UpdateChat()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnClickBtnNext"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.chatUI.Visible = false",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnClickBtnClose"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.chatUI.Visible = false\nself.chatIndex = 1\nself:UpdateChat()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnClickBtnComplete"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.chatName.TextComponent.Text = self.chatData:GetCell(self.chatIndex,\"name\")\nself.chatPortrait.SpriteGUIRendererComponent.ImageRUID = self.chatData:GetCell(self.chatIndex,\"portrait\")\nself.chatText.TextComponent.Text = self.chatData:GetCell(self.chatIndex,\"text\")\n\nif (self.chatIndex == 1) then self.btnPrev.Visible = false\nelse self.btnPrev.Visible = true end\n\nif (self.chatIndex == self.chatData:GetRowCount()) then \n\tself.btnNext.Visible = false\n\tself.btnComplete.Visible = true\nelse \n\tself.btnNext.Visible = true\n\tself.btnComplete.Visible = false end",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "UpdateChat"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.btnPrev:DisconnectEvent(ButtonClickEvent,self._T.handlerBtnPrev)\nself.btnNext:DisconnectEvent(ButtonClickEvent,self._T.handlerBtnNext)\nself.btnClose:DisconnectEvent(ButtonClickEvent,self._T.handlerBtnClose)\nself.btnComplete:DisconnectEvent(ButtonClickEvent,self._T.handlerBtnComplete)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnEndPlay"
      }
    ],
    "EntityEventHandlers": []
  }X�
 1a628fdf2b6346649231e4c9db2cc8b2 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://a3e82b889ce743d5a8a638476e4df775"x-mod/directory2��{
    "entry_id": "directory://a3e82b889ce743d5a8a638476e4df775",
    "name": "UILogic",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://15873444-8d16-4d28-9091-9c623fda5224",
      "codeblock://63fe07f0-2bcd-462c-8157-d6031e053b5e"
    ]
  }X�
 8e86a1db62a3427f95f7a8bf5f32ee1c abfbb4d6a57440cf8a60560ad8ab7c9c,directory://84ac42a1506c4f22966dc46df99a6ccc"x-mod/directory2��{
    "entry_id": "directory://84ac42a1506c4f22966dc46df99a6ccc",
    "name": "MatchUI",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://eb5c815a-1b2e-426c-93d1-01fea48ef04f",
      "codeblock://a6a84505-c476-4922-9ded-27dfc90ba387"
    ]
  }X�X
 c4c1054399d046cd82cf17509e945b66 abfbb4d6a57440cf8a60560ad8ab7c9c)ui://0bc398f9-29cb-4d89-a78d-f24742b117e8"x-mod/ui2�W�+
$0bc398f9-29cb-4d89-a78d-f24742b117e8/ui/ToastGroup�*{
          "name": "ToastGroup",
          "path": "/ui/ToastGroup",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "//",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uigroup",
            "sub_entity_id": null
          },
          "modelId": "uigroup",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "OffsetMin": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 1914.73291,
                "y": 1080.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.UIGroupComponent",
              "DefaultShow": false,
              "GroupOrder": 2,
              "GroupType": 1,
              "Thumbnail": "/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAMgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAZLKkELyyHCIpZjjOAOTWfF4g0yZsR3JPDHmJwMKMnkj0q9cxGe0mhGMyIy8+4xWPHoTo5UGGOEoVKqM8lWXPQH+LufxNAF631mwupoooZmZ5QTHmJwGxnOCRjsaKrW2l3Ed9bTzNAVgjEa7Ac4AIHJ/3vb9KKANiiiigAooooAKKKKACiiigAoqld6vp9g+y5u4o3/uE5YfgOasW9zBdRebbzRyp03IwIoA5zWNb1KbU5NK0OJXuIk3yuSuRyOBu47j8/auYs/GurWl2VumMoViskMqBSDnkdMg/5xVXVr290HxZqEkaxkyO4ZJV3JJG53YI7jpUGqzWmpRyajGSJikYCPdAuoyV+YEZkI244wQuxjuLNgA9atbmK8tYrmFsxyqGU/Wpqx/CsElv4YsUlGGKF8ezMWH6EVsUAFFFRrPC8jRpKjOvVQwJH4UASUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABWfrl+2maLdXaD50TC+xJAB/M1oVT1awXVNKuLJjt81MA+jDkH8wKAPPdFsYJLq6fX7O/aVgnlRsrqXZ2IG48YJYYBYgEk03QdUOneMJLe3Dray3TQeU2R8pYhchuQRkdeeo9arvq+radryyayHW4RBGLjyEaWNATny84U5yRuIPBOO4Nnwho9xqWsRX7Wxt7GF/NUJuCFxgfLuJPVQT9MelAHc614c0/XVQ3SMsqDCyxnDAenuPrWTp3gDS7OdZp3luipyEfAT8R3/PHtXWUUAFFFFAEF55n2Kfyc+ZsO3Gc9O2O9eP6QdQ/4SG38nzftvmr5m704654+meOlez1GsEKSNIkUau3VgoBP40ASUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAjKrDDKCPcUtFFABRRRQBj3N5qsmoXEFjHabIAgJm3EsWGeMdPTn8/Spd61qMb2qQrahpbVZiJFYlnOflXB9uB+GeRUeu2+tnVk/syzWS1mRRcSGUDnOD8u4Z+XH+NVJLHxHcyQrJZ2qCNPKL5GNoXgj5ySM5ByBwQcdQADptLu5L7TYbmVAkjg7lXpkEj+lXK5vT5fENs9pDJpsH2UsRJhgrRgswyfnOTjaxAz1I7ZrpKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAMy88QaXp90ba5ugkwxlAjNjPI6A1B/wlmibwn2xtx6L5MmTzj+76g1fn0vT7qRpLiwtZXbG5pIVYn6kimf2LpX/QMs/wDvwv8AhQBSbxdoaZ3XpXGc5hkHTr/DS/8ACW6IOt4emf8AUyf/ABPuPzq3/Yek/wDQLsv/AAHT/Cj+xNJBz/Zdl/4Dp/hQBS/4S/Qs4+3c/wDXF/8A4mj/AIS/Qv8An+/8gv8A/E1eGi6UOmmWX/fhf8KP7F0r/oGWf/fhf8KAKP8Awl+hf8/3/kF//iawfAkFlpVzd2ya2L6a72ttEUy73XcXlbzHb53yN2MD5BxXWf2LpX/QMs/+/C/4VJDplhbyiWCxtopF6OkSqR+IFAFqiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD//Z",
              "Enable": true
            },
            {
              "@type": "MOD.Core.CanvasGroupComponent",
              "BlocksRaycasts": true,
              "GroupAlpha": 1.0,
              "Interactable": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0bc398f9-29cb-4d89-a78d-f24742b117e8"
        }"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent�,
$7af9e538-1713-49f7-a83e-711c0f4b4a3c/ui/ToastGroup/Toast_message�*{
          "name": "Toast_message",
          "path": "/ui/ToastGroup/Toast_message",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UISprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 3,
              "AnchorsMax": {
                "x": 0.5,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 105.369347,
                "y": -24.3528137
              },
              "OffsetMin": {
                "x": -105.369347,
                "y": -103.647186
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 210.7387,
                "y": 79.29437
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -64.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 476.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "7d614552ba7843049bb48ebd4509fb8f"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.6
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 27,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 50,
                "right": 50,
                "top": 20,
                "bottom": 20
              },
              "SizeFit": true,
              "Text": "message",
              "UseOutLine": false,
              "Enable": true
            },
            {
              "@type": "MOD.Core.CanvasGroupComponent",
              "BlocksRaycasts": true,
              "GroupAlpha": 1.0,
              "Interactable": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "7af9e538-1713-49f7-a83e-711c0f4b4a3c"
        }"vMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent,MOD.Core.CanvasGroupComponentX�
 10ebca066f3e4f40b1548c60da8177c0 abfbb4d6a57440cf8a60560ad8ab7c9ccollisiongroupset://unique"x-mod/collisiongroupset2��{
    "Groups": [
      {
        "Id": "52b7398fad6940e78bd641b64eb0814a",
        "Name": "Default"
      },
      {
        "Id": "MOD@TriggerBox",
        "Name": "TriggerBox"
      },
      {
        "Id": "MOD@HitBox",
        "Name": "HitBox"
      },
      {
        "Id": "MOD@Interaction",
        "Name": "Interaction"
      },
      {
        "Id": "MOD@Portal",
        "Name": "Portal"
      },
      {
        "Id": "MOD@Climbable",
        "Name": "Climbable"
      }
    ],
    "Matrix": {
      "52b7398fad6940e78bd641b64eb0814a": [
        "52b7398fad6940e78bd641b64eb0814a"
      ],
      "MOD@TriggerBox": [
        "MOD@TriggerBox"
      ],
      "MOD@HitBox": [
        "MOD@HitBox"
      ],
      "MOD@Interaction": [
        "MOD@Interaction"
      ],
      "MOD@Portal": [
        "MOD@Portal"
      ],
      "MOD@Climbable": [
        "MOD@Climbable"
      ]
    }
  }X�a
 65ff894862914192926446e952db1a6d abfbb4d6a57440cf8a60560ad8ab7c9cmodel://player"x-mod/model2�a�a{
    "Version": 1,
    "Name": "Player",
    "BaseModelId": null,
    "Id": "player",
    "Components": [
      "MOD.Core.TransformComponent",
      "MOD.Core.MovementComponent",
      "MOD.Core.RigidbodyComponent",
      "MOD.Core.KinematicbodyComponent",
      "MOD.Core.SideviewbodyComponent",
      "MOD.Core.StateComponent",
      "MOD.Core.AvatarRendererComponent",
      "MOD.Core.CostumeManagerComponent",
      "MOD.Core.HitComponent",
      "MOD.Core.HitEffectSpawnerComponent",
      "MOD.Core.DamageSkinSpawnerComponent",
      "MOD.Core.CameraComponent",
      "MOD.Core.PlayerControllerComponent",
      "MOD.Core.ChatBalloonComponent",
      "MOD.Core.NameTagComponent",
      "MOD.Core.DamageSkinSettingComponent",
      "MOD.Core.TriggerComponent",
      "MOD.Core.InventoryComponent",
      "MOD.Core.AvatarStateAnimationComponent"
    ],
    "Properties": [
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "speed",
        "DisplayName": "speed",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.MovementComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "InputSpeed"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "jumpForce",
        "DisplayName": "jumpForce",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.MovementComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "JumpForce"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "walkAcceleration",
        "DisplayName": "walkAcceleration",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.RigidbodyComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "WalkAcceleration"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "gravity",
        "DisplayName": "gravity",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.RigidbodyComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "Gravity"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "cameraDeadZone",
        "DisplayName": "cameraDeadZone",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.CameraComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "DeadZone"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "cameraSoftZone",
        "DisplayName": "cameraSoftZone",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.CameraComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "SoftZone"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "cameraDamping",
        "DisplayName": "cameraDamping",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.CameraComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "Damping"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "cameraScreen",
        "DisplayName": "cameraScreen",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.CameraComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "ScreenOffset"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "cameraDutch",
        "DisplayName": "cameraDutch",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.CameraComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "DutchAngle"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "cameraOffset",
        "DisplayName": "cameraOffset",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.CameraComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "CameraOffset"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "message",
        "DisplayName": "message",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.ChatBalloonComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "Message"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "chatModeEnabled",
        "DisplayName": "chatModeEnabled",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.ChatBalloonComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "ChatModeEnabled"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "nameTag",
        "DisplayName": "nameTag",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.NameTagComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "Name"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODDataRef, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "damageSkinId",
        "DisplayName": "damageSkinId",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.DamageSkinSettingComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "DamageSkinId"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "damageDelayPerAttack",
        "DisplayName": "damageDelayPerAttack",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.DamageSkinSettingComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "DelayPerAttack"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "triggerBodyBoxSize",
        "DisplayName": "triggerBodyBoxSize",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.TriggerComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "BoxSize"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "triggerBodyBoxOffset",
        "DisplayName": "triggerBodyBoxOffset",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.TriggerComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "BoxOffset"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "triggerBodyColliderOffset",
        "DisplayName": "triggerBodyColliderOffset",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.TriggerComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "ColliderOffset"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Name": "maxHp",
        "DisplayName": "maxHp",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.PlayerComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "MaxHp"
        }
      },
      {
        "Type": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODSyncDictionary`2[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Name": "actionSheet",
        "DisplayName": "actionSheet",
        "ShowInInspector": true,
        "Link": {
          "Target": {
            "$type": "MODNativeType",
            "type": "MOD.Core.AvatarStateAnimationComponent, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
          },
          "Property": "ActionSheet"
        }
      }
    ],
    "Values": [],
    "EventLinks": [],
    "Children": []
  }X�
 bda2bccbd05240939c5ba96896b75127 abfbb4d6a57440cf8a60560ad8ab7c9ccodeblock://uimyinfo"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "<여기에 설명을 추가합니다>",
    "Id": "UIMyInfo",
    "Language": 1,
    "Name": "UIStatus",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-20T10:41:55.0864917+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": ":62",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "hpBar"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "maxWidth"
      },
      {
        "Type": "Component",
        "DefaultValue": ":52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "hpText"
      },
      {
        "Type": "Component",
        "DefaultValue": ":UITransformComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "expBar"
      },
      {
        "Type": "Component",
        "DefaultValue": ":TextComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "expText"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local currentPath = self.Entity.Path\n\nlocal nameText = _EntityService:GetEntityByPath(currentPath .. \"/info_top/text_name\")\nnameText.TextComponent.Text = _UserService.LocalPlayer.PlayerComponent.Nickname\nself.hpText = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Hp/text_value\").TextComponent\n\nself.hpBar = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Hp/img_bar\").UITransformComponent\nself.maxWidth = self.hpBar.RectSize.x\n\nself.expBar = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Exp/img_bar\").UITransformComponent\nself.expText = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Exp/text_value\").TextComponent",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "local hp = _UserService.LocalPlayer.PlayerComponent.Hp\nlocal maxHp = _UserService.LocalPlayer.PlayerComponent.MaxHp\nself.hpBar.RectSize = Vector2(hp / maxHp * self.maxWidth,self.hpBar.RectSize.y)\nself.hpText.Text = string.format(\"%d / %d\", hp,maxHp)\n\t\nlocal exp = _UserService.LocalPlayer.ExtendPlayerComponent.exp\nlocal maxExp = _UserService.LocalPlayer.ExtendPlayerComponent.maxExp\nself.expBar.RectSize = Vector2(exp/maxExp*self.maxWidth,self.expBar.RectSize.y)\nself.expText.Text = string.format(\"%d / %d\", exp,maxExp)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X�
 76e6779f4c96414b85f78fc8bf0bdc2c abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://41520014-042e-4c73-9bcf-0f79ac0dc769"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "41520014-042e-4c73-9bcf-0f79ac0dc769",
    "Language": 1,
    "Name": "MatchLogEvent",
    "Type": 3,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-02-21T13:00:05.2630657+09:00",
    "Properties": [
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "Log"
      }
    ],
    "Methods": [],
    "EntityEventHandlers": []
  }X�
 0fc81db6f146486089bdfca8aeab0920 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://a894d5a796df419e9bf8fce792708135"x-mod/directory2��{
    "entry_id": "directory://a894d5a796df419e9bf8fce792708135",
    "name": "RootDesk",
    "lock": false,
    "folding": false,
    "nameEditable": false,
    "child_list": [
      "directory://6c3452b46fea4691a7c068b1ac7166d1"
    ]
  }X�
 406273b9e400439aa4fe863beaf722c3 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://fd2ce09f-69d3-4c5d-8b15-a6b153f9bd26"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "fd2ce09f-69d3-4c5d-8b15-a6b153f9bd26",
    "Language": 1,
    "Name": "PlayerMatch",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-02-22T07:48:19.6224195+09:00",
    "Properties": [
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "isReady"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "readyClickTime"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "ready"
          }
        ],
        "Code": "self.isReady = ready\nself.readyClickTime = _UtilLogic.ServerElapsedSeconds\n_MatchLogic:SetReady(self.Entity,ready)",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "SetReady"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "if _InstanceMapService:IsInstance() == false then\n\tself:SetReady(false)\nend",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "OnDestroy"
      }
    ],
    "EntityEventHandlers": []
  }X�

 9065b444cbe6461d8444fcdf08f2372a abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://663a3395-5ec2-4420-8d9b-e75c1a9819f8"x-mod/codeblock2�	�	{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "663a3395-5ec2-4420-8d9b-e75c1a9819f8",
    "Language": 1,
    "Name": "ChatTuto",
    "Type": 1,
    "Source": 0,
    "Target": "codeblock://ea15274c-a25b-422d-851e-39f932a26236",
    "ModifyTime": "2022-09-19T15:14:47.2075066+09:00",
    "Properties": [],
    "Methods": [],
    "EntityEventHandlers": [
      {
        "Name": "HandleTouchEvent",
        "EventName": "TouchEvent",
        "Target": "self",
        "Code": "-- Parameters\n--------------------------------------------------------\nself.chatUI.Visible = true",
        "Scope": 0,
        "ExecSpace": 0
      },
      {
        "Name": "HandleKeyDownEvent",
        "EventName": "KeyDownEvent",
        "Target": "service:InputService",
        "Code": "-- Parameters\nlocal key = event.key\n--------------------------------------------------------\nif key==KeyboardKey.F1 then self.chatUI.Visible = true end\nif key==KeyboardKey.Escape then self.chatUI.Visible = false end",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X�
 7f1c3413763d4b88bc240fcb5bf48a4c abfbb4d6a57440cf8a60560ad8ab7c9c1logic://mod.core.logic.defaultuserenterleavelogic"x-mod/logic2}{
    "Name": "defaultuserenterleavelogic",
    "PlayerUri": "model://defaultplayer",
    "StartPoint": "/maps/Lobby"
  }X�
 b482868a0d63453595745b4531f2f87b abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://de6ebaed-9c12-4906-ae59-226927bc5b46"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "de6ebaed-9c12-4906-ae59-226927bc5b46",
    "Language": 1,
    "Name": "ExtendPlayerComponent",
    "Type": 4,
    "Source": 0,
    "Target": "MOD.Core.PlayerComponent",
    "ModifyTime": "2022-09-20T10:44:16.5640609+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "exp"
      },
      {
        "Type": "number",
        "DefaultValue": "100",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "maxExp"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "--키할당 제거\nlocal pcc = self.Entity.PlayerControllerComponent\nfor i, v in pairs(KeyboardKey) do\n\tif i ~=\"UpArrow\" and i ~=\"DownArrow\" and i ~=\"LeftArrow\" and i ~=\"RightArrow\"\n\tand i ~= \"UnderlyingSystemType\" and i ~= \"__CastFrom\"\tthen\n\t\tpcc:RemoveActionKey(v)\n\tend\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      }
    ],
    "EntityEventHandlers": []
  }Xޓ
 125e63bfb9314ef581c77a5c9a0b5b22 abfbb4d6a57440cf8a60560ad8ab7c9cmap://ingame"	x-mod/map2���
$56e67aca-7da1-4894-9d38-bc360732e322/maps/InGame�{
          "name": "InGame",
          "path": "/maps/InGame",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 0,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.MapComponent",
              "AirAccelerationXFactor": 1.0,
              "AirDecelerationXFactor": 1.0,
              "FallSpeedMaxXFactor": 1.0,
              "FallSpeedMaxYFactor": 1.0,
              "Gravity": 1.0,
              "IsInstanceMap": true,
              "TileMapMode": 1,
              "WalkAccelerationFactor": 1.0,
              "WalkDrag": 1.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.FootholdComponent",
              "FootholdsByLayer": {},
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "56e67aca-7da1-4894-9d38-bc360732e322"
        }"0MOD.Core.MapComponent,MOD.Core.FootholdComponent�
$92af9a0c-4daa-4444-be5e-ef4db41f7d9f/maps/InGame/Background�{
          "name": "Background",
          "path": "/maps/InGame/Background",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 0,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.BackgroundComponent",
              "SolidColor": {
                "r": 0.6313726,
                "g": 0.7647059,
                "b": 0.05882353,
                "a": 1.0
              },
              "TemplateRUID": "0c398bbb2cf6400992532465b9d53024",
              "Type": 2,
              "WebUrl": "",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "92af9a0c-4daa-4444-be5e-ef4db41f7d9f"
        }"MOD.Core.BackgroundComponent�;
$205a279f-0745-40bf-9932-bafa73ec7270/maps/InGame/MapleMapLayer�:{
          "name": "MapleMapLayer",
          "path": "/maps/InGame/MapleMapLayer",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "maplemaplayer",
            "sub_entity_id": null
          },
          "modelId": "maplemaplayer",
          "@components": [
            {
              "@type": "MOD.Core.MapLayerComponent",
              "IsVisible": true,
              "LayerSortOrder": 0,
              "Locked": false,
              "MapLayerName": "Layer1",
              "Thumbnail": "iVBORw0KGgoAAAANSUhEUgAAAMgAAABkCAYAAADDhn8LAAATD0lEQVR4Ae2dS4h12VXH97mv+qofMZ1GglFj7EggONCQiAYMoUEc6VBwEAmKAzP3gZmYRDBzzSSTCOogTkRn4sRkIEjA10AJpCPaQTDYROlOuvuruvdc/7+9zzq1bn2591bVXTdU112ru+5Xte75r732Onudxz77f1ZXAuWPv/S2ddfJ4HpdrXZlUvr6p36b8Fspfd+V6ZRN9Pd6UnWTSVf/7gWreLSy4fGosLGBr9tNpL/CozIfDF83WzcfDN90zQfDoxt9GNqvOn2sHR6d7wN4hD55PDrzIQqPTevDqcZwXww+/tFX2w5hwwNldiB+Ey63+r4vEyUAsiZRGGjdbBz4facBrYFECk2mLWmWq74OJDYCj2DD49Ex8D2+bdcXj0dnPhgenflgeHTmw4hvG27i64ZXfQCP+D6AR0gG68O2GByKpx3rg/mPbuzDCcRwbwzYIEhiE0TJwFDvL1sCTybrMptr512uymo16LoL/c440nY6KlfRv+tOg1B7HDyCDY9Hh42Jw9ftsOHwVTf4YHh05oPh0Y0+DPiqG3yw9tH5PoBHNvqADxLfh20xOBRPO9aH0f/W+Eb7qKwP5j+6hxBD+rErBnwfJaEJ0l+uddTvyvysHVG53OCE0F9IP1xizc+UGEVnFH1eXrTtFnMdefX/6nHD0zlseDw6bHg8Omx4fN1u8MHw6MwHw6MzHwyPznyw9tH5PoCvOteHikfp+rAtBofiacb6YP6jsz6Y/227hxnD1rft44jvoyQ0Qc4e6Z6D0TRchiz5XWeL2TkjhwuCUi4uuvJosaqJVC9JpFstdfbQpiOeDWVjA49ONjy+bqZR6fHozAfDozMfDI+OZMYHw6MbfbD2Ubo+gEd8H8AjG33YEoND8bRjfTD/0VkfRv9RWh/M/7rhWz+GdGNXDPg+SkIT5GKpI9ZlO2rh4HSugT/VIFSizGatqTdeuyzrxaysdHhfPl7Wfpw/PSsTfW14lBz9PR4dNjweHTY8Hp35YHh05oPh0ZkPhkdnPlj76HwfwCO+D+AR3wfwiPng20d/VzxY64P5j876YP6jsz6Y/+geQgzpx64Y8H2U6NCekhHICGyLQOgZhEPWVFOenW7OkfmMyyRdwqxXpR9meh69rTU51fVIN0yPLvtVmfXS60wDHsGGx6PDhse37Tq1cYVHZz4YHp35YPi63eDDiEc5+GDto/J92IZnO9+HbTE4FE87ZuNUY7g3BmwQJKFnkE4JsZ5rgPN8Qz9vfEeJoind+WKu6319p5/Lx9x/6DJMM1Lnz7SfmiiCGd5seLzZ8Hiz4fFmw7fvfTC898HwuiEZfTC898H8Nxu+fbPh2zcb19s/BG8+eP+J4/X2H3IM98UgKDeqmdgziKZ5mU6dzzW3Kzl/igeF6Jaawm1NLc71BcmiGak3X9fdo2TxaKGTz0rjU2cD4RFseDw6bHg8Omx4PDrzwfBN13wwPDrzwfDozAdrH53vQ8WjdH0Aj/g+bIvBoXjasT6Y/1V3QjHcFwO+j5LYBJFXZ9pRDDLEHvrpPr1crtsN+Vm3KMulniXoEmo6b83XCR8NOI26igeLDY9Hhw2PR4cNj0dnPhi+bjf4MOJRDj5c4VE2H3z7aK0P4BHfh4pH6fqwLQaH4mlm7MOJxnB/DNgiRkIThGlOZnO7STsLTDRyVrqm11yWBk/T9f1ST4I1NrtpmXA5Jllq9mtaZ7saHh02NvAouZdxeFTY8Hh05oPh0ZkPhkdnPhgene8DeMT3ATzi+wAe8X3YFoND8bRjfTD/0VkfzH90DzWG9G1XDPg+SkITZKUb8suLZZk/agO/m+pJusbYSvccrF1CVstJWSx0dtAziBWPoyWz2VS/a+D104pHhw2PR4cNj0eHDY9HZz4Yvm43+GB4dObDiK/K5oO1j8r3ATzi+wAe8X3YFoND8bWdE4/h3hiwQZC0vR1kLM1kBB5aBELPICyBmOue4M032sO0ost11idNdISdcREvef31y9IttfaKP4YpXR3LtThxpvsJbs6bS9WGw7M5Njbwo40rPKrRhwFfNxt8MDy6Kx8aHp35YO3X7VwfwCObfWiXWL4P22JwKJ62rQ9X/qO9isFDj+G+GPB9lIQmSL9c6fKG3TZcu2udlK66dIPLIsY2iOZajrLmAl73JSs9dUfqrNNZW27S8Gh1/+LwaLDh8eiw4fHozAfDozMfrvBomw+Grxq55PHofB/AI74P4JH5Rh++ewwOxdd2TjyG+2LA91ESmiBr3dTOH8k1lrlLdD6paVHXDA2LFXl2YFwKu3ZfaOlJndcXrOIBs0ze4as92fB4dNjweHTmg+HRmQ+GbzqWwFzh0bE8w+OrTh8ej873gfaRjT5siQHtI3fFg7U+0N4pxnBfDPg+SkITRCO6Ts1u40Lg9KlzGZIP0sYAY+GunJq944gNgiQ2QXTUTD6IBoCOFMkHaTGAk4MYJ8X4KOjuyqkBm3yQ5IMwDuolnx4ljXwWdMkH2R0DYhQloWeQkYswPGAzPoZxMXB61zr+Ec+GsrGBR5d8EKJw8jHcF4MapKCPNtUSZCzNZAQeWgRCzyBG1tlGFiJ4u4guhme7h0r2OZRwlTFsQ3bXOCJGURKaIIxq42LgoPExjIuB7tS5DNZ/YmF8DvgoyE34JGxnNgyPbuS0nACnZm8M2CBIQi+x9nEh9q3jN/xD5jLABUk+yHFjEJQb1UzsGUTTvPWpdPJBKp+FCBsnxTgxyQcZOD0E546cGqC7ODF8HyWxCSKvjIuBg8bHMC4FulPnMiQfpHF6GAt35dTsH0dsESOhCWJchG1cCFzetY7f8Gz3ULkMyQdpnJ46FrTywjgtt+HUVKzjBV3nFfF9lITeg0Q5lXYyAvclAqFnkCRMXZG+kjDViHOQ1pBI0hn2jPhmpLfahhaeVtIafwRJaIIkH+SK05J8kIEX1Cj8G7ygY3NignKjmglNkOSDeE5L8kGM08NIi+TUYO+K1/Mkr4jvoyQ0QZIPIr6K45Owk4yTEsUnwWbyQXbHgBhFSWiCJB9EZ42hPsc2TkzyQTS4h8WsyQcRF8DzAMjqXev4sz6ILtF0BtrFJ8kYNkbmrnEUdfaosY40lrYyAg8tAqGXWFlAR9OPQxGgLKCju6+B9EbSeNIXs51Vd8ciRGB3kcaq8aCP0AQZCU9JmKqEL/bRBulrIHyhv2sBHrCnTjrbFwO+j5LQBDE+R/JB2mwWO+kmBXT+5F8+WX7iB76v/PjZ35fXtODz3x7/TPmri18qn3nv+57AY3MXF8L2Ads9VE7NvhjwfZSEJkjyQRTOgY9x0/ogf/fPL5Rf+MF/Ly/3P1n+VYnRXndUyqef+93y2a9+qXz6Ay9u1CdhxycfZE8MorJDdkLXYhmfo77lXEuZr9fWSD5Iq4/i+SD/+EN/Wz75q18o7+i+0XYrta718w/f+anywWe/mTG8wzgKzA/dJUVK8kH0KKjVOLlpfZD3918pv/GF/1CCdOW58nL53/W7y9vX/1n+r/uR8v3rr4lPMtW0b9ZYuU0MIod06Bkk0rFTsfWzkz9TSvVKjB+uP891SpLy7tr9t3f/dSphuLf9DE8QCFPT6aT+kPUIhKlexW/4mVGApr4xTCUR9KJqK4BjJaHBmw2PNxseTzGP63jau473Pox45wOTbrTvfaAPtO99MP9HG779wYZv32xcb9/j/6L8XvnF97SaI3jBGYRyai++85vlL7vfeqJ98+GUY3iTGBDzCAlNkEp40r5e6SUE/HQsu9Bl10q1QKjTx48nTM3mEz1p1/uvhgI0I36w4fFmw+Mh21zHjzZc+94Hw1sBHI8noNfx3ofRf0fWMfwTfdgSg9q+w//ae366/ObLHysfef4bSsdWx/Hn3/Va+dz/fKz89gvvzRi6/WhjYNwPGlY2Bmw/RCSFtxF6D5J8kDvwQcqqfLT/Yvnyt14oz5evl2/p8urb336lvKK/ej03sSJAWYRIB96hCBIDOPkg1Bg5gfogL339qfKhZ/+pfEWzVtx7THRO/+qrs/KR1Z/X8g8+Bllj5WZ1ZvwZ4NDfQ88gyQe5PR/kXe98o3ztv58vn//1T2g264/0GGRSPvPxPygv/ulL5UPXaqToArXu711cCC4RH3qNFYKwKwaHJoXHhyZI8kFuzwd5+tlp+eJLv1w+/Def1S36M7rgmpW//vIf6hLrV1TemknjrLFy2xj4AX7o76EJcqgzp4r//Q/+XHlVnf/wj7UEe0U3n7/zo5861XDcq37HJgjTuVpqsY0sRM+zgE6bODwaWYiZQ5bOStgPa80i1uUrXdvV+npjH7TtVMZuBQuFuWptILH9aHh0nWx4PDom8idTh0c5+DC2j05+eDyqo8UA40ESmyAKQpJ9NLg01LKATotBFtBxmZp8EE0/Jh9kIwa2sjv5IEqU5IPsjwFcDiT5IMeLQQ1w0EfoJZZxEeyocZ0Lgc+nzmXI+iCzOgYYC2tVB15psCwfL8v5020oTvTPoeMI21ESmiDJB1E4b8kHYd1V1gcJjkFUdshO7FosvV/SanvACUk+yJMxyPogT3Jizp/R8x4dKPjR/EY5lFcUmB+xCRLpWNrKCNyHCMReYmmaNwvo3I4w9ebrKz0xby+w7ddaAa3/MoaHxSAysWITRJ7BxWAnI/bAKgvoNE7MpfgwWUDnexGDOvxCPkITpHIp9Gg1C+hsjwF8EMT4KBR/MS7JVEeSjOHhMQjJjMFIaIIkH+QOfBAxG2eqa4HU2hb9VKtxW20NdMkHuUMMCFyQhCZI1gfJ+iCMy+lcy9FFp641UrI+yFWqJh/k9nyQ1aUW+l22Ounzs/14or2LC5F8kPYehKtRedhvoc9BDnMl0RmB+xeB0EusJEzdnjDF/cdCSy6QNS+10AFw/qj+UXW3JQuN+GZQ84lXhCtU3URtrDq9daa1h858sPbRmQ+GR+eLAIFvun4Dj270gSXuar/q9OHx6MwHax+d+WDtozMfDI/O98Hu4Ygj+EgJTRBmd41HgJPGJTAeALrkgyQfJAvoXLbnIHABsoDOZgwo/ILU13JBLKqvRGrxWqt6ThbQOTwGNcBBH6FnkOSDJB+kJr/jxHC5hSQfREFIPsj+GCQfZF3rm5A0x+LEYDtKQs8gh67jNzyd48jj+SToZrPGJTAeATrjEhiPAF2vqVOPR9fpEObx6DwXATxiPhgeXVefcF/h0ZkP1j4688HaR+f7YO2jvyse7KlzavbFgO+jJKd5oyKZdh5kBELPIBy2p3Vdf7vwnIsfslQF+ZVWqfZ6awZy6sVfrP/EYqqnekmYOkIMCG6QhJ5BDiW6GN5IV55wNV/MNW3cyDZ1rlxz+cyFG9mGKWbwZsMTtnjZ8XW82fB4s+Hb9z5Y+74AjuFvSvZJwtRbizAVewZJPohybDeXYXE+HNqU7Gs9tEs+SHwMgk4e1Uxsgshk8kHWO2OQfJDkgyQfRLdg2zgxyQfR/eiROTH39gySfJDkg9TB6Tgt8FkQ3R6O9T2o7YEsFm0lwSqaE1Otx3yE3qTHuJRWMgL3JwKh9yBJmErCFEM7CVNbEjwJU/sJT5CdkDWkdM14JWEqPgY1wEEfoWeQ5IPs53Pw7AY5FheCJTKVS0EjAx+DR7RwKZDkg9Qw3PgjNEF40JZ8EN14at3XthopR+dCDLU5GAFjfQ4SJeuD3Dgp/IaxCaIdsas2Rt1p4kNscCFQ6ujmuRCoqK/h+SToVjr6wqcwfN1u4FMYvuqUqR6PDt63x6NrJZ6V1UP7VacjsPXhGLUtkg/S9iGxtv0YzYnBdpSEJkjyQbTTHReCncQlz/eSC2Ht0/b8rF3yWfvoeHrPZIrWJnMYQaXXDPVloXr1vIgWPMIlmcej6y/WG3h02PB4dOaD4dGZD9Z+1Q0+jHiUgw/Wft3uWgzR+T6AR6wP9Y+gj9AEST5I8kEYl34cLMkMRC9umZ0z+t9afBB5nJIRyAhsi0DoGcSTjWjwOlkI3amTfbKAThbQ0VRiu45NPoiula9xYpIP0o+coHoQPQYnBsNBEnqJ5bkYno9hXAzjU3guhvEpmCI2vOdjGJfDbHguRvJBGh/m1GK4bxwF5UY1E3qJxYOprG2RfBDPiTl/qh2De1VUX14u9VqjWTk2J+b+Jog8Sz5I8kE0STyOA6sRw6C1OjHH58TEpUjoGSRrW+yvbXFsLoTtA4YInJRJp3cCaKpVz9LbqOH9AOJjWH0SlFajxOqToNNs7AYeXbXh8Ogm3XQDj858sPbRjT4MeHTmg7WPznyw9tFt9EF4xPcBPEKdFfCREnoPEulY2soI3IcIhJ5BkjCVhKk6qB8QYSo0QZIPknwQEiT5IFvOfckHST4IQ4N7kEut22Jh1WpYJ6XXo+kmncWsWgt2ZE7MluF5J3XoGST5IMkHYRSOnJSBj1J1+rD6HsfmxNBelIQmCBMlu7gQOJ31Qdq8yEQvs6vH2KlKsA1vndRCcB1+tT5Ws07b+CQZwzb0d46jtknIZ2yCJB9kb32P5IO8tfgg/w8641007i8HuwAAAABJRU5ErkJggg==",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "205a279f-0745-40bf-9932-bafa73ec7270"
        }"MOD.Core.MapLayerComponent�
$6b556bd0-2f11-41da-8611-aa4f3de17e1e/maps/InGame/SpawnLocation�{
          "name": "SpawnLocation",
          "path": "/maps/InGame/SpawnLocation",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "mapobject",
            "sub_entity_id": null
          },
          "modelId": "mapobject",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "DrawMode": 0,
              "EndFrameIndex": 2147483647,
              "FlipX": false,
              "FlipY": false,
              "IgnoreMapLayerCheck": false,
              "OrderInLayer": 0,
              "PlayRate": 1.0,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "8ef238e0d0ca4bb783aca526cff35d11",
              "StartFrameIndex": 0,
              "TiledSize": {
                "x": 1.0,
                "y": 1.0
              },
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpawnLocationComponent",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "6b556bd0-2f11-41da-8611-aa4f3de17e1e"
        }"\MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.SpawnLocationComponent��
$f60f50a7-de88-4781-b175-f09e392aa3d8/maps/InGame/RectTileMap��{
          "name": "RectTileMap",
          "path": "/maps/InGame/RectTileMap",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "///",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "recttilemap",
            "sub_entity_id": null
          },
          "modelId": "recttilemap",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 1000.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.RectTileMapComponent",
              "SortingLayer": "MapLayer0",
              "TileSetRUID": "tileset://befc06a7-ba6a-4444-925e-d04307156b6a",
              "Enable": true,
              "tileMap": [
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 4
                  },
                  "tileIndex": 0
                }
              ]
            }
          ],
          "@version": 1,
          "id": "f60f50a7-de88-4781-b175-f09e392aa3d8"
        }"9MOD.Core.TransformComponent,MOD.Core.RectTileMapComponentPX�!
 f0db43b80eb948628eddff16acf9dedf abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://63fe07f0-2bcd-462c-8157-d6031e053b5e"x-mod/codeblock2� � {
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "63fe07f0-2bcd-462c-8157-d6031e053b5e",
    "Language": 1,
    "Name": "UIToast",
    "Type": 5,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-08-25T13:31:38.6779241+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": "7af9e538-1713-49f7-a83e-711c0f4b4a3c:52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "message"
      },
      {
        "Type": "Entity",
        "DefaultValue": "0bc398f9-29cb-4d89-a78d-f24742b117e8",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "toastGroup"
      },
      {
        "Type": "number",
        "DefaultValue": "2",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "duration"
      },
      {
        "Type": "number",
        "DefaultValue": "0.1",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tweenDuration"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tweenEventId"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isTweenPlaying"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "inited"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "offset"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": "\"\"",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "message"
          }
        ],
        "Code": "if self.inited == false then\n\tself.inited = true\n\tself.offset = -self.message.Entity.UITransformComponent.anchoredPosition.y\nend\nself.message.Text = message\nself:StartTween()",
        "Scope": 2,
        "ExecSpace": 6,
        "Attributes": [],
        "Name": "ShowMessage"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local canvasGroup = self.message.Entity.CanvasGroupComponent\nlocal transform = self.message.Entity.UITransformComponent\nif self.tweenEventId > 0 then\n\t_TimerService:ClearTimer(self.tweenEventId)\n\tself.tweenEventId = 0\nelse\n\tcanvasGroup.GroupAlpha = 0\nend\nself.toastGroup.Enable = true\nlocal time = 0\n\nlocal preTime = _UtilLogic.ElapsedSeconds\n\nlocal tween = function()\n\tlocal delta = _UtilLogic.ElapsedSeconds - preTime\n\ttime = time + delta\n\tpreTime = _UtilLogic.ElapsedSeconds\n\n\tlocal alpha = canvasGroup.GroupAlpha \n\tif time >= (self.duration + self.tweenDuration) then\t\t\n\t\tself.toastGroup.Enable = false\n\t\t_TimerService:ClearTimer(self.tweenEventId)\n\t\tself.tweenEventId = 0\n\t\talpha = 0\n\telse\n\t\tif time > self.duration then\t\t\t\n\t\t\talpha = alpha - delta / self.tweenDuration\n\t\telse\n\t\t\talpha = alpha + delta / self.tweenDuration\n\t\tend\t\t\t\n\tend\t\n\talpha = math.min(1,math.max(alpha,0))\n\t\n\tcanvasGroup.GroupAlpha = alpha\n\tlocal tweenValue = _TweenLogic:Ease(0,1,1,EaseType.SineEaseIn,alpha)\n\ttransform.anchoredPosition = Vector2(0,-self.offset * tweenValue)\nend\n\nself.tweenEventId = _TimerService:SetTimerRepeat(tween,1/60)\n\n",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "StartTween"
      }
    ],
    "EntityEventHandlers": []
  }X�
 3555c72498fd46aeb85cb7d98eaba25e abfbb4d6a57440cf8a60560ad8ab7c9c,directory://97623be180cb46978d313c00be418e4b"x-mod/directory2��{
    "entry_id": "directory://97623be180cb46978d313c00be418e4b",
    "name": "Scripts",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "directory://8109ae503e574a0dbdf6049283047736",
      "directory://a3e82b889ce743d5a8a638476e4df775",
      "directory://a679e5cc370f474db8b4f9424ada65a5",
      "directory://44ac4faf2e0f4cf0b6e4bb09fb9df4e6"
    ]
  }X�
 89b719d74e0d446d96be0f689b49bd7a abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://4e05f369-c76c-417d-b9fc-bd8d20bd4a34"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "4e05f369-c76c-417d-b9fc-bd8d20bd4a34",
    "Language": 1,
    "Name": "MatchStateEvent",
    "Type": 3,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-02-21T13:00:54.6430006+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "MatchState"
      }
    ],
    "Methods": [],
    "EntityEventHandlers": []
  }X�
 24471d503a8c4563802fa0b37271945b abfbb4d6a57440cf8a60560ad8ab7c9c,directory://44ac4faf2e0f4cf0b6e4bb09fb9df4e6"x-mod/directory2��{
    "entry_id": "directory://44ac4faf2e0f4cf0b6e4bb09fb9df4e6",
    "name": "Player",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://de6ebaed-9c12-4906-ae59-226927bc5b46",
      "codeblock://uimyinfo"
    ]
  }X�
 09b3a83247aa4d15bd1e8861410aa54a abfbb4d6a57440cf8a60560ad8ab7c9c.tileset://befc06a7-ba6a-4444-925e-d04307156b6a"x-mod/tileset2��{
    "name": "NewTileSet",
    "id": "tileset://befc06a7-ba6a-4444-925e-d04307156b6a",
    "datas": [
      {
        "Id": "1107c3befce343f7b33e68c8849286e4",
        "Name": "Name0",
        "IsCollidable": false
      }
    ]
  }X�
 4a597e450bb84519836d28fd061de6ea abfbb4d6a57440cf8a60560ad8ab7c9c,gamelogic://5c7506f1cd94470e9467bfdc27c511bc"x-mod/gamelogic2��
$15c6da50-194c-4d0b-8a75-88b7a1d12611/common�{
          "name": "common",
          "path": "/common",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/",
          "revision": 0,
          "modelId": null,
          "@components": [],
          "@version": 1,
          "id": "15c6da50-194c-4d0b-8a75-88b7a1d12611"
        }X�
 ce35be690c194746906db57de1ce28f1 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://a679e5cc370f474db8b4f9424ada65a5"x-mod/directory2��{
    "entry_id": "directory://a679e5cc370f474db8b4f9424ada65a5",
    "name": "Chat",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://663a3395-5ec2-4420-8d9b-e75c1a9819f8",
      "userdataset://60c6dcae-e767-490d-9048-ed8e0cc6ec23",
      "codeblock://ea15274c-a25b-422d-851e-39f932a26236"
    ]
  }X��
 1c655037fae747adab4fb28ff49a1c00 abfbb4d6a57440cf8a60560ad8ab7c9c)ui://bc0ebe92-ccf1-408b-b12c-f21b3844c6d0"x-mod/ui2���+
$bc0ebe92-ccf1-408b-b12c-f21b3844c6d0/ui/DefaultGroup�*{
          "name": "DefaultGroup",
          "path": "/ui/DefaultGroup",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "uigroup",
            "sub_entity_id": null
          },
          "modelId": "uigroup",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "OffsetMin": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 1914.73291,
                "y": 1080.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -3.81469727E-06,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.UIGroupComponent",
              "DefaultShow": true,
              "GroupOrder": 0,
              "GroupType": 1,
              "Thumbnail": "/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAMgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3O61WzspvJnlZZNnmYEbN8vPPAPoahbX9MURn7QT5iGRcROcqM5PA7bT+VUda1u10fUP3t3BDI8SHEquflBb+6Pf1rEuLjTLaCB5bwwiKLy/MMcqbSxYjnb3BP1GfrQB2trdQ3lulxbvvifO1sEZwcd/pU1c9o2uaTFaWtlHd75H+5tifDAvgEEr0yQM9M10NABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFADJZUgheWQ4RFLMcZwByaz4vEGmTNiO5J4Y8xOBhRk8kelXrmIz2k0IxmRGXn3GKx49CdHKgwxwlCpVRnkqy56A/xdz+JoAvW+s2F1NFFDMzPKCY8xOA2M5wSMdjRVa20u4jvraeZoCsEYjXYDnABA5P+97fpRQBfuNPsruQSXNnbzOBgNJErED0yRUX9i6V/wBAyz/78L/hV6igCmmk6bHIsken2iOpBVlhUEEdwcVcoooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAorF1fRb3UbtJrbWLiyRUCmOPOCck54YeuPwqg3hfVGAA8S3i4HUb+fzf/ADmgDqaK5ceF9UAIPiW7Py4yd/B9fv8AX9KYfCmrZB/4Sm+6Yxhuf/H6AOrorl28L6oTkeJbtR6Df/8AF03/AIRbVf8AoZ7z8m/+LoA6quY8K6zr2qX+rR6zpq2UUEgFsBDIpI3yAgs3yuQFQ5TjDD1wGf8ACLar/wBDPefk3/xdW9N0DULK/iuJ9dubqNM5hfdhsgjux9c9O1AG/RRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFMlmjgjMk0iRxr1Z2AA/E1Hb3lrd7vs1zDNt6+W4bH5UAT0UUUAFFFFABRSMwVSzEBQMkk8AVzsPjbSJ9RFosp+Z9iyEEKWzjqeMe+aAOjooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKa7rGjO7BUUZZmOAB6mgB1Fco/jYTXjQabps95tGcrkEjOM7QCcdOT61p6H4itdcjYRgxToMtExzx6g9xQByWoSt4l8T3dlNeNbRWySeSoQyFihGcKMFiRuOBzx7VzZmutF1bakyiWIhkliYMrKRlWB6EEEH6Hmr3i3S7vStelul3iOWUzQzKCMEnOAexB/lmqj3d1rzw2scM73byZwrrtc4JLFQowcljnIABY4yWZgD1vS70ajpltdjH71ASB0Ddx+eaKNLshp2l21mMHyowpI6Fu5/E5NFAFuiiigCOeLz7eWLO3ehXOM4yMV5za+AtTj1SIM8S2kcobzN2WwDkcV6VRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFYni6RovC94ysy8KCV64LAH/Ctuobq2ivLWW2nQPFIpVh7UAcdodq/hrVZ4YriO/hnADFCqMHQsCBl8ZDNGu04JMo/unPP6HPqC+NonuLcxXcs5eWIqRtDjLcHkYDZq/P4N13SrmT+yZUmhkI5yoYY5BIbgMOcMORzjGa3fDHhKTSbj7dfzrNdBBHGFJIjGMdT3wAPYetAHUSxRzxNFNGkkbDDI6gg/UGo7aytLMMLW1hgDfe8qMLn64qeigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAP/Z",
              "Enable": true
            },
            {
              "@type": "MOD.Core.CanvasGroupComponent",
              "BlocksRaycasts": true,
              "GroupAlpha": 1.0,
              "Interactable": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "bc0ebe92-ccf1-408b-b12c-f21b3844c6d0"
        }"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent�!
$7ca24c34-056b-42d6-97eb-99575cab22ab/ui/DefaultGroup/UIJoystick� {
          "name": "UIJoystick",
          "path": "/ui/DefaultGroup/UIJoystick",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UISprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 2,
              "AlignmentOption": 7,
              "AnchorsMax": {
                "x": 0.0,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 410.0,
                "y": 330.0001
              },
              "OffsetMin": {
                "x": 210.0,
                "y": 129.999908
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 200.0,
                "y": 200.0002
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 310.0,
                "y": 230.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -647.366455,
                "y": -310.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": false,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.JoystickComponent",
              "Axis": 0,
              "DynamicStick": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "7ca24c34-056b-42d6-97eb-99575cab22ab"
        }"\MOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.JoystickComponent�!
$b484ad23-1885-4cb1-bdb7-8396d1d6592f/ui/DefaultGroup/UIChat� {
          "name": "UIChat",
          "path": "/ui/DefaultGroup/UIChat",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIEmpty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 4,
              "AnchorsMax": {
                "x": 0.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 717.8341,
                "y": -32.4276428
              },
              "OffsetMin": {
                "x": 20.1109619,
                "y": -471.1826
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 697.723145,
                "y": 438.754944
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 368.972534,
                "y": -251.805115
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -588.3939,
                "y": 288.1949,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": false,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ChatComponent",
              "Expand": true,
              "UseChatBalloon": true,
              "UseChatEmotion": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "b484ad23-1885-4cb1-bdb7-8396d1d6592f"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ChatComponent�7
$9fe1cdbb-4fcd-4f44-9e19-9687e0fa92fa/ui/DefaultGroup/Button_Exit�5{
          "name": "Button_Exit",
          "path": "/ui/DefaultGroup/Button_Exit",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIEmpty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 3,
              "AnchorsMax": {
                "x": 0.5,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 188.0,
                "y": -47.5000076
              },
              "OffsetMin": {
                "x": -188.0,
                "y": -112.499992
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 376.0,
                "y": 64.9999847
              },
              "UIMode": 1,
              "UIScale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -80.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 460.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "34ae8156029e5634ebab54158a871a09"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.8808594,
                "g": 0.345806122,
                "b": 0.345806122,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 90.0,
              "DropShadowColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadowDistance": 20.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 4
              },
              "SizeFit": false,
              "Text": "나가기",
              "UseOutLine": false,
              "Enable": true
            },
            {
              "@type": "script.UIExitButton",
              "Enable": true,
              "isAllUserExit": false
            }
          ],
          "@version": 1,
          "id": "9fe1cdbb-4fcd-4f44-9e19-9687e0fa92fa"
        }"�MOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent,script.UIExitButton�'
$d1179492-48bb-40ea-9cc2-ee2b3e1166cc/ui/DefaultGroup/UIMatch�&{
          "name": "UIMatch",
          "path": "/ui/DefaultGroup/UIMatch",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 5,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 1.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -26.9053955,
                "y": -150.000092
              },
              "OffsetMin": {
                "x": -452.941528,
                "y": -444.419342
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 426.036133,
                "y": 294.41925
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -239.923462,
                "y": -297.209717
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 717.443,
                "y": 242.790283,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 1,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "53405dae6bb32dd45b3d2e541dc4d1fd"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "script.UIMatch",
              "Enable": true,
              "textMatchInfo": {
                "IsRelative": false,
                "ComponentId": "dba8152b-01cf-4f32-a952-091400d07cf2:TextComponent"
              },
              "textWaitInfo": {
                "IsRelative": false,
                "ComponentId": "568c68e0-1d07-4145-93e7-630e0f23b573:TextComponent"
              },
              "textMatchLog": {
                "IsRelative": false,
                "ComponentId": "538f763c-c074-45c7-b291-e4d6a81f4fcd:TextComponent"
              },
              "matchButton": {
                "IsRelative": false,
                "EntityId": "f1b30674-005d-4d57-981f-23449ccff62f"
              },
              "matchCancelButton": {
                "IsRelative": false,
                "EntityId": "dc31d419-f937-4858-b0fb-b0221dd70ce6"
              }
            }
          ],
          "@version": 1,
          "id": "d1179492-48bb-40ea-9cc2-ee2b3e1166cc"
        }"PMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UIMatch�
$16f9cd43-83b9-4af4-aa41-d77062ce97a9'/ui/DefaultGroup/UIMatch/matchBtnParent�{
          "name": "matchBtnParent",
          "path": "/ui/DefaultGroup/UIMatch/matchBtnParent",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uiempty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 11,
              "AnchorsMax": {
                "x": 1.0,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -25.0,
                "y": 78.5
              },
              "OffsetMin": {
                "x": 25.0,
                "y": 13.5
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 376.036133,
                "y": 65.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 46.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -101.209625,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "16f9cd43-83b9-4af4-aa41-d77062ce97a9"
        }"MOD.Core.UITransformComponent�6
$f1b30674-005d-4d57-981f-23449ccff62f0/ui/DefaultGroup/UIMatch/matchBtnParent/matchBtn�4{
          "name": "matchBtn",
          "path": "/ui/DefaultGroup/UIMatch/matchBtnParent/matchBtn",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIEmpty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 0.0,
                "y": 80.0
              },
              "OffsetMin": {
                "x": 0.0,
                "y": 80.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 376.036133,
                "y": 65.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 80.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 80.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "34ae8156029e5634ebab54158a871a09"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.226634979,
                "g": 0.5727845,
                "b": 0.9589844,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 90.0,
              "DropShadowColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadowDistance": 20.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 4
              },
              "SizeFit": false,
              "Text": "참가",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "f1b30674-005d-4d57-981f-23449ccff62f"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�6
$dc31d419-f937-4858-b0fb-b0221dd70ce66/ui/DefaultGroup/UIMatch/matchBtnParent/matchCancelBtn�4{
          "name": "matchCancelBtn",
          "path": "/ui/DefaultGroup/UIMatch/matchBtnParent/matchCancelBtn",
          "nameEditable": true,
          "enable": false,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIEmpty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 0.0,
                "y": 0.0
              },
              "OffsetMin": {
                "x": 0.0,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 376.036133,
                "y": 65.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "34ae8156029e5634ebab54158a871a09"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.290813446,
                "g": 0.3315279,
                "b": 0.376953125,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 90.0,
              "DropShadowColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadowDistance": 20.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 4
              },
              "SizeFit": false,
              "Text": "취소",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "dc31d419-f937-4858-b0fb-b0221dd70ce6"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�6
$35b48abc-9420-48e3-b3b8-cb7a01cf57ab1/ui/DefaultGroup/UIMatch/matchBtnParent/singleBtn�4{
          "name": "singleBtn",
          "path": "/ui/DefaultGroup/UIMatch/matchBtnParent/singleBtn",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIEmpty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -1.90734863E-06,
                "y": 0.0
              },
              "OffsetMin": {
                "x": -1.90734863E-06,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 376.036133,
                "y": 65.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -1.90734863E-06,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "34ae8156029e5634ebab54158a871a09"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.226634979,
                "g": 0.5727845,
                "b": 0.9589844,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 90.0,
              "DropShadowColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadowDistance": 20.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 4
              },
              "SizeFit": false,
              "Text": "싱글플레이",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "35b48abc-9420-48e3-b3b8-cb7a01cf57ab"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�*
$dba8152b-01cf-4f32-a952-091400d07cf2&/ui/DefaultGroup/UIMatch/textMatchInfo�({
          "name": "textMatchInfo",
          "path": "/ui/DefaultGroup/UIMatch/textMatchInfo",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 9,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 0.0,
                "y": -12.0
              },
              "OffsetMin": {
                "x": 0.0,
                "y": -72.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 426.036133,
                "y": 60.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -42.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 105.209625,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 1,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 33,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "빠른매칭 %s",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "dba8152b-01cf-4f32-a952-091400d07cf2"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�*
$568c68e0-1d07-4145-93e7-630e0f23b573%/ui/DefaultGroup/UIMatch/textWaitInfo�({
          "name": "textWaitInfo",
          "path": "/ui/DefaultGroup/UIMatch/textWaitInfo",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 9,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 0.0,
                "y": -60.0
              },
              "OffsetMin": {
                "x": 0.0,
                "y": -120.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 426.036133,
                "y": 60.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -90.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 57.2096252,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 1,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "OutlineWidth": 1.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "%d명 참여중",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "568c68e0-1d07-4145-93e7-630e0f23b573"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�*
$538f763c-c074-45c7-b291-e4d6a81f4fcd$/ui/DefaultGroup/UIMatch/textMachLog�){
          "name": "textMachLog",
          "path": "/ui/DefaultGroup/UIMatch/textMachLog",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "ActivePlatform": 255,
              "AlignmentOption": 9,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 0.0,
                "y": -295.656158
              },
              "OffsetMin": {
                "x": 0.0,
                "y": -355.656158
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 426.036133,
                "y": 60.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -325.656158
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -178.446533,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 1,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 25,
              "OutlineColor": {
                "r": 0.7949219,
                "g": 0.203388214,
                "b": 0.203388214,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 2.0,
                "y": -2.0
              },
              "OutlineWidth": 2.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "0초 후 게임이 시작됩니다.",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "538f763c-c074-45c7-b291-e4d6a81f4fcd"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�"
$8e6d5c3f-8fb4-4093-94c9-bc5d3c291f28/ui/DefaultGroup/UIMyInfo�!{
          "name": "UIMyInfo",
          "path": "/ui/DefaultGroup/UIMyInfo",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 6,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 167.0,
                "y": 213.0
              },
              "OffsetMin": {
                "x": -167.0,
                "y": 51.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 334.0,
                "y": 162.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 132.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -408.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "script.UIStatus",
              "Enable": true,
              "hpBar": {
                "IsRelative": false,
                "ComponentId": ":UITransformComponent"
              },
              "maxWidth": 0.0,
              "hpText": {
                "IsRelative": false,
                "ComponentId": ":TextComponent"
              }
            }
          ],
          "@version": 1,
          "id": "8e6d5c3f-8fb4-4093-94c9-bc5d3c291f28"
        }"QMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UIStatus� 
$b94e2fa1-70a2-4316-b542-ae556c1c922b"/ui/DefaultGroup/UIMyInfo/info_top�{
          "name": "info_top",
          "path": "/ui/DefaultGroup/UIMyInfo/info_top",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 3,
              "AnchorsMax": {
                "x": 0.5,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 164.5,
                "y": 2.0
              },
              "OffsetMin": {
                "x": -164.5,
                "y": -78.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 329.0,
                "y": 80.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -38.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 43.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "3e9d52ed52d64794bbd6f72bab8ee3d9"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "b94e2fa1-70a2-4316-b542-ae556c1c922b"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent�)
$645cdc71-bac9-4894-8e00-87d87e6762a2-/ui/DefaultGroup/UIMyInfo/info_top/text_level�({
          "name": "text_level",
          "path": "/ui/DefaultGroup/UIMyInfo/info_top/text_level",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 4,
              "AnchorsMax": {
                "x": 0.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 120.0,
                "y": 0.0
              },
              "OffsetMin": {
                "x": 0.0,
                "y": -38.0
              },
              "Pivot": {
                "x": 0.0,
                "y": 1.0
              },
              "RectSize": {
                "x": 120.0,
                "y": 38.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -164.5,
                "y": 40.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": false
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 3,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 30.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.3
              },
              "OutlineDistance": {
                "x": 3.0,
                "y": -3.0
              },
              "OutlineWidth": 3.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "Lv 100",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "645cdc71-bac9-4894-8e00-87d87e6762a2"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�*
$360231da-8523-43f4-a391-f1f09462c68e,/ui/DefaultGroup/UIMyInfo/info_top/text_name�({
          "name": "text_name",
          "path": "/ui/DefaultGroup/UIMyInfo/info_top/text_name",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 163.0,
                "y": 0.0
              },
              "OffsetMin": {
                "x": -163.0,
                "y": -42.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 326.0,
                "y": 42.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "25e5f99bdc562c241bf1b96a0d76f493"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.3
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.2
              },
              "OutlineDistance": {
                "x": 3.0,
                "y": -3.0
              },
              "OutlineWidth": 3.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "플레이어이름",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "360231da-8523-43f4-a391-f1f09462c68e"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�
$11e3f78a-29a7-4d58-8d11-79dce74dc95d%/ui/DefaultGroup/UIMyInfo/info_bottom�{
          "name": "info_bottom",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 6,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 167.0,
                "y": 82.0
              },
              "OffsetMin": {
                "x": -167.0,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 334.0,
                "y": 82.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 41.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -40.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "11e3f78a-29a7-4d58-8d11-79dce74dc95d"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent�
$2ed76c79-87a5-4dc6-a467-821aec0d20dd(/ui/DefaultGroup/UIMyInfo/info_bottom/Hp�{
          "name": "Hp",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Hp",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 3,
              "AnchorsMax": {
                "x": 0.5,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 167.0,
                "y": 0.0
              },
              "OffsetMin": {
                "x": -167.0,
                "y": -30.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 334.0,
                "y": 30.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 41.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": false
            }
          ],
          "@version": 1,
          "id": "2ed76c79-87a5-4dc6-a467-821aec0d20dd"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent� 
$70fe83bb-5321-456e-8377-6442b2a384a77/ui/DefaultGroup/UIMyInfo/info_bottom/Hp/img_background�{
          "name": "img_background",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Hp/img_background",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 0.0,
                "y": 0.0
              },
              "OffsetMin": {
                "x": 0.0,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 334.0,
                "y": 30.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -15.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "f7ebaa33f3f71eb428de9c2075d44c73"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "70fe83bb-5321-456e-8377-6442b2a384a7"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent� 
$88878895-33e2-4172-a833-90bc1e794c220/ui/DefaultGroup/UIMyInfo/info_bottom/Hp/img_bar�{
          "name": "img_bar",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Hp/img_bar",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "//////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 1,
              "AnchorsMax": {
                "x": 0.0,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 332.0,
                "y": 12.0
              },
              "OffsetMin": {
                "x": 2.0,
                "y": -10.0
              },
              "Pivot": {
                "x": 0.0,
                "y": 0.5
              },
              "RectSize": {
                "x": 330.0,
                "y": 22.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 2.0,
                "y": 1.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -165.0,
                "y": -14.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "f0911af597259044aa624a11332c0595"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 0.4,
                "b": 0.4,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "88878895-33e2-4172-a833-90bc1e794c22"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent�)
$7fe4b488-c4be-4766-8c6d-1ca70dd8ad6b3/ui/DefaultGroup/UIMyInfo/info_bottom/Hp/text_value�({
          "name": "text_value",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Hp/text_value",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "//////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 117.5,
                "y": 27.0
              },
              "OffsetMin": {
                "x": -117.5,
                "y": -23.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 235.0,
                "y": 50.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 2.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -13.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": false
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 25,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.3
              },
              "OutlineDistance": {
                "x": 3.0,
                "y": -3.0
              },
              "OutlineWidth": 3.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "100 / 100",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "7fe4b488-c4be-4766-8c6d-1ca70dd8ad6b"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�
$5bf44e43-b478-4a82-9603-265da6005181)/ui/DefaultGroup/UIMyInfo/info_bottom/Exp�{
          "name": "Exp",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Exp",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "/////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 6,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 167.0,
                "y": 40.0
              },
              "OffsetMin": {
                "x": -167.0,
                "y": 10.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.0
              },
              "RectSize": {
                "x": 334.0,
                "y": 30.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 10.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -31.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": false
            }
          ],
          "@version": 1,
          "id": "5bf44e43-b478-4a82-9603-265da6005181"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent� 
$8d669444-4a9f-4572-aa0e-b5edf2800e7c8/ui/DefaultGroup/UIMyInfo/info_bottom/Exp/img_background�{
          "name": "img_background",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Exp/img_background",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 0.0,
                "y": 0.0
              },
              "OffsetMin": {
                "x": 0.0,
                "y": 0.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 334.0,
                "y": 30.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 15.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "f7ebaa33f3f71eb428de9c2075d44c73"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "8d669444-4a9f-4572-aa0e-b5edf2800e7c"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent� 
$247f7ccc-6903-4a77-903f-e2cb6284866b1/ui/DefaultGroup/UIMyInfo/info_bottom/Exp/img_bar�{
          "name": "img_bar",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Exp/img_bar",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "//////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 1,
              "AnchorsMax": {
                "x": 0.0,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 332.0,
                "y": 12.0
              },
              "OffsetMin": {
                "x": 2.0,
                "y": -10.0
              },
              "Pivot": {
                "x": 0.0,
                "y": 0.5
              },
              "RectSize": {
                "x": 330.0,
                "y": 22.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 2.0,
                "y": 1.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -165.0,
                "y": 16.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "f0911af597259044aa624a11332c0595"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.65882355,
                "g": 0.9137255,
                "b": 0.360784322,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "247f7ccc-6903-4a77-903f-e2cb6284866b"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent�)
$38574dc5-f0fd-45a0-869b-98fd16c58e0f4/ui/DefaultGroup/UIMyInfo/info_bottom/Exp/text_value�({
          "name": "text_value",
          "path": "/ui/DefaultGroup/UIMyInfo/info_bottom/Exp/text_value",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "//////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 100.0,
                "y": 27.0
              },
              "OffsetMin": {
                "x": -100.0,
                "y": -23.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 200.0,
                "y": 50.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": 2.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 17.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 0.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": false
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 25,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.3
              },
              "OutlineDistance": {
                "x": 3.0,
                "y": -3.0
              },
              "OutlineWidth": 3.0,
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "0%",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "38574dc5-f0fd-45a0-869b-98fd16c58e0f"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent� 
$b7519348-1e85-429a-8a02-e99704be8843/ui/DefaultGroup/DialogTutorial�{
          "name": "DialogTutorial",
          "path": "/ui/DefaultGroup/DialogTutorial",
          "nameEditable": true,
          "enable": true,
          "visible": false,
          "displayOrder": 5,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uisprite",
            "sub_entity_id": null
          },
          "modelId": "uisprite",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 0,
              "AnchorsMax": {
                "x": 0.5,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 681.0,
                "y": 355.5
              },
              "OffsetMin": {
                "x": -741.0,
                "y": -295.5
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 1422.0,
                "y": 651.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -30.0,
                "y": 30.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -30.0,
                "y": 30.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 0.99999994,
                "y": 0.99999994,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "21691103c9b6f174d8f0a84a5904153f"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.980392158,
                "g": 0.972549,
                "b": 0.9647059,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "b7519348-1e85-429a-8a02-e99704be8843"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent�5
$f7327665-1bad-409f-ad8f-a9ea38f02008%/ui/DefaultGroup/DialogTutorial/title�4{
          "name": "title",
          "path": "/ui/DefaultGroup/DialogTutorial/title",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 3,
              "AnchorsMax": {
                "x": 0.5,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.5,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 702.0,
                "y": -6.0
              },
              "OffsetMin": {
                "x": -702.0,
                "y": -113.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 1404.0,
                "y": 107.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -6.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 319.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "e5a52f08de84b204eb9cc2df8e1e539a"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.109803922,
                "g": 0.109803922,
                "b": 0.109803922,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": true,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 0.933333337,
                "g": 0.7058824,
                "b": 0.282352954,
                "a": 1.0
              },
              "FontSize": 40,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "튜토리얼",
              "UseOutLine": false,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "f7327665-1bad-409f-ad8f-a9ea38f02008"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent,MOD.Core.ButtonComponent�+
$630f0cdc-bcec-43bd-940a-e8a5649dfe6c)/ui/DefaultGroup/DialogTutorial/btn_close�*{
          "name": "btn_close",
          "path": "/ui/DefaultGroup/DialogTutorial/btn_close",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uibutton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 5,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 1.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -46.0,
                "y": -43.0
              },
              "OffsetMin": {
                "x": -84.0,
                "y": -81.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 38.0,
                "y": 38.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -65.0,
                "y": -62.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 646.0,
                "y": 263.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "a1530cf1cd486f343b91ccb90573afdf"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "630f0cdc-bcec-43bd-940a-e8a5649dfe6c"
        }"ZMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent� 
$fb770555-bef0-45ec-88f0-afbab26a67bb'/ui/DefaultGroup/DialogTutorial/img_npc�{
          "name": "img_npc",
          "path": "/ui/DefaultGroup/DialogTutorial/img_npc",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "UIEmpty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 1,
              "AnchorsMax": {
                "x": 0.0,
                "y": 0.5
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.5
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": 350.0,
                "y": 5.0
              },
              "OffsetMin": {
                "x": 70.0000153,
                "y": -275.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.0
              },
              "RectSize": {
                "x": 279.999969,
                "y": 280.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 210.0,
                "y": -275.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -501.0,
                "y": -275.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 1,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "ebde8add38854cf6953883471da15833"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 1,
              "StartFrameIndex": 0,
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": true,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "fb770555-bef0-45ec-88f0-afbab26a67bb"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent�*
$701697be-942a-4ff2-a65d-35c7dc8f43aa(/ui/DefaultGroup/DialogTutorial/txt_name�({
          "name": "txt_name",
          "path": "/ui/DefaultGroup/DialogTutorial/txt_name",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 9,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 1.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -40.0,
                "y": -143.0
              },
              "OffsetMin": {
                "x": 380.0,
                "y": -229.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 1002.0,
                "y": 86.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 170.0,
                "y": -143.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 170.0,
                "y": 182.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "6d3addcb065d39d4eb4888065d5e5f56"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.9137255,
                "g": 0.9019608,
                "b": 0.882352948,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 3,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 0.105882354,
                "g": 0.121568628,
                "b": 0.145098045,
                "a": 1.0
              },
              "FontSize": 32,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 30,
                "right": 30,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "운영자",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "701697be-942a-4ff2-a65d-35c7dc8f43aa"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�*
$598f2a6f-e741-4232-a2e4-d80270ecfefd*/ui/DefaultGroup/DialogTutorial/txt_script�({
          "name": "txt_script",
          "path": "/ui/DefaultGroup/DialogTutorial/txt_script",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uitext",
            "sub_entity_id": null
          },
          "modelId": "uitext",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 15,
              "AnchorsMax": {
                "x": 1.0,
                "y": 1.0
              },
              "AnchorsMin": {
                "x": 0.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -40.0,
                "y": -143.0
              },
              "OffsetMin": {
                "x": 380.0,
                "y": 40.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 1002.0,
                "y": 468.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 170.0,
                "y": -51.5
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 170.0,
                "y": -51.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "acb5eb4ec0934c74787db180aa971c05"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.858823538,
                "g": 0.8509804,
                "b": 0.8392157,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 0,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 0.105882354,
                "g": 0.121568628,
                "b": 0.145098045,
                "a": 1.0
              },
              "FontSize": 32,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 30,
                "right": 30,
                "top": 110,
                "bottom": 30
              },
              "SizeFit": false,
              "Text": "대화내용",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "598f2a6f-e741-4232-a2e4-d80270ecfefd"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent�5
$ef70de35-8783-41cd-b2f4-2f7535f67b77'/ui/DefaultGroup/DialogTutorial/btn_end�3{
          "name": "btn_end",
          "path": "/ui/DefaultGroup/DialogTutorial/btn_end",
          "nameEditable": true,
          "enable": false,
          "visible": false,
          "displayOrder": 5,
          "pathConstraints": "////",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "uibutton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 8,
              "AnchorsMax": {
                "x": 1.0,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 1.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -67.0,
                "y": 148.0
              },
              "OffsetMin": {
                "x": -356.0,
                "y": 63.0
              },
              "Pivot": {
                "x": 1.0,
                "y": 0.0
              },
              "RectSize": {
                "x": 289.0,
                "y": 85.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -67.0,
                "y": 63.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 644.0,
                "y": -262.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "c5a695e7da5980a4e9135961aba365cd"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.3019608,
                "g": 0.3019608,
                "b": 0.3019608,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "대화 끝",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "ef70de35-8783-41cd-b2f4-2f7535f67b77"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�5
$6cef1df8-706f-4fcd-8f41-9a4c3d09e3e1*/ui/DefaultGroup/DialogTutorial/btn_accept�3{
          "name": "btn_accept",
          "path": "/ui/DefaultGroup/DialogTutorial/btn_accept",
          "nameEditable": true,
          "enable": false,
          "visible": false,
          "displayOrder": 6,
          "pathConstraints": "////",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "uibutton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 8,
              "AnchorsMax": {
                "x": 1.0,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 1.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -67.0,
                "y": 148.0
              },
              "OffsetMin": {
                "x": -356.0,
                "y": 63.0
              },
              "Pivot": {
                "x": 1.0,
                "y": 0.0
              },
              "RectSize": {
                "x": 289.0,
                "y": 85.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -67.0,
                "y": 63.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 644.0,
                "y": -262.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "c5a695e7da5980a4e9135961aba365cd"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.3019608,
                "g": 0.3019608,
                "b": 0.3019608,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "수락하기",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "6cef1df8-706f-4fcd-8f41-9a4c3d09e3e1"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�5
$734ba9fd-047b-499c-88ef-f553174f70a8,/ui/DefaultGroup/DialogTutorial/btn_complete�3{
          "name": "btn_complete",
          "path": "/ui/DefaultGroup/DialogTutorial/btn_complete",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 7,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uibutton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 8,
              "AnchorsMax": {
                "x": 1.0,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 1.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -67.0,
                "y": 148.0
              },
              "OffsetMin": {
                "x": -356.0,
                "y": 63.0
              },
              "Pivot": {
                "x": 1.0,
                "y": 0.0
              },
              "RectSize": {
                "x": 289.0,
                "y": 85.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -67.0,
                "y": 63.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 644.0,
                "y": -262.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "c5a695e7da5980a4e9135961aba365cd"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.4,
                "g": 0.8,
                "b": 0.0,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "완료하기",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "734ba9fd-047b-499c-88ef-f553174f70a8"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�5
$2cf78091-5b38-45db-8956-a3be48d35919(/ui/DefaultGroup/DialogTutorial/btn_next�3{
          "name": "btn_next",
          "path": "/ui/DefaultGroup/DialogTutorial/btn_next",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 8,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uibutton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 8,
              "AnchorsMax": {
                "x": 1.0,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 1.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -67.0,
                "y": 148.0
              },
              "OffsetMin": {
                "x": -356.0,
                "y": 63.0
              },
              "Pivot": {
                "x": 1.0,
                "y": 0.0
              },
              "RectSize": {
                "x": 289.0,
                "y": 85.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -67.0,
                "y": 63.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 644.0,
                "y": -262.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "c5a695e7da5980a4e9135961aba365cd"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.933333337,
                "g": 0.7058824,
                "b": 0.282352954,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "다음으로",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "2cf78091-5b38-45db-8956-a3be48d35919"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent�5
$a8d6320f-88c6-4457-8514-1f2432993dc5(/ui/DefaultGroup/DialogTutorial/btn_prev�3{
          "name": "btn_prev",
          "path": "/ui/DefaultGroup/DialogTutorial/btn_prev",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 9,
          "pathConstraints": "////",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "uibutton",
            "sub_entity_id": null
          },
          "modelId": "uibutton",
          "@components": [
            {
              "@type": "MOD.Core.UITransformComponent",
              "AlignmentOption": 8,
              "AnchorsMax": {
                "x": 1.0,
                "y": 0.0
              },
              "AnchorsMin": {
                "x": 1.0,
                "y": 0.0
              },
              "MobileOnly": false,
              "OffsetMax": {
                "x": -375.0,
                "y": 148.0
              },
              "OffsetMin": {
                "x": -664.0,
                "y": 63.0
              },
              "Pivot": {
                "x": 1.0,
                "y": 0.0
              },
              "RectSize": {
                "x": 289.0,
                "y": 85.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -375.0,
                "y": 63.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 336.0,
                "y": -262.5,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteGUIRendererComponent",
              "AnimClipPlayType": 0,
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": "c5a695e7da5980a4e9135961aba365cd"
              },
              "LocalPosition": {
                "x": 0.0,
                "y": 0.0
              },
              "LocalScale": {
                "x": 1.0,
                "y": 1.0
              },
              "PlayRate": 1.0,
              "PreserveSprite": 0,
              "StartFrameIndex": 0,
              "Color": {
                "r": 0.933333337,
                "g": 0.7058824,
                "b": 0.282352954,
                "a": 1.0
              },
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "FillAmount": 1.0,
              "FillCenter": true,
              "FillClockWise": true,
              "FillMethod": 0,
              "FillOrigin": 0,
              "FlipX": false,
              "FlipY": false,
              "FrameColumn": 1,
              "FrameRate": 0,
              "FrameRow": 1,
              "Outline": false,
              "OutlineColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "OutlineWidth": 3.0,
              "RaycastTarget": true,
              "Type": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.ButtonComponent",
              "Colors": {
                "NormalColor": {
                  "r": 1.0,
                  "g": 1.0,
                  "b": 1.0,
                  "a": 1.0
                },
                "HighlightedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "PressedColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 1.0
                },
                "SelectedColor": {
                  "r": 0.9607843,
                  "g": 0.9607843,
                  "b": 0.9607843,
                  "a": 1.0
                },
                "DisabledColor": {
                  "r": 0.784313738,
                  "g": 0.784313738,
                  "b": 0.784313738,
                  "a": 0.5019608
                },
                "ColorMultiplier": 1.0,
                "FadeDuration": 0.1
              },
              "ImageRUIDs": {
                "HighlightedSprite": null,
                "PressedSprite": null,
                "SelectedSprite": null,
                "DisabledSprite": null
              },
              "KeyCode": 0,
              "Transition": 1,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TextComponent",
              "Alignment": 4,
              "Bold": false,
              "DropShadow": false,
              "DropShadowAngle": 30.0,
              "DropShadowColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 0.72
              },
              "DropShadowDistance": 32.0,
              "Font": 0,
              "FontColor": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FontSize": 30,
              "OutlineColor": {
                "r": 0.7,
                "g": 0.7,
                "b": 0.7,
                "a": 1.0
              },
              "OutlineDistance": {
                "x": 1.0,
                "y": -1.0
              },
              "Overflow": 0,
              "Padding": {
                "left": 0,
                "right": 0,
                "top": 0,
                "bottom": 0
              },
              "SizeFit": false,
              "Text": "이전으로",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "a8d6320f-88c6-4457-8514-1f2432993dc5"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponentX�
 27cb8515064140109b67f6755f04e43d abfbb4d6a57440cf8a60560ad8ab7c9c,directory://6c3452b46fea4691a7c068b1ac7166d1"x-mod/directory2��{
    "entry_id": "directory://6c3452b46fea4691a7c068b1ac7166d1",
    "name": "MyDesk",
    "lock": false,
    "folding": false,
    "nameEditable": false,
    "child_list": [
      "component://uimatch",
      "collisiongroupset://unique",
      "component://removekeyset",
      "component://uistatus",
      "component://extendplayercomponent",
      "component://playerskill",
      "directory://97623be180cb46978d313c00be418e4b",
      "sprite://1107c3befce343f7b33e68c8849286e4",
      "tileset://befc06a7-ba6a-4444-925e-d04307156b6a",
      "gamelogic://5c7506f1cd94470e9467bfdc27c511bc",
      "component://chat",
      "component://chattuto"
    ]
  }X�	
 966ea9338c66422dba7b7cda079c2cf7 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://1223e51b-ce37-473d-af8a-40121f69ffa0"x-mod/codeblock2��{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "1223e51b-ce37-473d-af8a-40121f69ffa0",
    "Language": 1,
    "Name": "MatchReadyEvent",
    "Type": 3,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-02-21T13:00:42.6670303+09:00",
    "Properties": [
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "PlayerId"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "IsReady"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "PlayerCount"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "MatchState"
      }
    ],
    "Methods": [],
    "EntityEventHandlers": []
  }X�d
 b7b5d9922b8048e78053773929476729 abfbb4d6a57440cf8a60560ad8ab7c9cmodel://defaultplayer"x-mod/model2�d�d{
    "Version": 1,
    "Name": "DefaultPlayer",
    "BaseModelId": "player",
    "Id": "defaultplayer",
    "Components": [
      "script.PlayerMatch",
      "script.RemoveKeyset",
      "script.ExtendPlayerComponent"
    ],
    "Properties": [],
    "Values": [
      {
        "TargetType": null,
        "Name": "speed",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.2
      },
      {
        "TargetType": null,
        "Name": "jumpForce",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.0
      },
      {
        "TargetType": null,
        "Name": "walkAcceleration",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.0
      },
      {
        "TargetType": null,
        "Name": "gravity",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.0
      },
      {
        "TargetType": null,
        "Name": "cameraDeadZone",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.052,
          "y": 0.08
        }
      },
      {
        "TargetType": null,
        "Name": "cameraSoftZone",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.268,
          "y": 0.7
        }
      },
      {
        "TargetType": null,
        "Name": "cameraDamping",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 2.5,
          "y": 3.9
        }
      },
      {
        "TargetType": null,
        "Name": "cameraScreen",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.5,
          "y": 0.655
        }
      },
      {
        "TargetType": null,
        "Name": "cameraDutch",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 0.0
      },
      {
        "TargetType": null,
        "Name": "cameraOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.0,
          "y": 0.0
        }
      },
      {
        "TargetType": null,
        "Name": "nameTag",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": ""
      },
      {
        "TargetType": null,
        "Name": "damageSkinId",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODDataRef, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODDataRef, MOD.Core",
          "DataId": "6ba67548f43f48f29eb23dafd0766383"
        }
      },
      {
        "TargetType": null,
        "Name": "damageDelayPerAttack",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 0.05
      },
      {
        "TargetType": null,
        "Name": "triggerBodyBoxSize",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.66,
          "y": 0.7
        }
      },
      {
        "TargetType": null,
        "Name": "triggerBodyBoxOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.0,
          "y": 0.35
        }
      },
      {
        "TargetType": null,
        "Name": "triggerBodyColliderOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.0,
          "y": 0.35
        }
      },
      {
        "TargetType": null,
        "Name": "maxHp",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1000
      },
      {
        "TargetType": null,
        "Name": "actionSheet",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODSyncDictionary`2[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODSyncDictionary`2[[System.String, mscorlib],[System.String, mscorlib]], MOD.Core",
          "IDLE": "stand",
          "MOVE": "walk",
          "ATTACK": "attack",
          "HIT": "hit",
          "CROUCH": "crouch",
          "FALL": "fall",
          "JUMP": "fall",
          "CLIMB": "rope",
          "LADDER": "ladder",
          "DEAD": "dead",
          "SIT": "sit"
        }
      },
      {
        "TargetType": "MOD.Core.KinematicbodyComponent",
        "Name": "SpeedFactor",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 2.4,
          "y": 2.4
        }
      },
      {
        "TargetType": "MOD.Core.CostumeManagerComponent",
        "Name": "CustomEarEquip",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": ""
      },
      {
        "TargetType": "MOD.Core.CostumeManagerComponent",
        "Name": "CustomBodyEquip",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": ""
      },
      {
        "TargetType": "MOD.Core.CostumeManagerComponent",
        "Name": "CustomTwoHandedWeaponEquip",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": ""
      },
      {
        "TargetType": "MOD.Core.CostumeManagerComponent",
        "Name": "CustomSubWeaponEquip",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": ""
      },
      {
        "TargetType": "MOD.Core.CostumeManagerComponent",
        "Name": "CustomOneHandedWeaponEquip",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": ""
      },
      {
        "TargetType": "MOD.Core.HitComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "MOD.Core.CostumeManagerComponent",
        "Name": "UseCustomEquipOnly",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      },
      {
        "TargetType": "MOD.Core.HitEffectSpawnerComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "MOD.Core.PlayerComponent",
        "Name": "PVPMode",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      },
      {
        "TargetType": "MOD.Core.PlayerComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      },
      {
        "TargetType": "MOD.Core.InventoryComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": null,
        "Name": "chatModeEnabled",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "MOD.Core.KinematicbodyComponent",
        "Name": "EnableJump",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      },
      {
        "TargetType": "script.RemoveKeyset",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "script.ExtendPlayerComponent",
        "Name": "PVPMode",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      },
      {
        "TargetType": "script.ExtendPlayerComponent",
        "Name": "RespawnDuration",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 5.0
      },
      {
        "TargetType": "script.ExtendPlayerComponent",
        "Name": "MaxHp",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 100
      }
    ],
    "EventLinks": [],
    "Children": []
  }X�
 bdbcf2814ce84e7a8fcaaefbccdb3845 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://8109ae503e574a0dbdf6049283047736"x-mod/directory2��{
    "entry_id": "directory://8109ae503e574a0dbdf6049283047736",
    "name": "MatchSystem",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "directory://84ac42a1506c4f22966dc46df99a6ccc",
      "directory://3cc2ac00f2ee4c0a8513065252069d41",
      "codeblock://fd2ce09f-69d3-4c5d-8b15-a6b153f9bd26",
      "codeblock://caa729ed-65d4-4a47-afaf-4d532414154c",
      "codeblock://92e2c2b9-e1e2-4b60-80ad-c9aa52ca28f2"
    ]
  }X��
 c7539f88870d41f19263fed3f5f36ea0 abfbb4d6a57440cf8a60560ad8ab7c9cmap://lobby"	x-mod/map2����
$f12d5e61-5b5d-4218-84f7-c223231a8f9a/maps/Lobby��{
          "name": "Lobby",
          "path": "/maps/Lobby",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 2,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.MapComponent",
              "AirAccelerationXFactor": 1.0,
              "AirDecelerationXFactor": 1.0,
              "FallSpeedMaxXFactor": 1.0,
              "FallSpeedMaxYFactor": 1.0,
              "Gravity": 1.0,
              "IsInstanceMap": false,
              "TileMapMode": 0,
              "WalkAccelerationFactor": 1.0,
              "WalkDrag": 1.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.FootholdComponent",
              "FootholdsByLayer": {
                "1": [
                  {
                    "Length": 1.28000021,
                    "NextFootholdId": 2,
                    "PreviousFootholdId": 16,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 1,
                    "StartPoint": {
                      "x": -6.23,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": -4.95,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 3,
                    "PreviousFootholdId": 1,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 2,
                    "StartPoint": {
                      "x": -4.95,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": -4.05,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.900000334,
                    "NextFootholdId": 4,
                    "PreviousFootholdId": 2,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 3,
                    "StartPoint": {
                      "x": -4.05,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": -3.14999986,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 5,
                    "PreviousFootholdId": 3,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 4,
                    "StartPoint": {
                      "x": -3.14999986,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": -2.24999976,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999738,
                    "NextFootholdId": 6,
                    "PreviousFootholdId": 4,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 5,
                    "StartPoint": {
                      "x": -2.24999976,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": -1.35,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 7,
                    "PreviousFootholdId": 5,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 6,
                    "StartPoint": {
                      "x": -1.35,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": -0.449999958,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 8,
                    "PreviousFootholdId": 6,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 7,
                    "StartPoint": {
                      "x": -0.45,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 0.449999958,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 9,
                    "PreviousFootholdId": 7,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 8,
                    "StartPoint": {
                      "x": 0.450000018,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 1.35,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000002,
                    "NextFootholdId": 10,
                    "PreviousFootholdId": 8,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 9,
                    "StartPoint": {
                      "x": 1.34999979,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 2.25,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 11,
                    "PreviousFootholdId": 9,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 10,
                    "StartPoint": {
                      "x": 2.25,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 3.15,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999857,
                    "NextFootholdId": 12,
                    "PreviousFootholdId": 10,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 11,
                    "StartPoint": {
                      "x": 3.14999986,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 4.04999971,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 13,
                    "PreviousFootholdId": 11,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 12,
                    "StartPoint": {
                      "x": 4.05,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 4.95,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 14,
                    "PreviousFootholdId": 12,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 13,
                    "StartPoint": {
                      "x": 4.95000029,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 5.85,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.28000021,
                    "NextFootholdId": 17,
                    "PreviousFootholdId": 13,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 14,
                    "StartPoint": {
                      "x": 5.85,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 7.13,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.759999752,
                    "NextFootholdId": 19,
                    "PreviousFootholdId": 18,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 15,
                    "StartPoint": {
                      "x": -3.52999973,
                      "y": -0.04000002
                    },
                    "EndPoint": {
                      "x": -2.77,
                      "y": -0.04000002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.26,
                    "NextFootholdId": 1,
                    "PreviousFootholdId": 0,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 16,
                    "StartPoint": {
                      "x": -6.23,
                      "y": -3.30000019
                    },
                    "EndPoint": {
                      "x": -6.23,
                      "y": -3.0400002
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.26,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 14,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 17,
                    "StartPoint": {
                      "x": 7.13,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 7.13,
                      "y": -3.30000019
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.26,
                    "NextFootholdId": 15,
                    "PreviousFootholdId": 0,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 18,
                    "StartPoint": {
                      "x": -3.52999973,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": -3.52999973,
                      "y": -0.04000002
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.26,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 15,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "59520641-c139-4edd-8d6c-e04ae2346dd1",
                    "Id": 19,
                    "StartPoint": {
                      "x": -2.77,
                      "y": -0.04000002
                    },
                    "EndPoint": {
                      "x": -2.77,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  }
                ]
              },
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "f12d5e61-5b5d-4218-84f7-c223231a8f9a"
        }"0MOD.Core.MapComponent,MOD.Core.FootholdComponent�
$6db5fe0c-c264-4156-9701-4caa1930daa6/maps/Lobby/Background�{
          "name": "Background",
          "path": "/maps/Lobby/Background",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 0,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.BackgroundComponent",
              "SolidColor": {
                "r": 0.5019608,
                "g": 0.5019608,
                "b": 0.5019608,
                "a": 0.7058824
              },
              "TemplateRUID": "91fde791d0bc40eea1796087fcafcf91",
              "Type": 1,
              "WebUrl": "",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "6db5fe0c-c264-4156-9701-4caa1930daa6"
        }"MOD.Core.BackgroundComponent�
$523a420a-144a-4dcd-aaba-2f73681a83be/maps/Lobby/MapleMapLayer�{
          "name": "MapleMapLayer",
          "path": "/maps/Lobby/MapleMapLayer",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "maplemaplayer",
            "sub_entity_id": null
          },
          "modelId": "maplemaplayer",
          "@components": [
            {
              "@type": "MOD.Core.MapLayerComponent",
              "IsVisible": true,
              "LayerSortOrder": 0,
              "Locked": false,
              "MapLayerName": "Layer1",
              "Thumbnail": "iVBORw0KGgoAAAANSUhEUgAAAMgAAABkCAYAAADDhn8LAAAESElEQVR4Ae3dS0hUURjA8TM21jiZ3R6mZvaiiBZBYS2k6L0IAiWioCyIDKIHbZJCrDa5MChQsI3VKmpRTYGluCkMS4noKabhYySmRpzKVzSp6Jfn1m1ZJOS5Mf8Lw7mPGb5vfmc+vrl3c5RiQwABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEE/iDg+cN1Lo+DwOlHvfKp5mp9+OXDZzpc2vJ1malbDmadWRnP/IyD/+9CxP3uItf+vUBSSsauxpIDZTqSLozJs+al631/TemDs7VdQ3qfzZwABWLO3o5cWNVyPXDzxlEnjaTZ81P1fvvAZP/X4KuQc57RjIDXTFiiOgI9jbUdR6pbO53jvg8dnbpI+t63hWV4aNg5z2hGgA5ixv1X1OaK8ntKhkWf+FUco0Wij/s733Xpkc2cAAVizt6OvOrQ+f29TfWvLxYeybI7x88OEvel69OyvKJthtOL+fA8JXHBT+Dcs28SvVtc1eWdOU2nkzwU+ezPLth6MtPH/BieHzqI4QkYDT+x4cqpO82hSJ+TSmJios/ZZzQrQIGY9VdTktNz5iR5Pd6JCZOcVIIDCf6OyvLHzjGjOQEKxJy9Hbk/8j7QlzgnZeeWtUvsE54JHv0XK2N1zgrDqRF+VIDHvOZ/BiNPXjWF4iMt71Ty4rn6iVYkPnn6PCvFbz41MkAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEDApcLymR9q7u6V7SOzVmEzmQmwEXCVwrapOQh8HpfCSyNK9It3RKEXiqhkiGaMC+UVl8jwYtruH7iAnDheI7ihGkyI4Am4R8CmfLgaRF5cl+qBM6m6328duyY88EDAqYHktqSg9JtJwTUb/YIm0BCRtRhpdxOisENw1AjmbdsjlijKxUi27QCzLJ9GnlXQR18wQiRgVkKosCRTn2cXxZk2qSOSpbFy5UaZlLMozmhjBEXCDgL4h1y99g66fYHGD7oZZiY0c/otFPM9PvaW2p39W+/bkKssXjI2Z4Vsi8DcCumvoe48TuRtkd/Zmusjf4PHeMQt4xvxJAx+U8H3R6/Jm7ytRgyODqrXXc6GtrjrfQCqEjBGB/2YZaN1B8t8qdWG9pRYsXKDUiFJxs38sLR4jc8XXRAABBNwl8B0S2iUMMyAqdwAAAABJRU5ErkJggg==",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "523a420a-144a-4dcd-aaba-2f73681a83be"
        }"MOD.Core.MapLayerComponent�C
$59520641-c139-4edd-8d6c-e04ae2346dd1/maps/Lobby/TileMap�B{
          "name": "TileMap",
          "path": "/maps/Lobby/TileMap",
          "nameEditable": false,
          "enable": true,
          "visible": false,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "tilemap",
            "sub_entity_id": null
          },
          "modelId": "tilemap",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -0.225,
                "y": -0.15,
                "z": 1000.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TileMapComponent",
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "FootholdDrag": 2.5,
              "FootholdForce": 0.0,
              "FootholdWalkSpeedFactor": 1.0,
              "IgnoreMapLayerCheck": false,
              "IsOddGridPosition": false,
              "OrderInLayer": 1,
              "SortingLayer": "MapLayer0",
              "TileMapVersion": 1,
              "TileSetRUID": {
                "DataId": "9dfea3808bbd49a5877d8624df21b1c7"
              },
              "Tiles": [
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": -8,
                    "y": -11
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": -6,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": -4,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": -2,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 0,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 2,
                    "y": -11
                  },
                  "tileIndex": 3
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 4,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 6,
                    "y": -11
                  },
                  "tileIndex": 3
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 8,
                    "y": -11
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 10,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": -10,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 12,
                    "y": -11
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 11,
                  "position": {
                    "x": -13,
                    "y": -11
                  },
                  "tileIndex": 2
                },
                {
                  "type": 9,
                  "position": {
                    "x": -12,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 14,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 11,
                  "position": {
                    "x": 15,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 11,
                  "position": {
                    "x": -7,
                    "y": -1
                  },
                  "tileIndex": 2
                }
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "59520641-c139-4edd-8d6c-e04ae2346dd1"
        }"5MOD.Core.TransformComponent,MOD.Core.TileMapComponent�
$0cbe81d0-177a-4ad0-a673-97188314e814/maps/Lobby/SpawnLocation�{
          "name": "SpawnLocation",
          "path": "/maps/Lobby/SpawnLocation",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "///",
          "revision": 0,
          "origin": {
            "type": "Model",
            "entry_id": "mapobject",
            "sub_entity_id": null
          },
          "modelId": "mapobject",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -0.639,
                "z": 1.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "DrawMode": 0,
              "EndFrameIndex": 2147483647,
              "FlipX": false,
              "FlipY": false,
              "IgnoreMapLayerCheck": false,
              "OrderInLayer": 0,
              "PlayRate": 1.0,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "8ef238e0d0ca4bb783aca526cff35d11",
              "StartFrameIndex": 0,
              "TiledSize": {
                "x": 1.0,
                "y": 1.0
              },
              "Color": {
                "r": 1.0,
                "g": 1.0,
                "b": 1.0,
                "a": 1.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpawnLocationComponent",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0cbe81d0-177a-4ad0-a673-97188314e814"
        }"\MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.SpawnLocationComponent�&
$2a75631c-48d8-40c6-8cce-82ec50326eae/maps/Lobby/운영자�${
          "name": "운영자",
          "path": "/maps/Lobby/운영자",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "StaticNPC",
            "sub_entity_id": null
          },
          "modelId": "staticnpc",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -3.5,
                "y": -3.039,
                "z": 1.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": -1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 0,
              "RenderSetting": 1,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "ebde8add38854cf6953883471da15833",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.RigidbodyComponent",
              "MoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "RealMoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateComponent",
              "Enable": true
            },
            {
              "@type": "MOD.Core.ChatBalloonComponent",
              "AutoShowEnabled": true,
              "ChatBalloonRUID": {
                "DataId": "7b6bd117bd0446a5bacec8ea6831c997"
              },
              "ChatModeEnabled": false,
              "Message": "저를 눌러<br>튜토리얼을<br>확인해보세요.",
              "ShowDuration": 7.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateAnimationComponent",
              "ActionSheet": {
                "stand": "ebde8add38854cf6953883471da15833",
                "say0": "348c2011eec64e478338e8f0fe4eba9a",
                "say1": "30d860799c5b446fa9a49b29ba3f7d1c"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.NameTagComponent",
              "Name": "운영자",
              "NameTagRUID": {
                "DataId": "9bf18287398c44699c20fc5123d1a1ae"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.TouchReceiveComponent",
              "Enable": true
            },
            {
              "@type": "script.ChatTuto",
              "Enable": true,
              "chatUI": {
                "IsRelative": false,
                "EntityId": "b7519348-1e85-429a-8a02-e99704be8843"
              },
              "btnPrev": {
                "IsRelative": false,
                "EntityId": "a8d6320f-88c6-4457-8514-1f2432993dc5"
              },
              "btnNext": {
                "IsRelative": false,
                "EntityId": "2cf78091-5b38-45db-8956-a3be48d35919"
              },
              "btnClose": {
                "IsRelative": false,
                "EntityId": "630f0cdc-bcec-43bd-940a-e8a5649dfe6c"
              },
              "btnComplete": {
                "IsRelative": false,
                "EntityId": "734ba9fd-047b-499c-88ef-f553174f70a8"
              },
              "chatDataName": "ChatTutoData",
              "chatName": {
                "IsRelative": false,
                "EntityId": "701697be-942a-4ff2-a65d-35c7dc8f43aa"
              },
              "chatPortrait": {
                "IsRelative": false,
                "EntityId": "fb770555-bef0-45ec-88f0-afbab26a67bb"
              },
              "chatText": {
                "IsRelative": false,
                "EntityId": "598f2a6f-e741-4232-a2e4-d80270ecfefd"
              }
            }
          ],
          "@version": 1,
          "id": "2a75631c-48d8-40c6-8cce-82ec50326eae"
        }"�MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.RigidbodyComponent,MOD.Core.StateComponent,MOD.Core.ChatBalloonComponent,MOD.Core.StateAnimationComponent,MOD.Core.NameTagComponent,MOD.Core.TouchReceiveComponent,script.ChatTutoX�9
 26f22318aea142dda9a0c73414ebf0d8 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://a6a84505-c476-4922-9ded-27dfc90ba387"x-mod/codeblock2�7�7{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "a6a84505-c476-4922-9ded-27dfc90ba387",
    "Language": 1,
    "Name": "UIMatch",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-16T20:37:16.9641544+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": "dba8152b-01cf-4f32-a952-091400d07cf2:52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "textMatchInfo"
      },
      {
        "Type": "Component",
        "DefaultValue": "568c68e0-1d07-4145-93e7-630e0f23b573:52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "textWaitInfo"
      },
      {
        "Type": "Component",
        "DefaultValue": "538f763c-c074-45c7-b291-e4d6a81f4fcd:52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "textMatchLog"
      },
      {
        "Type": "Entity",
        "DefaultValue": "f1b30674-005d-4d57-981f-23449ccff62f",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "matchButton"
      },
      {
        "Type": "Entity",
        "DefaultValue": "dc31d419-f937-4858-b0fb-b0221dd70ce6",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "matchCancelButton"
      },
      {
        "Type": "Entity",
        "DefaultValue": "35b48abc-9420-48e3-b3b8-cb7a01cf57ab",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "singleButton"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "if _InstanceMapService:IsInstance() then\n\tself.Entity.Enable = false\n\treturn\nend\n\nself._T.textMatchInfoText = self.textMatchInfo.Text\nself._T.textWaitInfoText = self.textWaitInfo.Text\nlocal textMatchInfo = \"\"\nif _MatchLogic.minPlayerCnt == _MatchLogic.maxPlayerCnt then\n\tif _MatchLogic.minPlayerCnt > 0 then\n\t\ttextMatchInfo = string.format(\"(%d인)\", _MatchLogic.minPlayerCnt)\n\tend\nelse\n\ttextMatchInfo = string.format(\"(%d ~ %d인)\", _MatchLogic.minPlayerCnt,_MatchLogic.maxPlayerCnt)\nend\nself.textMatchInfo.Text = string.format(self._T.textMatchInfoText,textMatchInfo)\nself._T.IsReadyWaiting = false\n\nself._T.onClickMatchButton = self.matchButton:ConnectEvent(ButtonClickEvent,function()self:OnClickReadyBtn(true)end)\nself._T.onClickMatchCancelButton = self.matchCancelButton:ConnectEvent(ButtonClickEvent,function()self:OnClickReadyBtn(false)end)\nself._T.onClickSingleButton = self.singleButton:ConnectEvent(ButtonClickEvent,function()self:OnClickSingleBtn()end)\nself.textMatchLog.Text = \"\"\nself.textMatchLog.Enable = false\nself.Entity.Enable = not _MatchLogic.isEventMatchType\n",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "ready"
          }
        ],
        "Code": "if self._T.IsReadyWaiting == true then\n\t--서버 응답 대기중입니다\n\treturn\nend\nself._T.IsReadyWaiting = true\n_UserService.LocalPlayer.PlayerMatch:SetReady(ready)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnClickReadyBtn"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "ready"
          }
        ],
        "Code": "self._T.IsReadyWaiting = false\nself.matchButton.Enable = not ready\nself.matchCancelButton.Enable = ready\nself.singleButton.Enable = not ready",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnResultReady"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "local id = _UserService.LocalPlayer.Name\n_MatchLogic:SinglePlay(id)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnClickSingleBtn"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "if _InstanceMapService:IsInstance() then\n\treturn\nend\nself.matchButton:DisconnectEvent(ButtonClickEvent,self._T.onClickMatchButton)\nself.matchCancelButton:DisconnectEvent(ButtonClickEvent,self._T.onClickMatchCancelButton)\nself.singleButton:DisconnectEvent(ButtonClickEvent,self._T.onClickSingleButton)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnEndPlay"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleMatchJoin",
        "EventName": "MatchReadyEvent",
        "Target": "logic:MatchLogic",
        "Code": "-- Parameters\nlocal playerId = event.PlayerId\nlocal isReady = event.IsReady\nlocal playerCnt = event.PlayerCount\nlocal matchState = event.MatchState\n--------------------------------------------------------\nif _UserService.LocalPlayer.PlayerComponent.UserId == playerId then\n\tself:OnResultReady(isReady)\nend\nself.textWaitInfo.Text = string.format(self._T.textWaitInfoText, playerCnt)",
        "Scope": 2,
        "ExecSpace": 2
      },
      {
        "Name": "HandleMatchLog",
        "EventName": "MatchLogEvent",
        "Target": "logic:MatchLogic",
        "Code": "-- Parameters\nlocal log = event.Log\n--------------------------------------------------------\nself.textMatchLog.Text = log\nself.textMatchLog.Enable = not _UtilLogic:IsNilorEmptyString(log)",
        "Scope": 2,
        "ExecSpace": 2
      },
      {
        "Name": "HandleMatchState",
        "EventName": "MatchStateEvent",
        "Target": "logic:MatchLogic",
        "Code": "-- Parameters\nlocal matchState = event.MatchState\n--------------------------------------------------------\nif _MatchLogic.isEventMatchType then\n\tif matchState == _MatchEnum.NONE then\t\n\t\tself:OnClickReadyBtn(false)\n\t\tself.Entity.Enable = false\n\telseif matchState == _MatchEnum.WAIT then\n\t\tself.Entity.Enable = true\n\tend\nend\n",
        "Scope": 2,
        "ExecSpace": 2
      }
    ]
  }X