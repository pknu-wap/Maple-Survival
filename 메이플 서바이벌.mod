
 ï
 d95effa9247246be904763f6d463156b abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://13d3eaa8-64c4-443e-b2a2-7823bc88e684"x-mod/codeblock2ãà{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "13d3eaa8-64c4-443e-b2a2-7823bc88e684",
    "Language": 1,
    "Name": "SkillStat",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-06T18:43:25.6847192+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "dmg"
      }
    ],
    "Methods": [],
    "EntityEventHandlers": []
  }X-
 53c79945dc0a4cbb8706ac87ebb20bcf abfbb4d6a57440cf8a60560ad8ab7c9c,model://0f452342-60e4-4c42-b7aa-0d4c5219a920"x-mod/model2,ý+{
    "Version": 1,
    "Name": "Skill",
    "BaseModelId": null,
    "Id": "0f452342-60e4-4c42-b7aa-0d4c5219a920",
    "Components": [
      "MOD.Core.SpriteRendererComponent",
      "MOD.Core.TransformComponent",
      "script.SkillStat",
      "script.SkillComponent",
      "MOD.Core.TriggerComponent"
    ],
    "Properties": [],
    "Values": [
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "ActionSheet",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": {
          "$type": "System.Collections.Generic.Dictionary`2[[System.String, mscorlib],[System.String, mscorlib]], mscorlib"
        }
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "EndFrameIndex",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 2147483647
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "RenderSetting",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.RenderSettingType, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": 0
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "StartFrameIndex",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 0
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "Rotation",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector3, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector3, MOD.Core",
          "x": 0.0,
          "y": 0.0,
          "z": 0.0
        }
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "Position",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector3, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector3, MOD.Core",
          "x": 0.0,
          "y": 0.0,
          "z": 0.0
        }
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "QuaternionRotation",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODQuaternion, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODQuaternion, MOD.Core",
          "x": 0.0,
          "y": 0.0,
          "z": 0.0,
          "w": 1.0
        }
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "MOD.Core.TriggerComponent",
        "Name": "ColliderOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 1.0,
          "y": 1.0
        }
      },
      {
        "TargetType": "MOD.Core.TriggerComponent",
        "Name": "BoxSize",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 1.0,
          "y": 1.0
        }
      },
      {
        "TargetType": "MOD.Core.TriggerComponent",
        "Name": "BoxOffset",
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
        "TargetType": "MOD.Core.TriggerComponent",
        "Name": "CollisionGroup",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.Physics.CollisionGroup, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.Physics.CollisionGroup, MOD.Core",
          "Id": "MOD@TriggerBox"
        }
      }
    ],
    "EventLinks": [],
    "Children": []
  }X¨
 ecec32f7436246ec888da2cc6bd9ecd6 abfbb4d6a57440cf8a60560ad8ab7c9c)ui://bc0ebe92-ccf1-408b-b12c-f21b3844c6d0"x-mod/ui2©+
$bc0ebe92-ccf1-408b-b12c-f21b3844c6d0/ui/DefaultGroup*{
          "name": "DefaultGroup",
          "path": "/ui/DefaultGroup",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 21,
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
                "x": 1920.0,
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
        }"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponentÄ!
$7ca24c34-056b-42d6-97eb-99575cab22ab/ui/DefaultGroup/UIJoystick  {
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
                "x": -650.0,
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
        }"\MOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.JoystickComponent"
$b484ad23-1885-4cb1-bdb7-8396d1d6592f/ui/DefaultGroup/UIChatå {
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
                "x": -591.027466,
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
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ChatComponent¿7
$9fe1cdbb-4fcd-4f44-9e19-9687e0fa92fa/ui/DefaultGroup/Button_Exitð5{
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
              "Text": "ëê°ê¸°",
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
        }"MOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent,script.UIExitButtonø'
$d1179492-48bb-40ea-9cc2-ee2b3e1166cc/ui/DefaultGroup/UIMatchã&{
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
                "x": 720.076538,
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
        }"PMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UIMatch÷
$16f9cd43-83b9-4af4-aa41-d77062ce97a9'/ui/DefaultGroup/UIMatch/matchBtnParent{
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
        }"MOD.Core.UITransformComponent6
$f1b30674-005d-4d57-981f-23449ccff62f0/ui/DefaultGroup/UIMatch/matchBtnParent/matchBtnº4{
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
              "Text": "ì°¸ê°",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "f1b30674-005d-4d57-981f-23449ccff62f"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent6
$dc31d419-f937-4858-b0fb-b0221dd70ce66/ui/DefaultGroup/UIMatch/matchBtnParent/matchCancelBtnÅ4{
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
              "Text": "ì·¨ì",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "dc31d419-f937-4858-b0fb-b0221dd70ce6"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent´6
$35b48abc-9420-48e3-b3b8-cb7a01cf57ab1/ui/DefaultGroup/UIMatch/matchBtnParent/singleBtnå4{
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
              "Text": "ì±ê¸íë ì´",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "35b48abc-9420-48e3-b3b8-cb7a01cf57ab"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent*
$dba8152b-01cf-4f32-a952-091400d07cf2&/ui/DefaultGroup/UIMatch/textMatchInfoà({
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
              "Text": "ë¹ ë¥¸ë§¤ì¹­ %s",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "dba8152b-01cf-4f32-a952-091400d07cf2"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent*
$568c68e0-1d07-4145-93e7-630e0f23b573%/ui/DefaultGroup/UIMatch/textWaitInfoà({
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
              "Text": "%dëª ì°¸ì¬ì¤",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "568c68e0-1d07-4145-93e7-630e0f23b573"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentÂ*
$538f763c-c074-45c7-b291-e4d6a81f4fcd$/ui/DefaultGroup/UIMatch/textMachLog){
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
              "Text": "0ì´ í ê²ìì´ ììë©ëë¤.",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "538f763c-c074-45c7-b291-e4d6a81f4fcd"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent´ 
$8e6d5c3f-8fb4-4093-94c9-bc5d3c291f28/ui/DefaultGroup/UIStatus{
          "name": "UIStatus",
          "path": "/ui/DefaultGroup/UIStatus",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 5,
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
                "y": 181.0
              },
              "OffsetMin": {
                "x": -167.0,
                "y": 19.0
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
                "y": 100.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -440.0,
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
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "8e6d5c3f-8fb4-4093-94c9-bc5d3c291f28"
        }"QMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UIStatus 
$b94e2fa1-70a2-4316-b542-ae556c1c922b"/ui/DefaultGroup/UIStatus/info_top÷{
          "name": "info_top",
          "path": "/ui/DefaultGroup/UIStatus/info_top",
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentÝ)
$645cdc71-bac9-4894-8e00-87d87e6762a2-/ui/DefaultGroup/UIStatus/info_top/text_level«({
          "name": "text_level",
          "path": "/ui/DefaultGroup/UIStatus/info_top/text_level",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 1,
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
              "Text": "LV.%d",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "645cdc71-bac9-4894-8e00-87d87e6762a2"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent*
$360231da-8523-43f4-a391-f1f09462c68e,/ui/DefaultGroup/UIStatus/info_top/text_nameÔ({
          "name": "text_name",
          "path": "/ui/DefaultGroup/UIStatus/info_top/text_name",
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
              "Text": "íë ì´ì´ì´ë¦",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "360231da-8523-43f4-a391-f1f09462c68e"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentï
$11e3f78a-29a7-4d58-8d11-79dce74dc95d%/ui/DefaultGroup/UIStatus/info_bottomÜ{
          "name": "info_bottom",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom",
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentÕ
$2ed76c79-87a5-4dc6-a467-821aec0d20dd(/ui/DefaultGroup/UIStatus/info_bottom/Hp¿{
          "name": "Hp",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Hp",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 1,
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
                "y": -10.0
              },
              "OffsetMin": {
                "x": -167.0,
                "y": -40.0
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
                "y": -10.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 31.0,
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent 
$70fe83bb-5321-456e-8377-6442b2a384a77/ui/DefaultGroup/UIStatus/info_bottom/Hp/img_backgroundñ{
          "name": "img_background",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Hp/img_background",
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent 
$88878895-33e2-4172-a833-90bc1e794c220/ui/DefaultGroup/UIStatus/info_bottom/Hp/img_barê{
          "name": "img_bar",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Hp/img_bar",
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentï)
$7fe4b488-c4be-4766-8c6d-1ca70dd8ad6b3/ui/DefaultGroup/UIStatus/info_bottom/Hp/text_value·({
          "name": "text_value",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Hp/text_value",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "//////",
          "revision": 1,
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
              "Text": "%d / %d",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "7fe4b488-c4be-4766-8c6d-1ca70dd8ad6b"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentÖ
$5bf44e43-b478-4a82-9603-265da6005181)/ui/DefaultGroup/UIStatus/info_bottom/Exp¿{
          "name": "Exp",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Exp",
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent 
$8d669444-4a9f-4572-aa0e-b5edf2800e7c8/ui/DefaultGroup/UIStatus/info_bottom/Exp/img_backgroundñ{
          "name": "img_background",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Exp/img_background",
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent 
$247f7ccc-6903-4a77-903f-e2cb6284866b1/ui/DefaultGroup/UIStatus/info_bottom/Exp/img_barÿ{
          "name": "img_bar",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Exp/img_bar",
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentð)
$38574dc5-f0fd-45a0-869b-98fd16c58e0f4/ui/DefaultGroup/UIStatus/info_bottom/Exp/text_value·({
          "name": "text_value",
          "path": "/ui/DefaultGroup/UIStatus/info_bottom/Exp/text_value",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "//////",
          "revision": 1,
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
              "Text": "%d / %d",
              "UseOutLine": true,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "38574dc5-f0fd-45a0-869b-98fd16c58e0f"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent¢ 
$b7519348-1e85-429a-8a02-e99704be8843/ui/DefaultGroup/DialogTutorial{
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentÇ5
$f7327665-1bad-409f-ad8f-a9ea38f02008%/ui/DefaultGroup/DialogTutorial/title4{
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
              "Text": "íí ë¦¬ì¼",
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
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent,MOD.Core.ButtonComponentÈ+
$630f0cdc-bcec-43bd-940a-e8a5649dfe6c)/ui/DefaultGroup/DialogTutorial/btn_close*{
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
        }"ZMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent 
$fb770555-bef0-45ec-88f0-afbab26a67bb'/ui/DefaultGroup/DialogTutorial/img_npcï{
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent*
$701697be-942a-4ff2-a65d-35c7dc8f43aa(/ui/DefaultGroup/DialogTutorial/txt_nameÞ({
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
              "Text": "ì´ìì",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "701697be-942a-4ff2-a65d-35c7dc8f43aa"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent*
$598f2a6f-e741-4232-a2e4-d80270ecfefd*/ui/DefaultGroup/DialogTutorial/txt_scriptç({
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
              "Text": "ëíë´ì©",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "598f2a6f-e741-4232-a2e4-d80270ecfefd"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent¸5
$ef70de35-8783-41cd-b2f4-2f7535f67b77'/ui/DefaultGroup/DialogTutorial/btn_endó3{
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
              "Text": "ëí ë",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "ef70de35-8783-41cd-b2f4-2f7535f67b77"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponentÃ5
$6cef1df8-706f-4fcd-8f41-9a4c3d09e3e1*/ui/DefaultGroup/DialogTutorial/btn_acceptû3{
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
              "Text": "ìë½íê¸°",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "6cef1df8-706f-4fcd-8f41-9a4c3d09e3e1"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponentµ5
$734ba9fd-047b-499c-88ef-f553174f70a8,/ui/DefaultGroup/DialogTutorial/btn_completeë3{
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
              "Text": "ìë£íê¸°",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "734ba9fd-047b-499c-88ef-f553174f70a8"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent¿5
$2cf78091-5b38-45db-8956-a3be48d35919(/ui/DefaultGroup/DialogTutorial/btn_nextù3{
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
              "Text": "ë¤ìì¼ë¡",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "2cf78091-5b38-45db-8956-a3be48d35919"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponentÁ5
$a8d6320f-88c6-4457-8514-1f2432993dc5(/ui/DefaultGroup/DialogTutorial/btn_prevû3{
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
              "Text": "ì´ì ì¼ë¡",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "a8d6320f-88c6-4457-8514-1f2432993dc5"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent·!
$a4d0a119-04d1-4ec7-903d-952354ca835a/ui/DefaultGroup/UILevelUp {
          "name": "UILevelUp",
          "path": "/ui/DefaultGroup/UILevelUp",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 6,
          "pathConstraints": "///",
          "revision": 6,
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
                "x": 750.0,
                "y": 435.0
              },
              "OffsetMin": {
                "x": -750.0,
                "y": -365.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 1500.0,
                "y": 800.0
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
                "y": 35.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 35.0,
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
            },
            {
              "@type": "script.UILevelUp",
              "Enable": true,
              "skillDataName": "UISkillData"
            }
          ],
          "@version": 1,
          "id": "a4d0a119-04d1-4ec7-903d-952354ca835a"
        }"RMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UILevelUp½5
$8141ba30-4439-4e32-999e-3c89ca4195c5 /ui/DefaultGroup/UILevelUp/titleÿ3{
          "name": "title",
          "path": "/ui/DefaultGroup/UILevelUp/title",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "////",
          "revision": 2,
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
                "x": 741.25,
                "y": -6.0
              },
              "OffsetMin": {
                "x": -741.25,
                "y": -106.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 1482.5,
                "y": 100.0
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
                "y": 394.0,
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
              "Text": "ë ë²¨ì!",
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
          "id": "8141ba30-4439-4e32-999e-3c89ca4195c5"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent,MOD.Core.ButtonComponentÜ
$f40ccb34-1679-42a0-a8dc-5534bb148507"/ui/DefaultGroup/UILevelUp/skill_1ð{
          "name": "skill_1",
          "path": "/ui/DefaultGroup/UILevelUp/skill_1",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "////",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "uiempty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
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
                "x": -400.0,
                "y": 20.0
              },
              "OffsetMin": {
                "x": -500.0,
                "y": -80.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 100.0,
                "y": 100.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.00000012,
                "y": 1.00000012,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": -450.0,
                "y": -30.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -450.0,
                "y": -30.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.00000012,
                "y": 1.00000012,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "f40ccb34-1679-42a0-a8dc-5534bb148507"
        }"MOD.Core.UITransformComponent
$0a99af33-d825-4908-b031-637201261760,/ui/DefaultGroup/UILevelUp/skill_1/skill_img÷{
          "name": "skill_img",
          "path": "/ui/DefaultGroup/UILevelUp/skill_1/skill_img",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 4,
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
                "x": 100.0,
                "y": 240.0
              },
              "OffsetMin": {
                "x": -100.0,
                "y": 40.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 200.0,
                "y": 200.0
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
                "y": 140.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 190.0,
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
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "StartFrameIndex": 0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0a99af33-d825-4908-b031-637201261760"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentµ*
$53e46888-4e21-44d1-b4ee-4f30a4d53178-/ui/DefaultGroup/UILevelUp/skill_1/skill_name){
          "name": "skill_name",
          "path": "/ui/DefaultGroup/UILevelUp/skill_1/skill_name",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "/////",
          "revision": 4,
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
                "x": 200.0,
                "y": 15.0
              },
              "OffsetMin": {
                "x": -200.0,
                "y": -110.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 400.0,
                "y": 125.0
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
                "y": 15.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 65.0,
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
              "Text": "%s\n(LV.%d â %d)",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "53e46888-4e21-44d1-b4ee-4f30a4d53178"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentµ*
$12004944-773d-4354-bc9a-42e28762acd5//ui/DefaultGroup/UILevelUp/skill_1/skill_script){
          "name": "skill_script",
          "path": "/ui/DefaultGroup/UILevelUp/skill_1/skill_script",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "/////",
          "revision": 5,
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
                "x": 200.0,
                "y": 15.0
              },
              "OffsetMin": {
                "x": -200.0,
                "y": -385.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 400.0,
                "y": 400.0
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
                "y": -185.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -135.0,
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
                "left": 30,
                "right": 30,
                "top": 110,
                "bottom": 30
              },
              "SizeFit": false,
              "Text": "\\n%s",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "12004944-773d-4354-bc9a-42e28762acd5"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentÓ
$acdfc58a-1540-4c07-b998-6f82476bb3c3"/ui/DefaultGroup/UILevelUp/skill_2ç{
          "name": "skill_2",
          "path": "/ui/DefaultGroup/UILevelUp/skill_2",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "////",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "uiempty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
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
                "x": 50.0,
                "y": 20.0
              },
              "OffsetMin": {
                "x": -50.0,
                "y": -80.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 100.0,
                "y": 100.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.00000012,
                "y": 1.00000012,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 0.0,
                "y": -30.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -30.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.00000012,
                "y": 1.00000012,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "acdfc58a-1540-4c07-b998-6f82476bb3c3"
        }"MOD.Core.UITransformComponent
$b275182a-ebd8-40da-8577-9baf54386358,/ui/DefaultGroup/UILevelUp/skill_2/skill_img÷{
          "name": "skill_img",
          "path": "/ui/DefaultGroup/UILevelUp/skill_2/skill_img",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 3,
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
                "x": 100.0,
                "y": 240.0
              },
              "OffsetMin": {
                "x": -100.0,
                "y": 40.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 200.0,
                "y": 200.0
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
                "y": 140.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 190.0,
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
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "StartFrameIndex": 0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "b275182a-ebd8-40da-8577-9baf54386358"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentµ*
$d320c32c-2d78-47c8-b0d2-76e27dd75c1c-/ui/DefaultGroup/UILevelUp/skill_2/skill_name){
          "name": "skill_name",
          "path": "/ui/DefaultGroup/UILevelUp/skill_2/skill_name",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "/////",
          "revision": 3,
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
                "x": 200.0,
                "y": 15.0
              },
              "OffsetMin": {
                "x": -200.0,
                "y": -110.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 400.0,
                "y": 125.0
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
                "y": 15.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 65.0,
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
              "Text": "%s\n(LV.%d â %d)",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "d320c32c-2d78-47c8-b0d2-76e27dd75c1c"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentµ*
$4d0ab4f4-dcb2-481a-8e36-81aedac9171f//ui/DefaultGroup/UILevelUp/skill_2/skill_script){
          "name": "skill_script",
          "path": "/ui/DefaultGroup/UILevelUp/skill_2/skill_script",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "/////",
          "revision": 4,
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
                "x": 200.0,
                "y": 15.0
              },
              "OffsetMin": {
                "x": -200.0,
                "y": -385.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 400.0,
                "y": 400.0
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
                "y": -185.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -135.0,
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
                "left": 30,
                "right": 30,
                "top": 110,
                "bottom": 30
              },
              "SizeFit": false,
              "Text": "\\n%s",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "4d0ab4f4-dcb2-481a-8e36-81aedac9171f"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentØ
$93333ec5-9d74-49e2-9005-acf2bb9769a2"/ui/DefaultGroup/UILevelUp/skill_3ì{
          "name": "skill_3",
          "path": "/ui/DefaultGroup/UILevelUp/skill_3",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "////",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "uiempty",
            "sub_entity_id": null
          },
          "modelId": "uiempty",
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
                "x": 500.0,
                "y": 20.0
              },
              "OffsetMin": {
                "x": 400.0,
                "y": -80.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 100.0,
                "y": 100.0
              },
              "UIMode": 1,
              "UIScale": {
                "x": 1.00000012,
                "y": 1.00000012,
                "z": 1.0
              },
              "UIVersion": 2,
              "anchoredPosition": {
                "x": 450.0,
                "y": -30.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 450.0,
                "y": -30.0,
                "z": 0.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.00000012,
                "y": 1.00000012,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "93333ec5-9d74-49e2-9005-acf2bb9769a2"
        }"MOD.Core.UITransformComponent
$d65840d8-0496-4d29-a650-e7e71314ad1e,/ui/DefaultGroup/UILevelUp/skill_3/skill_img÷{
          "name": "skill_img",
          "path": "/ui/DefaultGroup/UILevelUp/skill_3/skill_img",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "/////",
          "revision": 3,
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
                "x": 100.0,
                "y": 240.0
              },
              "OffsetMin": {
                "x": -100.0,
                "y": 40.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 200.0,
                "y": 200.0
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
                "y": 140.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 190.0,
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
              "EndFrameIndex": 2147483647,
              "ImageRUID": {
                "DataId": ""
              },
              "StartFrameIndex": 0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "d65840d8-0496-4d29-a650-e7e71314ad1e"
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentµ*
$0a3947e6-d31d-4ac5-acf2-54d1d822e06b-/ui/DefaultGroup/UILevelUp/skill_3/skill_name){
          "name": "skill_name",
          "path": "/ui/DefaultGroup/UILevelUp/skill_3/skill_name",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "/////",
          "revision": 3,
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
                "x": 200.0,
                "y": 15.0
              },
              "OffsetMin": {
                "x": -200.0,
                "y": -110.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 1.0
              },
              "RectSize": {
                "x": 400.0,
                "y": 125.0
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
                "y": 15.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": 65.0,
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
              "Text": "%s\n(LV.%d â %d)",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0a3947e6-d31d-4ac5-acf2-54d1d822e06b"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentµ*
$c9135a99-1628-45f8-90a5-b65b3691e6f0//ui/DefaultGroup/UILevelUp/skill_3/skill_script){
          "name": "skill_script",
          "path": "/ui/DefaultGroup/UILevelUp/skill_3/skill_script",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "/////",
          "revision": 4,
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
                "x": 200.0,
                "y": 15.0
              },
              "OffsetMin": {
                "x": -200.0,
                "y": -385.0
              },
              "Pivot": {
                "x": 0.5,
                "y": 0.5
              },
              "RectSize": {
                "x": 400.0,
                "y": 400.0
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
                "y": -185.0
              },
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.0,
                "y": -135.0,
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
                "left": 30,
                "right": 30,
                "top": 110,
                "bottom": 30
              },
              "SizeFit": false,
              "Text": "\\n%s",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "c9135a99-1628-45f8-90a5-b65b3691e6f0"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponentX¨
 96dae5464e0741ac8a2108d6aef3aa8b abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://1effd604-74ee-404d-b4e5-a79b3554b7a6"x-mod/codeblock2{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "1effd604-74ee-404d-b4e5-a79b3554b7a6",
    "Language": 1,
    "Name": "UIItemSlot",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-06T15:13:02.6449202+09:00",
    "Properties": [
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "item"
      },
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "itemGUID"
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
            "Type": "any",
            "DefaultValue": "nil",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "item"
          }
        ],
        "Code": "self.item = item\n\nlocal imageEntity = self.Entity:GetChildByName(\"img_slot\")\nimageEntity.SpriteGUIRendererComponent.ImageRUID = item.IconRUID\n\nimageEntity:GetChildByName(\"item_count\").TextComponent.Text = tostring(item.ItemCount)\nself.itemGUID = item.GUID",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "SetData"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleButtonClickEvent",
        "EventName": "ButtonClickEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal Entity = event.Entity\n--------------------------------------------------------\n\nif self.item == nil then\n\treturn\nend\n\n-- TODO: item logic",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X	
 423a9f3534284c329e529b4471ba80b4 abfbb4d6a57440cf8a60560ad8ab7c9cmap://ingame"	x-mod/map2³	ð
$56e67aca-7da1-4894-9d38-bc360732e322/maps/InGame{
          "name": "InGame",
          "path": "/maps/InGame",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 22,
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
        }"0MOD.Core.MapComponent,MOD.Core.FootholdComponent¦
$92af9a0c-4daa-4444-be5e-ef4db41f7d9f/maps/InGame/BackgroundÆ{
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
        }"MOD.Core.BackgroundComponentÐ,
$205a279f-0745-40bf-9932-bafa73ec7270/maps/InGame/MapleMapLayerï+{
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
              "Thumbnail": "iVBORw0KGgoAAAANSUhEUgAAAMgAAABkCAYAAADDhn8LAAANqklEQVR4Ae1dfWwUxxX/HdjEqUM4A0UGLIJtIIWACdhAk0AB44OUJm0DsVGI+iGltqNGjdqQgmnSVuWPxqaK6IdQcraQKqJAZQeElIoCtokIDggMphBKWmRsIKUY8+GDluJgYPtmz3dge9zbXWZ9u+s3ML7b2Tdv3vxm3828mbczAAdGgBFgBBgBRoARYAQYAUaAEWAEGAFGgBFgBBgBRoARYAQYAUaAEWAEGAFGgBFgBBgBRoARYAQYAUbAEAI+Q1R9QBQsD2p9UAwX4UAEiquLgSwSbCbFq0AwFDQtZXFRsS3P8gDTknAGRsAOBGYRU1IOpwVWEKe1SH+UJ0SV3kJRfIrooJDgIFkcI0r37trtw79off4ADT+CPhRxUp2C+eaHVH31sLCCyJAupQfJS+EZ/BMPYjQeoErtorq9jNleqp6ddeEhVi/obkifAGTQzUAvBG5KTsPoE/l+gP7jNMVS1LlJ/HjKygoiQ/8wsDhlWPhhOiUjcFnaZWBSbXhw728m2R02zncymqwgstb5DzDyN/sBoRwNMgKXpVWR3XGFZK4i3aC6oShsh7isFnER15a5Yys1cZLRaEV+zhNfBKITEYrF4B5EMaDMzlsIsIJ4qz25NooRYAVRDCiz8xYCvA5iU3uKMXFtTrqWu3IZcLgOvrK66HWoYT9SSvfo9p9WuYLWXBLR9q/GtqovBVJsEscWtvq4fxOtqwjD/xb5UCU4d8HPKgDcg1hFLka+kpRE7Y5YbuwgPfANQlP2CO3c5zTHetsHf2srtJI8bcswsSCZpNOktIRcpRx69QMk/1GgViywzIgBiEtvcw9iU8PNG+9H4xfXsOOX2/DkQ+cxkvQgKc2P13++DUhop7RDwFi6Xrmerkdi1pDzQHG+TdLYxJb0Ak3AgmxaWDliUxlxZssKYlMD7H3qm5hOWrHo8YloPn0e72/ejjnfL0DywX2Y+/gEpM9ZipbmZuSe3odDJ85i3LJfob65zSZpbGJ7EW14GimghVUMpei+PjAmMLwOEhMiawTRefl7HAQFJ23TCi10+ABS3q4L2yAbyQahnynf8rd9VtaCFuYtRGVNfVTIgrwZ2FWzK3rdX75E8VZcYe5BFAMaZSdxEKwdlV6HhESyyQfqNkjdXlqqp6GXMNKFTVIezWzuS/6CHHMZmNowAqwghqEySSgcBHP9mCQcn05TXnIQvFMG1JS9i8EpZHPkjEb7F+J6g8446+vz9E8rf6pqyZ7pDKIH4aAOAVYQdVh25RRxEFxATrQ0eRVKB45+bzkaPtyOZ+fPwv5t29GudQBfnYtPm85i3sCxXfObuGKlMAGWSVJWEJOAGSYXDoL5NA0qHARTKRc5CKa9+5A2OHsqrl1rx7fe2YaWU5/h04ZqzJ2agpzZT1o20rvbIIZlZMKYCLCCxITIGkEPg7sc2lXBKuMJnWH14U7DuvPadTNYBmEpXhuAf1o6Qkea9c+ygFVLy2CBislYQRQDGg92PrEg6dTgp7GlCJHP8JVr/rKCuKapehf0ianjer8Z9zvNCDU/SFLc6PyMu0CmBGAFMQWXM4n3HWuMCuY4g72NZvGirzCK7+4KrCDuai/XSRtcdXcR03XCk8CsIG5stW4yO67X6Cafmy9ZQVzYeoH54a1Wqj+q1qW3Os3bnY8LobBdZFYQ2yFWX0BEMSKcZ2WNi3w19dmdj6nM/YTYUwoiHPf6IjjNGfDAPUb6Iza6mgiHwNUfaNrsR4FvTPGFHV1nn9dW/zgVbz3vs+RsKWuvqOOheBlrOZTxlZUVK81TL0yJB1fTtKg3q35NiwT3povvbVfa9LQLrRe60AqwessT4as5cNFBOCtGYqwGv5/76a/Uatod8q8k1cgp17TcdWc0tJ+HSBPX98O7S96XSTGKoQ3cQ6m0wNrlXh9feKoH6WPs4lZcpKcUyiyCVWfF7nxiVah5RwdKN1WhVBuInLVLsHvNAaBtJ0qLFyH1gVZgDXkqqwhj6T2snJnIuHIw/I4J+bLFK7CCxAv5+yg3ohgRFlZnsbrzifDr7fPVr2zApXPhNZeWdzaScsxA5YpkbNvzFl5avhiNGNNbVnPp9AJW84izQBpli6NyCKHD40hz4ttC3cN3yUIpkV9EC1lNZTH7YJlibpJY1Ln7LJZd8s3wD8feavK+pDBvWSEuNTXjeH2Nfj0nsAT1ITVvROo2iHD07HxLMZgRezOIqN2iS6Puj6cURB0s9nDy0e+R1jmkFg+2XQ+yPdLTK/Plp1Gy8tcITAJW7QMO1dOL6PS/ZOU01NAieSEZDPEKdimIp4z0eDWO0XIHYAB8GqkJRSOh/mYqWm8YoewjmsapeO/3dfjtn2mDCRGqtsCfcB3vra8LX3vwL9sgfdiok7Mmmy7tzMBUjECL6Xy2ZAg14sNXxW9qK6YXCFvkYfyx4BDGpI1GUUkBdSV5thQbT6asIH2I/rFjx7oMsQwVfYa2lx8/yhCp3UQNlRNJMZbqxRytqdVtkP0fbcW3X9uOhspKZTaI3fUww99YX2+Go0VaFUa6xaJ7ZBt18adNz/xsWQZoTxufb6myhSq32yA9gHJQgl02CPcgkkZ+bPy1DNyidxgSdtPCY6ZWXiEhspAUyPPCcVUWKu7iLKwgksY7RbsFbvhh2BEwN5225hkuIbKQVF1TbX6IZaEczqIOAVYQCZbDApW4c7ICt+nfw4E3aSpT7M58/yErK+v+mTCHPkWAFUQC9/TsAp+mvUQ+QOlkg7yozAY5eox2eu5nIWobVNAhcIUY6iRb00hT8DqIBKUTtRNIOQQ0E3UbRELCSUYRWE2jyhJoSW20c+/azlVSo3kdQMcKImmE9tsncaSigmJ4SlNCwklGERhCjod5M9E+ljJMM5rJOXQ8xJK0xT+O56HmL6f0bXP9+69jTHgrKwklJ8VEIOJ4eIko3bdnA7+TLmvgR+cWobX1T/qtOc+/iPoG0bocLCFwEOUL0FIUcTwErS65KXAPImmt7aUFeKOykO48TfF1UpASCRUnGUEg+EawyAidU2lYQSQtszjgx9+2bod/+CGM/hqbaRKI+k0SK4ikqS9d+TdSppfjJtrxWdl3w6cnSeg4yfsIsIJI2nh4YDNoLUS/03BoC5rYBpGg1D+SWEEk7Xxuxw+aNK2QzEm1zoqSomIm6QtttIEBkol0BNqCQ4NdTgKMLsRtJZol4TdEVSzG6XwLcQqZZFbfpLJ/Ed/dRboDpcsn1lXEmwBju99Vd80DbAmWUWdFhJ0VJSR9lyRePR1ExS2imNHzmMySpkwN84nm7+KgHr+mX6uTLkOffXqOGG6kMpwUBC6fk0Di9Dlx/opNgXsQCbB2OStKijKWRK+44ur/IR1H98ihMinUDtDCnJKwgB5AsW6RTvECRfE9iaKTwkgSZgTFK/YJxT2IBFvdWfF2GjpujyRnxfclFH2YJB7Mv1IkD2PZQttA3x3kZ2Zi88ePYc7O0Ti5jc5+UxFqabhGg0xUUhRlq/HXVCFZmIfA5QxFcTyjjTufeOqFqeh4vHNHPoGklfG44HPXWfFNZc6KQh4O9iAQbXvF7L3VgxTQsIDGponHCCXaZJF+AZ+yghc7K1pBzZt5vGWD0Hj5RHYqHb1MUxunqcHo6GXZsCRWU4adFU8SWQWmFWbGIu/X9yN7kbltCyOjjeYtBaGx8qT/knI8SzM6tF+TOHrZSmBnReOoeVUxIgh4a4gljl4W8+L0DnlIGJV09HKkomY+hbNiVvY0TKC49JX1ZrIyrccQ8FQP0sMgt7gzuApnRd1oLCQ7aAY9MWMpLnTWQpvHnmPbquMpBVGFkipnxUSaiuxoo3UsmoZssaisqurEfKwh4K0hljUMeuQSzoo3HlmH1uSfoKaMdjWxGDr8lHE6Dfem0KfF4Z7FojmbIgS4B5EAqcxZUfz8fAC0z5IUwkmuQIAVRNJMKpwVu9hDt6gQhw2xdBsp4gT5McqCRcFVEii6JOl5ZpNd9RyOYwWmdKljF8q7F3oesXAr/KYG08JtgsGjDEQeMdFC2BnJc7dEtd94iCXB01HOihL5lCQJZ7804iScIFcipnKIMsetStbwZfoyHpNXn0o35rwoyhEPujh8SkxYGAmBcJ5a0BjVaB4jfC3QcA8iAc1xzordZFR2fLMY+gmfJoOhced14AUipl1Z133SjN8ZzIfDRJhPkdamDAVhu1GeBfkk3G763sXB3xAHZUSsIBIo7dpZUVKUpSQlxzcLxdhCMdu4CPkvZML/yTVc1h6mbcPu0GqsgbyinAyKwqlQrEoZedgjecTur+KUqTgGSwtpdshrZDxrR7kynmLc7FRnRX1MT0Inb03Uri/pYEfKzgaM4CJrz/tJYxtEgp7jnRVzyCFzCI1zvoMyificpBABVhAJmE7eWXHCa2QoTyPTof4aktYkrZSIz0kKEWAbRAKmk50V01ITcTmUiEV7htFBaPQGYZzH6BL4PJXECiJpTifvrJiTSwK3JePihHYMEu+qc7AVAVYQCbwqnBUlbJUkZTaUITNdCStmYgABVhAJSKqcFSWsOcllCLCCSBqMd1aUgNJPk1hBJA2vzFlRwpuTGAFGgBFgBBgBRoARYAQYAUaAEWAEGAFGgBFgBBgBRoARYAQYAUaAEWAEGAFGgBFgBBgBRoARYAQYAUaAEWAEGIH+hsD/ADbbJMUtuKmcAAAAAElFTkSuQmCC",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "205a279f-0745-40bf-9932-bafa73ec7270"
        }"MOD.Core.MapLayerComponentÕ
$6b556bd0-2f11-41da-8611-aa4f3de17e1e/maps/InGame/SpawnLocation²{
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
        }"\MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.SpawnLocationComponentõ´
$f60f50a7-de88-4781-b175-f09e392aa3d8/maps/InGame/RectTileMapö³{
          "name": "RectTileMap",
          "path": "/maps/InGame/RectTileMap",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "///",
          "revision": 12,
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
              "TileSetRUID": "tileset://2bbbb2c8-da34-47be-a1fe-5f5fff85d0bf",
              "Enable": true,
              "tileMap": [
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 2
                  },
                  "tileIndex": 22
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 2
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -1
                  },
                  "tileIndex": 16
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 0
                  },
                  "tileIndex": 16
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -4
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 3
                  },
                  "tileIndex": 22
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -4
                  },
                  "tileIndex": 26
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 3
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 2
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 4
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 4
                  },
                  "tileIndex": 12
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 4
                  },
                  "tileIndex": 12
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 4
                  },
                  "tileIndex": 22
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 1
                  },
                  "tileIndex": 17
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 3
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 1
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 1
                  },
                  "tileIndex": 22
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 1
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -1
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 7
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 1
                  },
                  "tileIndex": 17
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 1
                  },
                  "tileIndex": 17
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 1
                  },
                  "tileIndex": 17
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 1
                  },
                  "tileIndex": 17
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": 1
                  },
                  "tileIndex": 17
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 5
                  },
                  "tileIndex": 12
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 5
                  },
                  "tileIndex": 12
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -7
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -4
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -7
                  },
                  "tileIndex": 26
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 0
                  },
                  "tileIndex": 11
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 1
                  },
                  "tileIndex": 11
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -5
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 0
                  },
                  "tileIndex": 11
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 1
                  },
                  "tileIndex": 11
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -7
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -2
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -7
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 1
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -4
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 0
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 1
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 5
                  },
                  "tileIndex": 12
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 7
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 5
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 8,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 8
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": 9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -16,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -15,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -14,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -13,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -5
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -12,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -11,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -10,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -9,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -9
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -8
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -7
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -6
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -5
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -4
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -3
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -8,
                    "y": -2
                  },
                  "tileIndex": 13
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -5
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -4
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -3
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -6,
                    "y": -2
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -4,
                    "y": -6
                  },
                  "tileIndex": 9
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -2,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 0,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -8
                  },
                  "tileIndex": 26
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -7
                  },
                  "tileIndex": 18
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 2,
                    "y": -6
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -9
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -8
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -7
                  },
                  "tileIndex": 14
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -6
                  },
                  "tileIndex": 14
                }
              ]
            }
          ],
          "@version": 1,
          "id": "f60f50a7-de88-4781-b175-f09e392aa3d8"
        }"9MOD.Core.TransformComponent,MOD.Core.RectTileMapComponent
$3fe2af94-3163-43e4-b27d-6dd5e99ab183/maps/InGame/SpawnManager {
          "name": "SpawnManager",
          "path": "/maps/InGame/SpawnManager",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 5,
          "modelId": null,
          "@components": [
            {
              "@type": "script.SpawnManagerComponent",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "3fe2af94-3163-43e4-b27d-6dd5e99ab183"
        }"script.SpawnManagerComponent
$3e5d2f30-b08d-4caf-bc58-0403170bbba3/maps/InGame/StageManager {
          "name": "StageManager",
          "path": "/maps/InGame/StageManager",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 5,
          "pathConstraints": "///",
          "revision": 6,
          "modelId": null,
          "@components": [
            {
              "@type": "script.StageManagerComponent",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "3e5d2f30-b08d-4caf-bc58-0403170bbba3"
        }"script.StageManagerComponentß
$9301a6cb-d8fc-46e7-9732-fcc0ff1a6b1d/maps/InGame/Inven{
          "name": "Inven",
          "path": "/maps/InGame/Inven",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 6,
          "pathConstraints": "///",
          "revision": 2,
          "modelId": null,
          "@components": [
            {
              "@type": "script.InvenComponent",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "9301a6cb-d8fc-46e7-9732-fcc0ff1a6b1d"
        }"script.InvenComponent
$03ece4ef-d554-4ed6-9687-3e1c763bae38/maps/InGame/SkillManager {
          "name": "SkillManager",
          "path": "/maps/InGame/SkillManager",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 7,
          "pathConstraints": "///",
          "revision": 3,
          "modelId": null,
          "@components": [
            {
              "@type": "script.SkillManagerComponent",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "03ece4ef-d554-4ed6-9687-3e1c763bae38"
        }"script.SkillManagerComponentPXÞ;
 6d01a1ed94d54256aad8c18c08978d60 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://15873444-8d16-4d28-9091-9c623fda5224"x-mod/codeblock2Ò:Ï:{
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
  }Xû
 d0e41209d77b4331aa1789e9d614fc73 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://3cc2ac00f2ee4c0a8513065252069d41"x-mod/directory2óð{
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
  }X÷
 32534865382a4e3ab55d37c18f385ef3 abfbb4d6a57440cf8a60560ad8ab7c9c,model://2b6341f4-850d-4c93-b056-edf632c46523"x-mod/model2óð{
    "Version": 1,
    "Name": "Skill_child",
    "BaseModelId": "0f452342-60e4-4c42-b7aa-0d4c5219a920",
    "Id": "2b6341f4-850d-4c93-b056-edf632c46523",
    "Components": [],
    "Properties": [],
    "Values": [
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "SpriteRUID",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": "01d8194f40ec4316b2911fd607acd9a3"
      }
    ],
    "EventLinks": [],
    "Children": []
  }Xè
 9044443d6c5a45ea89d4662b4f1c6055 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://6c3452b46fea4691a7c068b1ac7166d1"x-mod/directory2àÝ{
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
      "component://chat",
      "component://chattuto",
      "directory://1141e7913b944a48887c8c68b34e8bf7",
      "directory://97623be180cb46978d313c00be418e4b",
      "tileset://2bbbb2c8-da34-47be-a1fe-5f5fff85d0bf",
      "gamelogic://5c7506f1cd94470e9467bfdc27c511bc"
    ]
  }XÄ
 91c290fc66ac4b7492c6e0b784598864 abfbb4d6a57440cf8a60560ad8ab7c9c2userdataset://02da7d04-ce6b-483d-a837-e9c2ef78d9cf"x-mod/userdataset2´±{
    "name": "UISkillData",
    "id": "02da7d04-ce6b-483d-a837-e9c2ef78d9cf",
    "serveronly": false,
    "columns": [
      "img",
      "name",
      "script"
    ],
    "datas": [
      {
        "img": "8d112a3096834b51a4a590d937d21133",
        "script": "ê²ë¶ì ííì ìì±íì¬ ì ë°©ì ë°ì¬íë¤.\\nê°íì ì¿¨íìì´ ê°ìíê³  ë°ë¯¸ì§ê° ì¦ê°íë¤.",
        "name": "ë¸ë ì´ë í ë¤ì´ë"
      },
      {
        "img": "421f87aef8f04a7c9fefd861cc24c5b8",
        "name": "ìì¸ ìì»¤",
        "script": "íì ì ìë¥¼ ë½ì ì ìê² ë ë¦°ë¤.\\nê°íì ì¿¨íìì´ ê°ìíê³  ë°ë¯¸ì§ê° ì¦ê°íë¤."
      },
      {
        "img": "be38b7bde7634491a5eec7c3bf4a5ac6",
        "name": "ìºë¼ ë°ì£¼ì¹´",
        "script": "íì½ì ìì¶ìí¨ í¬íì íì¬í ê°ë ¥í ìºë¼ì ë°ì¬íë¤.\\nê°íì ë°ë¯¸ì§ê° ì¦ê°íë¤."
      }
    ]
  }Xý#
 a43f34e6805e4c3e82689ee801355d8f abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://3dea55df-7510-4514-8be8-ee91d353a1cc"x-mod/codeblock2ñ"î"{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 1
    },
    "Description": "",
    "Id": "3dea55df-7510-4514-8be8-ee91d353a1cc",
    "Language": 1,
    "Name": "UIInventory",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-06T15:13:02.636919+09:00",
    "Properties": [
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "itemUI"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "scrollView"
      },
      {
        "Type": "dictionary",
        "DefaultValue": "string|Entity",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "SlotItems"
      },
      {
        "Type": "string",
        "DefaultValue": "\"/ui/DefaultGroup/RPGButtons/btn_inventory\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "inventoryBtnPath"
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
        "Code": "self.itemUI =_EntityService:GetEntityByPath(self.Entity.Path .. \"/InventoryPanel/Inventory_ScrollView/item_slot\")\nself.itemUI:SetEnable(false)\nself.scrollView = _EntityService:GetEntityByPath(self.Entity.Path .. \"/InventoryPanel/Inventory_ScrollView\")\n\n-- add UI Preset/Buttons\nlocal inventoryButton = _EntityService:GetEntityByPath(self.inventoryBtnPath)\nif inventoryButton ~= nil then\n\tlocal openFunc = function()\n\t\tself.Entity.Enable = true\n\tend\n\tif inventoryButton.ButtonComponent == nil then\n\t\tinventoryButton:AddComponent(\"MOD.Core.ButtonComponent\", false)\n\tend\n\tinventoryButton:ConnectEvent(ButtonClickEvent, openFunc)\nend\n\n\nlocal closeButton = _EntityService:GetEntityByPath(self.Entity.Path .. \"/InventoryPanel/CloseButton\")\nlocal closeFunc = function()\n\tself.Entity.Enable = false\nend\n\ncloseButton:ConnectEvent(ButtonClickEvent, closeFunc)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleInventoryItemInitEvent",
        "EventName": "InventoryItemInitEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\n\nfor i, item in pairs(Items) do\n\tlocal itemslot =_SpawnService:Clone(\"Item\", self.itemUI, self.scrollView)\n\titemslot.UIItemSlot:SetData(item)\n\tself.SlotItems[item.GUID] = itemslot\nend",
        "Scope": 0,
        "ExecSpace": 0
      },
      {
        "Name": "HandleInventoryItemAddedEvent",
        "EventName": "InventoryItemAddedEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\nfor i, item in pairs(Items) do\n\tlocal itemslot =_SpawnService:Clone(\"Item\", self.itemUI, self.scrollView)\n\titemslot.UIItemSlot:SetData(item)\n\tself.SlotItems[item.GUID] = itemslot\nend",
        "Scope": 0,
        "ExecSpace": 0
      },
      {
        "Name": "HandleInventoryItemRemovedEvent",
        "EventName": "InventoryItemRemovedEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\nfor\ti,item in pairs(Items) do\n\tif self.SlotItems[item.GUID] ~= nil then\n\t\tself.SlotItems[item.GUID]:Destroy()\n\tend\nend",
        "Scope": 0,
        "ExecSpace": 0
      },
      {
        "Name": "HandleInventoryItemModifiedEvent",
        "EventName": "InventoryItemModifiedEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\nfor\ti,item in pairs(Items) do\n\tif self.SlotItems[item.GUID] ~= nil then\n\t\tself.SlotItems[item.GUID].UIItemSlot:SetData(item)\n\tend\nend",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }XÎ¤
 820f72137b2f4049be1b2129522f4361 abfbb4d6a57440cf8a60560ad8ab7c9c)ui://fb7a3b06-7026-4590-8efe-bb33416dd8f9"x-mod/ui2Ï£Å+
$fb7a3b06-7026-4590-8efe-bb33416dd8f9/ui/PopupGroupµ*{
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
        }"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent 
$e25e8e41-5cb9-4fae-8dc0-ea7dca85a91d/ui/PopupGroup/PopupBacký{
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent 
$aa954759-0e39-430f-85fa-80bf2e5fe31d#/ui/PopupGroup/PopupBack/PopupPanel{
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentú*
$3606e39d-32de-427e-8d23-b38af810a3b40/ui/PopupGroup/PopupBack/PopupPanel/PopupMessageÅ){
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
              "Text": "íì ë©ìì§",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "3606e39d-32de-427e-8d23-b38af810a3b4"
        }"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent6
$94a274e4-4111-40f1-924d-c95a3a1f14d5./ui/PopupGroup/PopupBack/PopupPanel/PopupBtnOKÉ4{
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
              "Text": "íì¸",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "94a274e4-4111-40f1-924d-c95a3a1f14d5"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent¯6
$0f5de49b-2adc-409a-816d-15aa43df8e0d2/ui/PopupGroup/PopupBack/PopupPanel/PopupBtnCancelß4{
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
              "Text": "ì·¨ì",
              "UseOutLine": false,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0f5de49b-2adc-409a-816d-15aa43df8e0d"
        }"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent 
$d57e4ae3-8b17-4cbf-bc44-e7c737743117-/ui/PopupGroup/PopupBack/PopupPanel/deco_line{
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
        }"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentXÜ
 13a62e7645f94f5c8a64c2f2953f5c64 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://92e2c2b9-e1e2-4b60-80ad-c9aa52ca28f2"x-mod/codeblock2ÐÍ{
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
        "DefaultValue": "0--ë§¤ì¹­ ì¤ì´ ìëëë¤",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "NONE"
      },
      {
        "Type": "number",
        "DefaultValue": "1--ë§¤ì¹­ ëê¸° ì¤ ìëë¤",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "WAIT"
      },
      {
        "Type": "number",
        "DefaultValue": "2--ë§¤ì¹­ëì´ ìµì¢ ëê¸° ì¤ìëë¤",
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
  }X
 de4ecc6c3f8c4f8db402951495219410 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://f8568724-e5be-45c0-bbac-26c8e56bb9ba"x-mod/codeblock2{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "f8568724-e5be-45c0-bbac-26c8e56bb9ba",
    "Language": 1,
    "Name": "StageManagerComponent",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-10T22:39:05.9973196+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "1",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ì¤íì´ì§ ë²í¸"
          }
        ],
        "Name": "stage"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ì¤íì´ì§ê° ì§íë ìê°"
          }
        ],
        "Name": "time"
      },
      {
        "Type": "number",
        "DefaultValue": "6",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ì¤íì´ì§ê° ì¢ë£ëë ìê°"
          }
        ],
        "Name": "maxTime"
      },
      {
        "Type": "Entity",
        "DefaultValue": "3fe2af94-3163-43e4-b27d-6dd5e99ab183",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "spawnManager"
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
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "self.time = self.time + delta\nif (self.time > self.maxTime) then\n\tself.time = 0\n\tself.stage = self.stage + 1\n\t\n\t--ëì¤ì ì£¼ì í´ì í´ì¼í¨\n\t--self.spawnManager.SpawnComponent:UpdateMobPool(self.stage)\n\t\n\t--ëë²ê·¸ì©\n\t--log(\"stage = \"..self.stage)\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X#
 0f9391e562964cbe9d38d9b7e11c8aa8 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://52b4adc9-d529-4494-b42e-7f39b054dce8"x-mod/codeblock2þ!û!{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "52b4adc9-d529-4494-b42e-7f39b054dce8",
    "Language": 1,
    "Name": "MonsterStat",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-10T23:22:31.1325204+09:00",
    "Properties": [
      {
        "Type": "Entity",
        "DefaultValue": "3fe2af94-3163-43e4-b27d-6dd5e99ab183",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "spawnManager"
      },
      {
        "Type": "number",
        "DefaultValue": "1",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ëª¬ì¤í°ì ì²´ë ¥"
          }
        ],
        "Name": "hp"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ëª¬ì¤í°ì ì´ëìë"
          }
        ],
        "Name": "spd"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ëª¬ì¤í°ì ë°ë¯¸ì§"
          }
        ],
        "Name": "dmg"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "exp"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "player"
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
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "if self.hp <= 0 then\n\tself.spawnManager.SpawnManagerComponent:DisableMob(self.Entity)\n\tself.player.PlayerStat:GetExp(self.exp)\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
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
            "Name": "img"
          },
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "hp"
          },
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "spd"
          },
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "dmg"
          },
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "exp"
          }
        ],
        "Code": "self.Entity.SpriteRendererComponent.SpriteRUID = img\nself.hp = hp\nself.spd = spd\nself.dmg = dmg\nself.exp = exp",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "SetMobStat"
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
        "Code": "self.player = _UserService.LocalPlayer",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      }
    ],
    "EntityEventHandlers": []
  }XÖ
 dcdd956ad900456ba0765c50f0b05237 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://eb5c815a-1b2e-426c-93d1-01fea48ef04f"x-mod/codeblock2ÊÇ{
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
  }Xß
 2bab9fdbc39c4915be6cf369c5eb447d abfbb4d6a57440cf8a60560ad8ab7c9c,directory://44ac4faf2e0f4cf0b6e4bb09fb9df4e6"x-mod/directory2×Ô{
    "entry_id": "directory://44ac4faf2e0f4cf0b6e4bb09fb9df4e6",
    "name": "Player",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://uimyinfo",
      "codeblock://6c69dde3-7d01-4b61-afae-bf08a332aeb1",
      "codeblock://ed4af853-1b82-45a0-8566-4c3a27227ed0"
    ]
  }X
 6b8aa9ad08704593a2073aabb0d957f4 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://14f96872-b8ef-4190-9b01-382650ba71a3"x-mod/codeblock2{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "14f96872-b8ef-4190-9b01-382650ba71a3",
    "Language": 1,
    "Name": "MonsterMove",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-10T22:49:06.568599+09:00",
    "Properties": [],
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
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "self:Chase()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
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
        "Code": "local player = _UserService.LocalPlayer\nlocal playerPos = player.TransformComponent.Position\nlocal monsterPos = self.Entity.TransformComponent.Position\nlocal deltaPos = playerPos - monsterPos\nlocal moveDelta = Vector3.Normalize(deltaPos) * self.Entity.MonsterStat.spd\n    \nself:Flip(deltaPos)\n\nself.Entity.KinematicbodyComponent.MoveVelocity = moveDelta:ToVector2()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "Chase"
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
            "Type": "Vector3",
            "DefaultValue": "Vector3(0,0,0)",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "deltaPos"
          }
        ],
        "Code": "if deltaPos.x > 0.1 then\n\tself.Entity.SpriteRendererComponent.FlipX = true\nelseif deltaPos.x < -0.1 then\n\tself.Entity.SpriteRendererComponent.FlipX = false\nend",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "Flip"
      }
    ],
    "EntityEventHandlers": []
  }XÒt
 60eec246ee3c4229b9bb50ee85e4fa70 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://caa729ed-65d4-4a47-afaf-4d532414154c"x-mod/codeblock2ÆsÃs{
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
        "DefaultValue": "2--ìµì ë§¤ì¹­ ì¸ì",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "minPlayerCnt"
      },
      {
        "Type": "number",
        "DefaultValue": "2--ìµë ë§¤ì¹­ ì¸ì",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "maxPlayerCnt"
      },
      {
        "Type": "number",
        "DefaultValue": "5--ë§¤ì¹­ ëê¸°íë ìê°",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "waitingDuration"
      },
      {
        "Type": "boolean",
        "DefaultValue": "true--ëêµ°ê°ë§¤ì¹­ì ì·¨ìíë©´ ëê¸°ìê°ì ì´ê¸°íí©ëë¤",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "resetDurationByCancel"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false--ì´ë²¤í¸ë§¤ì¹­ ì¬ì©ì¬ë¶ìëë¤",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isEventMatchType"
      },
      {
        "Type": "number",
        "DefaultValue": "10--ì´ë²¤í¸ë§¤ì¹­ì ì£¼ê¸°ìëë¤",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "eventMatchPeriod"
      },
      {
        "Type": "string",
        "DefaultValue": "\"%dì´í ê²ìì´ ììë©ëë¤\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "logMessage"
      },
      {
        "Type": "number",
        "DefaultValue": "1--ë°°ì ë§¤ì¹­ìëë¤(1:ê¸°ë³¸, 2ì¼ ê²½ì° ì§ì ë§¤ì¹­)",
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
        "Code": "local users = _UserService.UserEntities\nif users == nil or users.Count == 0 then\n\treturn\nend\nlocal readyCnt = 0\nlocal userTable = {}\n\nfor k,v in pairs(users) do\n\tlocal user = v.PlayerMatch\n\tif user ~=nil and user.isReady then\n\t\treadyCnt = readyCnt + 1\n\t\ttable.insert(userTable,user)\n\tend\nend\ntable.sort(userTable,function(a,b) return a.readyClickTime < b.readyClickTime  end)\n--ë§¤ì¹­ ìê°ì´ ê¸´ ì¬ëë¶í° ë§¤ì¹­ ìì\n\nself._T.instanceMapCnt = self._T.instanceMapCnt + 1\n\n\nlocal multiplePlayerCnt = math.floor(readyCnt/self.multipleMatching) * self.multipleMatching\nlocal maxPlayerCnt = math.min(self.maxPlayerCnt,multiplePlayerCnt)\n\nlocal instanceMap = _InstanceMapService:GetOrCreateInstanceMap(self._T.instanceMapCnt)\nlocal usersIds = {}\nlocal moveUserCnt = 0\nfor k,v in pairs(userTable) do\n\tlocal user = v\n\tif moveUserCnt < maxPlayerCnt then\n\t\ttable.insert(usersIds,v.Entity.PlayerComponent.UserId)\n\t\tmoveUserCnt = moveUserCnt + 1\n\telse\n\t\tbreak\n\tend\t\nend\ninstanceMap:MoveUsers(usersIds)",
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
  }X`
 143f64ff665d4b39854250a4ca0826cb abfbb4d6a57440cf8a60560ad8ab7c9cmodel://defaultplayer"x-mod/model2__{
    "Version": 1,
    "Name": "DefaultPlayer",
    "BaseModelId": "player",
    "Id": "defaultplayer",
    "Components": [
      "script.PlayerMatch",
      "script.PlayerStat",
      "script.RemoveKeyset"
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
        "TargetType": "MOD.Core.KinematicbodyComponent",
        "Name": "EnableShadow",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      }
    ],
    "EventLinks": [],
    "Children": []
  }XÂ3
 ae7c66acbc9c41879da8d5c26f897b33 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://ea15274c-a25b-422d-851e-39f932a26236"x-mod/codeblock2¶2³2{
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
  }X´
 97e92f338bc64ccc97ad0a806c84d6a3 abfbb4d6a57440cf8a60560ad8ab7c9c.tileset://2bbbb2c8-da34-47be-a1fe-5f5fff85d0bf"x-mod/tileset2¬©{
    "name": "Test) BnBTileSet",
    "id": "tileset://2bbbb2c8-da34-47be-a1fe-5f5fff85d0bf",
    "datas": [
      {
        "Id": "deaacea67c6842f283a0095f7300a7c0",
        "Name": "Block_blue",
        "IsCollidable": false
      },
      {
        "Id": "84b977ac6c3641a7b8c9d3aee52e46e3",
        "Name": "Block_red",
        "IsCollidable": false
      },
      {
        "Id": "04655dcd9d51457e9a94d541737fdce7",
        "Name": "Block_violet",
        "IsCollidable": false
      },
      {
        "Id": "a6105d5ac83441b58236c53e41d3b8ae",
        "Name": "Block_yel",
        "IsCollidable": false
      },
      {
        "Id": "d358bd59575341a7b2a660ae2946d4da",
        "Name": "Block01",
        "IsCollidable": false
      },
      {
        "Id": "fcea8d3bbb764ae7b7303c286ac2c2ca",
        "Name": "Block02",
        "IsCollidable": false
      },
      {
        "Id": "ff4b8d5794044d5cb838280b3fa06b8e",
        "Name": "Box01",
        "IsCollidable": false
      },
      {
        "Id": "b8f3fba7c7bf4fb38f09921826828fc4",
        "Name": "Box02",
        "IsCollidable": false
      },
      {
        "Id": "aff2e89394f04b6e9fbf7ef8ca444254",
        "Name": "Box03",
        "IsCollidable": false
      },
      {
        "Id": "214d3a20816b411db4dc9798862e8254",
        "Name": "Grass01",
        "IsCollidable": false
      },
      {
        "Id": "0a7eaededeec4ae590c9cb62eba11845",
        "Name": "Grass02",
        "IsCollidable": false
      },
      {
        "Id": "d9eb9d90080c44e586b864cb303c531f",
        "Name": "House_blue",
        "IsCollidable": false
      },
      {
        "Id": "fbb9b702748e42f3be2184048134ee5c",
        "Name": "House_red",
        "IsCollidable": false
      },
      {
        "Id": "51e763ad181948258981bb5d5c9d0219",
        "Name": "House_yel",
        "IsCollidable": false
      },
      {
        "Id": "90f830896d374d7083779c4aea5b7161",
        "Name": "Road01",
        "IsCollidable": false
      },
      {
        "Id": "c9a242be1c104a2cbb6fd3ff69b81c49",
        "Name": "Road01_1",
        "IsCollidable": false
      },
      {
        "Id": "18775b934bc446d19e80b8ab17f968a0",
        "Name": "Road01_2",
        "IsCollidable": false
      },
      {
        "Id": "95e41b97c98f48acb8a2a941c6f9fef3",
        "Name": "Road01_3",
        "IsCollidable": false
      },
      {
        "Id": "74e4a361a0754f32aef7a689fba9264b",
        "Name": "Road01_4",
        "IsCollidable": false
      },
      {
        "Id": "0e08e58ed76649d3817070fe0d1dd7e3",
        "Name": "Road01_5",
        "IsCollidable": false
      },
      {
        "Id": "79af6d46da7d42f39960eff618434f5b",
        "Name": "Road02",
        "IsCollidable": false
      },
      {
        "Id": "7a5e239842504461b97fe9fc6014263c",
        "Name": "Road02_1",
        "IsCollidable": false
      },
      {
        "Id": "039333edaeb045678732d4d8139fd5be",
        "Name": "Road02_2",
        "IsCollidable": false
      },
      {
        "Id": "e99543fc01484e3393b4b606624316a3",
        "Name": "Road02_3",
        "IsCollidable": false
      },
      {
        "Id": "5fd4a247c09745bcaf2719bac498a700",
        "Name": "Road02_4",
        "IsCollidable": false
      },
      {
        "Id": "2dcebd2250814419b724f5dd80942a37",
        "Name": "Road02_5",
        "IsCollidable": false
      },
      {
        "Id": "c5f4b66e866c4141aa018bee4b93c152",
        "Name": "Tree01",
        "IsCollidable": false
      },
      {
        "Id": "2450910d96e544f68cb81256bbc05993",
        "Name": "Tree02",
        "IsCollidable": false
      }
    ]
  }X­
 b65654b15fa84298a5e927912ed303c8 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://4a161ceece3c4809a69f127888e4200c"x-mod/directory2¥¢{
    "entry_id": "directory://4a161ceece3c4809a69f127888e4200c",
    "name": "Skill",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://c8117fa2-af1d-4160-9c83-c35bb721db11",
      "codeblock://7d8a033d-52f8-49dc-98b1-512853e8963b",
      "codeblock://13d3eaa8-64c4-443e-b2a2-7823bc88e684",
      "codeblock://c5111460-69b4-494a-b1b2-ea927655eff2",
      "userdataset://02da7d04-ce6b-483d-a837-e9c2ef78d9cf",
      "codeblock://a606b222-6a8f-45d4-8598-12154f492ef9"
    ]
  }X£	
 4a96fe95e742440faaac560bba95097c abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://7d8a033d-52f8-49dc-98b1-512853e8963b"x-mod/codeblock2{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "7d8a033d-52f8-49dc-98b1-512853e8963b",
    "Language": 1,
    "Name": "InvenComponent",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-10T22:51:13.170537+09:00",
    "Properties": [
      {
        "Type": "table",
        "DefaultValue": "{}",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "skillTable"
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
        "Code": "--ëë²ê·¸ì©\nself.skillTable = {\n\t{idx = 1, cool = 3, time = 0}\n}",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      }
    ],
    "EntityEventHandlers": []
  }XÁ
 0bc129b752864774ba68cd88f832e851 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://a3e82b889ce743d5a8a638476e4df775"x-mod/directory2¹¶{
    "entry_id": "directory://a3e82b889ce743d5a8a638476e4df775",
    "name": "UILogic",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://15873444-8d16-4d28-9091-9c623fda5224",
      "codeblock://63fe07f0-2bcd-462c-8157-d6031e053b5e"
    ]
  }XÁ
 71097ffcc3394b63b082500b54e6d756 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://84ac42a1506c4f22966dc46df99a6ccc"x-mod/directory2¹¶{
    "entry_id": "directory://84ac42a1506c4f22966dc46df99a6ccc",
    "name": "MatchUI",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://eb5c815a-1b2e-426c-93d1-01fea48ef04f",
      "codeblock://a6a84505-c476-4922-9ded-27dfc90ba387"
    ]
  }Xµ
 5b0d7a629eaa4d2c97f2a8a880572e38 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://dc418164d6174e0198a4e445ab17cc64"x-mod/directory2­ª{
    "entry_id": "directory://dc418164d6174e0198a4e445ab17cc64",
    "name": "Spawn",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://86ac2cb2-d5d6-43cd-9c9b-f80a78e5162f",
      "codeblock://f8568724-e5be-45c0-bbac-26c8e56bb9ba",
      "codeblock://52b4adc9-d529-4494-b42e-7f39b054dce8",
      "codeblock://14f96872-b8ef-4190-9b01-382650ba71a3"
    ]
  }XÓX
 ad09e04b69cf4c2bb97411fb52b9a28b abfbb4d6a57440cf8a60560ad8ab7c9c)ui://0bc398f9-29cb-4d89-a78d-f24742b117e8"x-mod/ui2ÕW+
$0bc398f9-29cb-4d89-a78d-f24742b117e8/ui/ToastGroup*{
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
        }"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent°,
$7af9e538-1713-49f7-a83e-711c0f4b4a3c/ui/ToastGroup/Toast_messageñ*{
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
        }"vMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent,MOD.Core.CanvasGroupComponentX¯
 3efe3ce827f54e238c912016a262e835 abfbb4d6a57440cf8a60560ad8ab7c9ccollisiongroupset://unique"x-mod/collisiongroupset2±®{
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
  }XñU
 b8edc91185bc46b4a52846b8091ed073 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://86ac2cb2-d5d6-43cd-9c9b-f80a78e5162f"x-mod/codeblock2åTâT{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "86ac2cb2-d5d6-43cd-9c9b-f80a78e5162f",
    "Language": 1,
    "Name": "SpawnManagerComponent",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-10T22:47:43.2157277+09:00",
    "Properties": [
      {
        "Type": "string",
        "DefaultValue": "\"model://fe3c2e36-4076-43f5-a32a-aa4a419c170f\"",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "Monster ëª¨ë¸ì id"
          }
        ],
        "Name": "monsterModel"
      },
      {
        "Type": "Entity",
        "DefaultValue": "56e67aca-7da1-4894-9d38-bc360732e322",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ëª¬ì¤í°ê° ì¤í°ë  ë§µ"
          }
        ],
        "Name": "map"
      },
      {
        "Type": "Entity",
        "DefaultValue": "3e5d2f30-b08d-4caf-bc58-0403170bbba3",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "stageManager"
      },
      {
        "Type": "table",
        "DefaultValue": "{}",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ëª¬ì¤í°ì ì´ë¯¸ì§, hp, ë°ë¯¸ì§ ë± ëª¬ì¤í°ì ì ë³´ë¥¼ ê´ë¦¬íë íì´ë¸"
          }
        ],
        "Name": "mobInfo"
      },
      {
        "Type": "table",
        "DefaultValue": "{}",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ê° ì¤íì´ì§ì ë°ë¥¸ ëª¬ì¤í°ì ì¡°í©ì ì ì¥íë íì´ë¸"
          }
        ],
        "Name": "mobComp"
      },
      {
        "Type": "table",
        "DefaultValue": "{}",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ìíë  ëª¬ì¤í°ê° ì ì¥ë íì´ë¸"
          }
        ],
        "Name": "mobPool"
      },
      {
        "Type": "table",
        "DefaultValue": "{}",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "ëª¬ì¤í°ê° ì¤í°ë  Vector3 ê´ë¦¬ì© íì´ë¸"
          }
        ],
        "Name": "posTable"
      },
      {
        "Type": "array",
        "DefaultValue": "Entity",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "(ì¤ë¸ì í¸ íë§) ë¹íì±íë Monster ê´ë¦¬ì© íì´ë¸"
          }
        ],
        "Name": "objects"
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
        "Code": "self:SetMobInfo()\nself:SetMobComp()\nself:SetPosTable()\nself._T.posIdx = 0 --pos íì´ë¸ ì¸ë±ì¤ ì ì¥ì©\n\n--ëë²ê·¸ì©\nself:UpdateMobPool(1)\nself._T.mobIdx = 1",
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
        "Code": "self:ManageMobPool()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
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
        "Code": "--ììì ê°, ìì  íì\nself.mobInfo = {\n\t{idx = 1, img = \"0b2d276b59754f46a9f7009a53e7fb89\", hp = 5, spd = 0.3, dmg = 6, exp = 2},\n\t{idx = 2, img = \"000931d9164248eaadacc497b30978ee\", hp = 10, spd = 0.7, dmg = 7, exp = 3}\n}",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "SetMobInfo"
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
        "Code": "--ììì ê°, ìì  íì\nself.mobComp = {\n\t{stg = 1, {idx = 1, cnt = 12}, {idx = 2, cnt = 6}},\n\t{stg = 2, {idx = 2, cnt = 3}, {idx = 3, cnt = 4}}\n}",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "SetMobComp"
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
        "Code": "--ì¤í°ë  ì¥ìë¤\n--ììì ê°, ìì  íì\nself.posTable = {\n\tVector3(0,0,0), Vector3(5,0,0), Vector3(0,5,0), Vector3(5,5,0)\n}",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "SetPosTable"
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
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "stage"
          }
        ],
        "Code": "--MobPoolì ì¤íì´ì§ì ë°ë¼ ê°±ì íë ë©ìë\n--ê° ì¤íì´ì§ê° ììë  ëë§ë¤ StageManagerìì í¸ì¶ë¨\nself.mobPool = {}\n\nfor i = 1, #self.mobComp[stage] do\n\ttable.insert(self.mobPool, self.mobComp[stage][i])\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "UpdateMobPool"
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
        "Code": "--mobPoolì ìë ëª¬ì¤í°ë¤ì ìíë²ìë¥¼ ìê°ì ë°ë¼ ê´ë¦¬íë ë©ìë\nlocal sc = self.stageManager.StageManagerComponent\n\nfor i = 1, #self.mobPool do\n\tlocal target = self.mobPool[i] --ìíí  ëª¬ì¤í°(idx, cnt)\n\tlocal num = math.floor(target.cnt / (sc.maxTime - sc.time)) --ìíí  ëª¬ì¤í°ì ì\n\ttarget.cnt = target.cnt - num\n\t\n\tfor j = 1, num do\n\t\tself:SpawnMob(target.idx)\n\tend\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "ManageMobPool"
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
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "idx"
          }
        ],
        "Code": "--ëª¬ì¤í°ë¥¼ ìííë ë©ìë\nlocal mob = self:GetPooledMob()\nself:SetMobStat(mob, idx)\nmob.Enable = true ",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "SpawnMob"
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
            "DefaultValue": "nil",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "mob"
          },
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "idx"
          }
        ],
        "Code": "--ëª¬ì¤í°ì ì´ë¯¸ì§, hp ë± íë¡í¼í°ë¥¼ ì¤ì í´ì£¼ë ë©ìë\nlocal mi = self.mobInfo[idx]\n\nmob.MonsterStat:SetMobStat(mi.img, mi.hp, mi.spd, mi.dmg, mi.exp)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "SetMobStat"
      },
      {
        "Return": {
          "Type": "Entity",
          "DefaultValue": "nil",
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "--(ì¤ë¸ì í¸ íë§) Monster ìí°í°ë¥¼ ë°ííë ë©ìë\nif #self.objects >= 1 then\n\tlocal mob = self.objects[1]\n\ttable.remove(self.objects, 1)\n\treturn mob\nend\n\nreturn self:CreateNewMob()",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "GetPooledMob"
      },
      {
        "Return": {
          "Type": "Entity",
          "DefaultValue": "nil",
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "--Monster ìí°í°ë¥¼ ìì±íë ë©ìë\nself._T.posIdx = self._T.posIdx + 1\nif (self._T.posIdx > #self.posTable) then self._T.posIdx = 1 end\nlocal pos = self.posTable[self._T.posIdx]\n\nlocal mob = _SpawnService:SpawnByModelId(self.monsterModel, \"Monster\"..self._T.mobIdx, pos, self.map)\nself._T.mobIdx = self._T.mobIdx + 1\n\nreturn mob",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "CreateNewMob"
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
            "DefaultValue": "nil",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "mob"
          }
        ],
        "Code": "--Monster ìí°í°ë¥¼ ë¹íì±ííë ë©ìë\nmob.Enable = false\ntable.insert(self.objects, mob)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "DisableMob"
      }
    ],
    "EntityEventHandlers": []
  }XâÈ
 111f891e2bda4d28b7d0d61c95bcb684 abfbb4d6a57440cf8a60560ad8ab7c9cmap://lobby"	x-mod/map2È²
$f12d5e61-5b5d-4218-84f7-c223231a8f9a/maps/Lobby¦±{
          "name": "Lobby",
          "path": "/maps/Lobby",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 13,
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
                    "Length": 0.9,
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
                      "x": -1.34999979,
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
                      "x": 2.24999976,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 3.14999986,
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
                      "x": 4.95,
                      "y": -3.0400002
                    },
                    "EndPoint": {
                      "x": 5.84999943,
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
        }"0MOD.Core.MapComponent,MOD.Core.FootholdComponent©
$6db5fe0c-c264-4156-9701-4caa1930daa6/maps/Lobby/BackgroundÊ{
          "name": "Background",
          "path": "/maps/Lobby/Background",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 1,
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
        }"MOD.Core.BackgroundComponent²
$523a420a-144a-4dcd-aaba-2f73681a83be/maps/Lobby/MapleMapLayerÒ{
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
              "Thumbnail": "iVBORw0KGgoAAAANSUhEUgAAAMgAAABkCAYAAADDhn8LAAADFElEQVR4Ae3cS0hUURgA4Ds2lYqMFqW4tKISJihok0SLKXDRKiJoVUJBYLmswNb2ol2PRbVw01IiohZBLYKyBxRlEbQohIhxEVkbM6PTTCGMefEBcge8393MnP+cuT/nO/fnX92JIhcBAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAYBaBzCzzphMS6O5/+On7s1tPM6Urf/jsnpNbss4mIfuZ0jiEmXQSmssuq900MT72uuf0lcHJlOOr1rVeO9LZNjn2WR2BmuqklbVS4My9908qi+Pb54/F9RvamyvX+F4dAQVSHfcpWYcf3X41JVAajA6/K/4fM05eQIEkbz4t46VTRzvKwYu93duiTE1maX1DXd/BzrXTFgokLqBAEiePT7hyfOTLgWPHb0bhd6hvWt0Yv0o0aYFs0gnlixXI5HK5+sblLXXlDlJ8M/g2dpVg4gI6SOLksQnDkl09hb8zpQ7S0r51Y+wqQQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQILIhDK19eJEBbkbm6yqAVS9076wIPH0eivf2eaX5NXJIv68ba5eQs0r2gttY8XIby8Hrp2H1Ig8xZM1w9S10F+ToxFXSfORdHmvVFbRy5dp223BOYgEMae3whhaKDcPXSQOYCleUnqOsiHofvR/gt3orsjP8rn7t/t0/z023u8QH/vvlDb0BSuXj6vg8QTiaZcIBR2bA+FnQUFkvIHwfYJECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECCQGoE/waBvz9B9qiUAAAAASUVORK5CYII=",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "523a420a-144a-4dcd-aaba-2f73681a83be"
        }"MOD.Core.MapLayerComponentØC
$59520641-c139-4edd-8d6c-e04ae2346dd1/maps/Lobby/TileMapãB{
          "name": "TileMap",
          "path": "/maps/Lobby/TileMap",
          "nameEditable": false,
          "enable": true,
          "visible": false,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 1,
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
        }"5MOD.Core.TransformComponent,MOD.Core.TileMapComponentÒ
$0cbe81d0-177a-4ad0-a673-97188314e814/maps/Lobby/SpawnLocation°{
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
        }"\MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.SpawnLocationComponent×'
$2a75631c-48d8-40c6-8cce-82ec50326eae/maps/Lobby/NPCTuto%{
          "name": "NPCTuto",
          "path": "/maps/Lobby/NPCTuto",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 12,
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
              "ArrowChatEnabled": true,
              "AutoShowEnabled": true,
              "BalloonScale": 1.2,
              "ChatBalloonRUID": {
                "DataId": "7b6bd117bd0446a5bacec8ea6831c997"
              },
              "ChatModeEnabled": false,
              "FontSize": 1.2,
              "Message": "ì ë¥¼ ëë¬<br>íí ë¦¬ì¼ì<br>íì¸í´ë³´ì¸ì.",
              "ShowDuration": 999.0,
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
              "FontSize": 1.5,
              "Name": "íí ë¦¬ì¼",
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
        }"øMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.RigidbodyComponent,MOD.Core.StateComponent,MOD.Core.ChatBalloonComponent,MOD.Core.StateAnimationComponent,MOD.Core.NameTagComponent,MOD.Core.TouchReceiveComponent,script.ChatTutoX
 c7f3eaf770ab4e93951656285eef918b abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://6c69dde3-7d01-4b61-afae-bf08a332aeb1"x-mod/codeblock2{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "6c69dde3-7d01-4b61-afae-bf08a332aeb1",
    "Language": 1,
    "Name": "PlayerStat",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-06T00:05:18.8574331+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "100",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "íë ì´ì´ì ì²´ë ¥"
          }
        ],
        "Name": "hp"
      },
      {
        "Type": "number",
        "DefaultValue": "100",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "íë ì´ì´ì ìµë ì²´ë ¥"
          }
        ],
        "Name": "maxHp"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "íë ì´ì´ì ê²½íì¹"
          }
        ],
        "Name": "exp"
      },
      {
        "Type": "number",
        "DefaultValue": "30",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "íë ì´ì´ê° ë ë²¨ìí  ë íìí ê²½íì¹ì ì"
          }
        ],
        "Name": "maxExp"
      },
      {
        "Type": "number",
        "DefaultValue": "1",
        "SyncDirection": 0,
        "Attributes": [
          {
            "$type": "MOD.Core.Script.DescScriptAttribute, MOD.Core",
            "Value": "íë ì´ì´ì ë ë²¨"
          }
        ],
        "Name": "level"
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
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "exp"
          }
        ],
        "Code": "self.exp = self.exp + exp\nif self.exp >= self.maxExp then\n\tself.exp = self.exp - self.maxExp\n\tself:LevelUp()\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "GetExp"
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
        "Code": "self.level = self.level + 1\n--ììì ìì¹, ìì  íì\nself.maxExp = 20 + self.level * 10",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "LevelUp"
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
        "Code": "--ëë²ê·¸ì©\n--self:GetExp(1)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X
 2e3464f6143144aa8b8c0a560521dfaf abfbb4d6a57440cf8a60560ad8ab7c9c,directory://97623be180cb46978d313c00be418e4b"x-mod/directory2{
    "entry_id": "directory://97623be180cb46978d313c00be418e4b",
    "name": "Scripts",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "directory://8109ae503e574a0dbdf6049283047736",
      "directory://44ac4faf2e0f4cf0b6e4bb09fb9df4e6",
      "directory://a3e82b889ce743d5a8a638476e4df775",
      "directory://a679e5cc370f474db8b4f9424ada65a5",
      "directory://dc418164d6174e0198a4e445ab17cc64",
      "directory://4a161ceece3c4809a69f127888e4200c"
    ]
  }X¸
 9674c4c138a047ecb730b262fc7df6dc abfbb4d6a57440cf8a60560ad8ab7c9c,directory://1141e7913b944a48887c8c68b34e8bf7"x-mod/directory2°­{
    "entry_id": "directory://1141e7913b944a48887c8c68b34e8bf7",
    "name": "Models",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "directory://a38364aa28e54a98b22d0cbe4c9a0b90",
      "directory://7b8e809024794644bab1f9f3bff86633"
    ]
  }Xö
 87769a3e935b47589ad12473938c9236 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://41520014-042e-4c73-9bcf-0f79ac0dc769"x-mod/codeblock2êç{
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
  }X¯
 0d001ed00ec0421f94bfc8e4635429e4 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://c8117fa2-af1d-4160-9c83-c35bb721db11"x-mod/codeblock2£ {
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "c8117fa2-af1d-4160-9c83-c35bb721db11",
    "Language": 1,
    "Name": "SkillManagerComponent",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-10T22:54:02.3317971+09:00",
    "Properties": [
      {
        "Type": "Entity",
        "DefaultValue": "9301a6cb-d8fc-46e7-9732-fcc0ff1a6b1d",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "inven"
      },
      {
        "Type": "Entity",
        "DefaultValue": "56e67aca-7da1-4894-9d38-bc360732e322",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "map"
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
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "--ì¤í¬ì ê´ë¦¬íë ë©ìë\nlocal ic = self.inven.InvenComponent\n\nfor i = 1, #ic.skillTable do\n    local skill = ic.skillTable[i] --ì¤í¬(idx,time,cool)\n    skill.time = skill.time + delta\n    if skill.time >= skill.cool then\n        skill.time = 0\n        self:UseSkill(skill.idx)\n    end\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "ManageSkill"
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
        "Code": "self:ManageSkill(delta)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
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
            "Name": "idx"
          }
        ],
        "Code": "--ì¤í¬ ëª¨ë¸ì ìííë ë©ìë\n--ììì ê°, ìì  íì\nlocal model = \"model://2b6341f4-850d-4c93-b056-edf632c46523\"\nlocal pos = Vector3(0,0,0)\nlocal skill = _SpawnService:SpawnByModelId(model, \"SkillTest\", pos, self.map)\nself:SetSkillStat(skill, idx)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "UseSkill"
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
            "DefaultValue": "nil",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "skill"
          },
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "idx"
          }
        ],
        "Code": "--ì¤í¬ì ë°ë¯¸ì§ ë± íë¡í¼í°ë¥¼ ì í´ì£¼ë ë©ìë",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "SetSkillStat"
      }
    ],
    "EntityEventHandlers": []
  }X«
 717320e4e5244f40b25714f9eeee4dd1 abfbb4d6a57440cf8a60560ad8ab7c9ccodeblock://uimyinfo"x-mod/codeblock2»¸{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "<ì¬ê¸°ì ì¤ëªì ì¶ê°í©ëë¤>",
    "Id": "UIMyInfo",
    "Language": 1,
    "Name": "UIStatus",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-11T18:19:49.07051+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "maxWidth"
      },
      {
        "Type": "Component",
        "DefaultValue": "360231da-8523-43f4-a391-f1f09462c68e:TextComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "nameText"
      },
      {
        "Type": "Component",
        "DefaultValue": "88878895-33e2-4172-a833-90bc1e794c22:UITransformComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "hpBar"
      },
      {
        "Type": "Component",
        "DefaultValue": "7fe4b488-c4be-4766-8c6d-1ca70dd8ad6b:TextComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "hpText"
      },
      {
        "Type": "Component",
        "DefaultValue": "247f7ccc-6903-4a77-903f-e2cb6284866b:UITransformComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "expBar"
      },
      {
        "Type": "Component",
        "DefaultValue": "38574dc5-f0fd-45a0-869b-98fd16c58e0f:TextComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "expText"
      },
      {
        "Type": "Component",
        "DefaultValue": "645cdc71-bac9-4894-8e00-87d87e6762a2:TextComponent",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "levelText"
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
        "Code": "self.nameText.Text = _UserService.LocalPlayer.PlayerComponent.Nickname\nself.maxWidth = self.hpBar.RectSize.x",
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
        "Code": "local hp = _UserService.LocalPlayer.PlayerStat.hp\nlocal maxHp = _UserService.LocalPlayer.PlayerStat.maxHp\nself.hpBar.RectSize = Vector2(hp / maxHp * self.maxWidth,self.hpBar.RectSize.y)\nself.hpText.Text = string.format(\"%d / %d\", hp,maxHp)\n\t\nlocal exp = _UserService.LocalPlayer.PlayerStat.exp\nlocal maxExp = _UserService.LocalPlayer.PlayerStat.maxExp\nself.expBar.RectSize = Vector2(exp/maxExp*self.maxWidth,self.expBar.RectSize.y)\nself.expText.Text = string.format(\"%d / %d\", exp,maxExp)\n\nlocal level = _UserService.LocalPlayer.PlayerStat.level\nself.levelText.Text = string.format(\"LV.%d\",level)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X
 dca4aefc4d5f4e54816718a673e87751 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://a894d5a796df419e9bf8fce792708135"x-mod/directory2üù{
    "entry_id": "directory://a894d5a796df419e9bf8fce792708135",
    "name": "RootDesk",
    "lock": false,
    "folding": false,
    "nameEditable": false,
    "child_list": [
      "directory://6c3452b46fea4691a7c068b1ac7166d1"
    ]
  }XÞ
 74a4a66c04774e88be2288ff33b53781 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://fd2ce09f-69d3-4c5d-8b15-a6b153f9bd26"x-mod/codeblock2ÒÏ{
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
  }X¸
 e136691a5dca4612a77280cd16907065 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://7b8e809024794644bab1f9f3bff86633"x-mod/directory2°­{
    "entry_id": "directory://7b8e809024794644bab1f9f3bff86633",
    "name": "Skills",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "model://0f452342-60e4-4c42-b7aa-0d4c5219a920",
      "model://2b6341f4-850d-4c93-b056-edf632c46523"
    ]
  }XÅ

 98ccf9f093744683ac28a9fa2618bf3c abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://663a3395-5ec2-4420-8d9b-e75c1a9819f8"x-mod/codeblock2¹	¶	{
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
  }X¯)
 8a9431bacbd14ccc8c6803558c62dc2b abfbb4d6a57440cf8a60560ad8ab7c9c,model://fe3c2e36-4076-43f5-a32a-aa4a419c170f"x-mod/model2«(¨({
    "Version": 1,
    "Name": "Monster",
    "BaseModelId": null,
    "Id": "fe3c2e36-4076-43f5-a32a-aa4a419c170f",
    "Components": [
      "MOD.Core.SpriteRendererComponent",
      "MOD.Core.TransformComponent",
      "script.MonsterMove",
      "MOD.Core.KinematicbodyComponent",
      "script.MonsterStat",
      "MOD.Core.TriggerComponent"
    ],
    "Properties": [],
    "Values": [
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "ActionSheet",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": {
          "$type": "System.Collections.Generic.Dictionary`2[[System.String, mscorlib],[System.String, mscorlib]], mscorlib"
        }
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "EndFrameIndex",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 2147483647
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "RenderSetting",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.RenderSettingType, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": 0
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "StartFrameIndex",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 0
      },
      {
        "TargetType": "MOD.Core.SpriteRendererComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "Rotation",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector3, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector3, MOD.Core",
          "x": 0.0,
          "y": 0.0,
          "z": 0.0
        }
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "Position",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector3, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector3, MOD.Core",
          "x": 0.0,
          "y": 0.0,
          "z": 0.0
        }
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "QuaternionRotation",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODQuaternion, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODQuaternion, MOD.Core",
          "x": 0.0,
          "y": 0.0,
          "z": 0.0,
          "w": 1.0
        }
      },
      {
        "TargetType": "MOD.Core.TransformComponent",
        "Name": "Enable",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": true
      },
      {
        "TargetType": "MOD.Core.KinematicbodyComponent",
        "Name": "EnableShadow",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      },
      {
        "TargetType": "MOD.Core.TriggerComponent",
        "Name": "ColliderOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 1.0,
          "y": 1.0
        }
      },
      {
        "TargetType": "MOD.Core.TriggerComponent",
        "Name": "BoxSize",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 1.0,
          "y": 1.0
        }
      }
    ],
    "EventLinks": [],
    "Children": []
  }X
 090ba3321b6d47c08f9aa92c137b2465 abfbb4d6a57440cf8a60560ad8ab7c9c1logic://mod.core.logic.defaultuserenterleavelogic"x-mod/logic2}{
    "Name": "defaultuserenterleavelogic",
    "PlayerUri": "model://defaultplayer",
    "StartPoint": "/maps/Lobby"
  }X
 29276619118b4774819bb4b1143bf293 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://a38364aa28e54a98b22d0cbe4c9a0b90"x-mod/directory2ú÷{
    "entry_id": "directory://a38364aa28e54a98b22d0cbe4c9a0b90",
    "name": "Monster",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "model://fe3c2e36-4076-43f5-a32a-aa4a419c170f"
    ]
  }X
 4a61c60cd33a49abbbb55f69b9d74093 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://a606b222-6a8f-45d4-8598-12154f492ef9"x-mod/codeblock2{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "a606b222-6a8f-45d4-8598-12154f492ef9",
    "Language": 1,
    "Name": "UILevelUp",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-11T19:17:21.9197025+09:00",
    "Properties": [
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "skillDataName"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "skillData"
      },
      {
        "Type": "array",
        "DefaultValue": "Entity",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "skills"
      },
      {
        "Type": "array",
        "DefaultValue": "number",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "skillIdx"
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
        "Code": "self.skillData = _DataService:GetTable(self.skillDataName)\n\nlocal path = self.Entity.Path\nfor i = 1, 3 do\n\tself.skills[i] = _EntityService:GetEntityByPath(path..\"/skill_\"..i)\n\t\n\t--ëë²ê·¸ì©, ìëë ëë¤ì¼ë¡ ì¤ì ëì´ì¼ í¨\n\tself.skillIdx[i] = i\nend\n\nfor i = 1, 3 do\n\tself:UpdateUI(i, self.skillIdx[i])\nend",
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
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "idx"
          },
          {
            "Type": "number",
            "DefaultValue": "0",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "skillIdx"
          }
        ],
        "Code": "\nself.skills[idx].Children[1].SpriteGUIRendererComponent.ImageRUID = self.skillData:GetCell(self.skillIdx[skillIdx], \"img\")\n\nlocal name = self.skillData:GetCell(self.skillIdx[skillIdx], \"name\")..\"\\n(LV. 0 â 1)\"\nself.skills[idx].Children[2].TextComponent.Text = name\n\nlocal script = \"\\n\"..self.skillData:GetCell(self.skillIdx[skillIdx], \"script\")\nself.skills[idx].Children[3].TextComponent.Text = script",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "UpdateUI"
      }
    ],
    "EntityEventHandlers": []
  }X°
 dff75ef055b245348ad37c323d9cc937 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://c5111460-69b4-494a-b1b2-ea927655eff2"x-mod/codeblock2¤¡{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "c5111460-69b4-494a-b1b2-ea927655eff2",
    "Language": 1,
    "Name": "SkillComponent",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-10T23:22:42.1553118+09:00",
    "Properties": [
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "player"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "NewValue1"
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
        "Code": "self._T.time = 0\nself.player = _UserService.LocalPlayer",
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
        "Code": "self.Entity.TransformComponent.Position = self.player.TransformComponent.Position\n\n--ëë²ê·¸ì©\nself._T.time = self._T.time + delta\nif (self._T.time > 0.65) then _EntityService:Destroy(self.Entity) end",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleTriggerEnterEvent",
        "EventName": "TriggerEnterEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal mob = event.TriggerBodyEntity\n--------------------------------------------------------\n--ëë²ê·¸ì©\nif mob.Model.Name ~= \"Monster\" then return end\nmob.MonsterStat.hp = 0",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }XÒ
 de911ee07c2343fe9ff1776a2fdf06db abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://01029633-48dc-49f3-aebd-c9302db794e1"x-mod/codeblock2ÆÃ{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "<ì¬ê¸°ì ì¤ëªì ì¶ê°í©ëë¤>",
    "Id": "01029633-48dc-49f3-aebd-c9302db794e1",
    "Language": 1,
    "Name": "UIMyInfo",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-11T19:03:37.5690372+09:00",
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
        "Code": "local currentPath = self.Entity.Path\n\nlocal nameText = _EntityService:GetEntityByPath(currentPath .. \"/info_top/text_name\")\nnameText.TextComponent.Text = _UserService.LocalPlayer.PlayerComponent.Nickname\nself.hpText = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Hp/text_value\").TextComponent\n\nself.hpBar = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Hp/img_bar\").UITransformComponent\nself.maxWidth = self.hpBar.RectSize.x\n",
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
        "Code": "if self.hpBar ~= nil then\n\tlocal hp = _UserService.LocalPlayer.PlayerComponent.Hp\n\tlocal maxhp = _UserService.LocalPlayer.PlayerComponent.MaxHp\n\tself.hpBar.RectSize = Vector2(hp / maxhp * self.maxWidth,self.hpBar.RectSize.y)\n\tself.hpText.Text = string.format(\"%d / %d\", hp,maxhp)\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X !
 8a7c5a5b15dc436b88940a82d55bb4b3 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://63fe07f0-2bcd-462c-8157-d6031e053b5e"x-mod/codeblock2  {
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
  }X

 ba2f408ac38d4d13b38dd67a1c4ddf77 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://ed4af853-1b82-45a0-8566-4c3a27227ed0"x-mod/codeblock2÷ô{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "ed4af853-1b82-45a0-8566-4c3a27227ed0",
    "Language": 1,
    "Name": "RemoveKeyset",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-05T15:39:21.705501+09:00",
    "Properties": [],
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
        "Code": "--ë°©í¥í¤ë¥¼ ì ì¸íê³  ëª¨ë  í¤í ë¹ì ì ê±°\nlocal pcc = self.Entity.PlayerControllerComponent\nfor i, v in pairs(KeyboardKey) do\n\tif i ~=\"UpArrow\" and i ~=\"DownArrow\" and i ~=\"LeftArrow\" and i ~=\"RightArrow\"\n\tand i ~= \"UnderlyingSystemType\" and i ~= \"__CastFrom\"\tthen\n\t\tpcc:RemoveActionKey(v)\n\tend\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      }
    ],
    "EntityEventHandlers": []
  }X¦
 941c956759b34e88a8f2e21234b24235 abfbb4d6a57440cf8a60560ad8ab7c9c2userdataset://60c6dcae-e767-490d-9048-ed8e0cc6ec23"x-mod/userdataset2

{
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
        "text": "ìëíì¸ì.\\në©ì´í ìë°ì´ë²ì ì¤ì  ê²ì íìí©ëë¤.",
        "name": "ì´ìì"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "í¤ë³´ë ë°©í¥í¤ë¥¼ ëë¬ 4ë°©í¥ì¼ë¡ ì´ëí  ì ììµëë¤.\\nëª¨ë°ì¼ íê²½ììë ì¡°ì´ì¤í±ì¼ë¡ ì´ëí  ì ììµëë¤.",
        "name": "ì´ìì"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "ì ì ê³µê²©ì í¼íê³ , ìëì¼ë¡ ë°ëëë ì¤í¬ë¡ ì ì ë¬´ì°ë¥´ì¸ì.",
        "name": "ì´ìì"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "ì ì ì²ì¹íë©´ ê²½íì¹ë¥¼ ì»ê³ , ë ë²¨ìíë©´ ì¸ ê°ì ì¤í¬ ì¤ íëë¥¼ ì íí´ ê°íí  ì ììµëë¤.",
        "name": "ì´ìì"
      },
      {
        "portrait": "ebde8add38854cf6953883471da15833",
        "text": "ê·¸ë¼ íì´ì ë¹ëë¤.",
        "name": "ì´ìì"
      }
    ]
  }Xü
 89c3368778114c40945f8f6c92cb6a3d abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://4e05f369-c76c-417d-b9fc-bd8d20bd4a34"x-mod/codeblock2ðí{
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
  }X¶
 8b3b1023f4b94510ac33e587e035114c abfbb4d6a57440cf8a60560ad8ab7c9c,directory://a679e5cc370f474db8b4f9424ada65a5"x-mod/directory2®«{
    "entry_id": "directory://a679e5cc370f474db8b4f9424ada65a5",
    "name": "Chat",
    "lock": false,
    "folding": false,
    "nameEditable": true,
    "child_list": [
      "codeblock://663a3395-5ec2-4420-8d9b-e75c1a9819f8",
      "codeblock://ea15274c-a25b-422d-851e-39f932a26236",
      "userdataset://60c6dcae-e767-490d-9048-ed8e0cc6ec23",
      "codeblock://01029633-48dc-49f3-aebd-c9302db794e1"
    ]
  }XÆ
 b26fa18045e8405b8e87b119326e600c abfbb4d6a57440cf8a60560ad8ab7c9c,gamelogic://5c7506f1cd94470e9467bfdc27c511bc"x-mod/gamelogic2¾¹
$15c6da50-194c-4d0b-8a75-88b7a1d12611/common{
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
        }Xæ	
 431d02ba2b11440a9098a9aa4f4be10a abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://1223e51b-ce37-473d-af8a-40121f69ffa0"x-mod/codeblock2Ú×{
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
  }XÅd
 e00973d1a7044b6eab8ba7f4f1ed1a59 abfbb4d6a57440cf8a60560ad8ab7c9cmodel://player"x-mod/model2ßcÜc{
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
      "MOD.Core.AvatarStateAnimationComponent",
      "MOD.Core.PlayerComponent"
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
    "Values": [
      {
        "TargetType": "MOD.Core.PlayerComponent",
        "Name": "PVPMode",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": false
      }
    ],
    "EventLinks": [],
    "Children": []
  }Xî
 370ef9b8a73e4eab8712600cb551cc65 abfbb4d6a57440cf8a60560ad8ab7c9c,directory://8109ae503e574a0dbdf6049283047736"x-mod/directory2æã{
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
  }X9
 e4c85430168d42188c3707c9b3bc4770 abfbb4d6a57440cf8a60560ad8ab7c9c0codeblock://a6a84505-c476-4922-9ded-27dfc90ba387"x-mod/codeblock2ù7ö7{
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
        "Code": "if _InstanceMapService:IsInstance() then\n\tself.Entity.Enable = false\n\treturn\nend\n\nself._T.textMatchInfoText = self.textMatchInfo.Text\nself._T.textWaitInfoText = self.textWaitInfo.Text\nlocal textMatchInfo = \"\"\nif _MatchLogic.minPlayerCnt == _MatchLogic.maxPlayerCnt then\n\tif _MatchLogic.minPlayerCnt > 0 then\n\t\ttextMatchInfo = string.format(\"(%dì¸)\", _MatchLogic.minPlayerCnt)\n\tend\nelse\n\ttextMatchInfo = string.format(\"(%d ~ %dì¸)\", _MatchLogic.minPlayerCnt,_MatchLogic.maxPlayerCnt)\nend\nself.textMatchInfo.Text = string.format(self._T.textMatchInfoText,textMatchInfo)\nself._T.IsReadyWaiting = false\n\nself._T.onClickMatchButton = self.matchButton:ConnectEvent(ButtonClickEvent,function()self:OnClickReadyBtn(true)end)\nself._T.onClickMatchCancelButton = self.matchCancelButton:ConnectEvent(ButtonClickEvent,function()self:OnClickReadyBtn(false)end)\nself._T.onClickSingleButton = self.singleButton:ConnectEvent(ButtonClickEvent,function()self:OnClickSingleBtn()end)\nself.textMatchLog.Text = \"\"\nself.textMatchLog.Enable = false\nself.Entity.Enable = not _MatchLogic.isEventMatchType\n",
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
        "Code": "if self._T.IsReadyWaiting == true then\n\t--ìë² ìëµ ëê¸°ì¤ìëë¤\n\treturn\nend\nself._T.IsReadyWaiting = true\n_UserService.LocalPlayer.PlayerMatch:SetReady(ready)",
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