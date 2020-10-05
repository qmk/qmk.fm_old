{
  "keyboard": "clueboard",
  "subproject": "rev2",
  "keymap": "my_awesome_keymap",
  "layers": [
    ["KC_GRV","KC_1","KC_2","KC_3","KC_4","KC_5","KC_6","KC_7","KC_8","KC_9","KC_0","KC_DASH","KC_EQLS","KC_GRV","KC_BSPC","KC_PGUP","KC_TAB","KC_Q","KC_W","KC_E","KC_R","KC_T","KC_Y","KC_U","KC_I","KC_O","KC_P","KC_LBRC","KC_RBRC","KC_BSLS","KC_PGDN","KC_CAPS","KC_A","KC_S","KC_D","KC_F","KC_G","KC_H","KC_J","KC_K","KC_L","KC_SCLN","KC_QUOT","KC_NUHS","KC_ENT","KC_LSFT","KC_NUBS","KC_Z","KC_X","KC_C","KC_V","KC_B","KC_N","KC_M","KC_COMM","KC_DOT","KC_SLSH","KC_RO","KC_RSFT","KC_UP","KC_LCTL","KC_LGUI","KC_LALT","KC_MHEN","KC_SPC","KC_SPC","KC_HENK","KC_RALT","KC_RCTL","MO(1)","KC_LEFT","KC_DOWN","KC_RIGHT"],
    ["KC_ESC","KC_F1","KC_F2","KC_F3","KC_F4","KC_F5","KC_F6","KC_F7","KC_F8","KC_F9","KC_F10","KC_F11","KC_F12","KC_TRNS","KC_DEL","BL_STEP","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_PSCR","KC_SLCK","KC_PAUS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","MO(2)","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_PGUP","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","MO(1)","KC_LEFT","KC_PGDN","KC_RGHT"],
    ["KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","RESET","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","MO(2)","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","KC_TRNS","MO(1)","KC_TRNS","KC_TRNS","KC_TRNS"]
  ]
}

#include "clueboard.h"

// Helpful defines
#define _______ KC_TRNS

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
__KEYMAP_GOES_HERE__
};


curl -i -H "Content-Type: application/json" -X POST -d "$(< json_data)" http://0.0.0.0:5000/api/v1/compile
HTTP/1.1 100 Continue

HTTP/1.0 200 OK
Content-Type: application/json
Content-Length: 76
Server: Werkzeug/0.12.2 Python/3.6.1
Date: Sat, 19 Aug 2017 01:20:06 GMT

{
  "enqueued": true,
  "job_id": "39b310d5-054b-4259-b740-8494c82953dd"
}
zach-desktop:qmk_compile_api zwhite$ curl http://0.0.0.0:5000/api/v1/status/39b310d5-054b-4259-b740-8494c82953dd
{
  "created_at": "Sat, 19 Aug 2017 01:20:05 GMT",
  "enqueued_at": "Sat, 19 Aug 2017 01:20:05 GMT",
  "id": "39b310d5-054b-4259-b740-8494c82953dd",
  "is_failed": false,
  "is_finished": true,
  "is_queued": false,
  "is_started": false,
  "result": {
    "command": [
      "make",
      "KEYBOARD=clueboard",
      "SUBPROJECT=rev2",
      "KEYMAP=5zVqVRQ9zK8"
    ],
    "firmware": "<hex file>",
    "keyboard": "clueboard",
    "keymap": "5zVqVRQ9zK8",
    "output": "\u001b[33;01mWARNING:\u001b[0m\n Some git sub-modules are out of date or modified, please consider runnning:\u001b[1m\n git submodule sync --recursive\n git submodule update --init --recursive\u001b[0m\n\n You can ignore this warning if you are not compiling any ChibiOS keyboards,\n or if you have modified the ChibiOS libraries yourself. \n\nMaking \u001b[1mclueboard/rev2\u001b[0m with keymap \u001b[1m5zVqVRQ9zK8\u001b[0m\n\navr-gcc (GCC) 6.3.0\nCopyright (C) 2016 Free Software Foundation, Inc.\nThis is free software; see the source for copying conditions.  There is NO\nwarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\n\nCompiling: keyboards/clueboard/clueboard.c                                                          \u001b[32;01m[OK]\u001b[0m\nCompiling: keyboards/clueboard/keymaps/5zVqVRQ9zK8/keymap.c                                         \u001b[32;01m[OK]\u001b[0m\nCompiling: quantum/quantum.c                                                                        \u001b[32;01m[OK]\u001b[0m\nCompiling: quantum/keymap_common.c                                                                  \u001b[32;01m[OK]\u001b[0m\nCompiling: quantum/keycode_config.c                                                                 \u001b[32;01m[OK]\u001b[0m\nCompiling: quantum/process_keycode/process_leader.c                                                 \u001b[32;01m[OK]\u001b[0m\nCompiling: keyboards/clueboard/rev2/rev2.c                                                          \u001b[32;01m[OK]\u001b[0m\nCompiling: quantum/matrix.c                                                                         \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/host.c                                                                 \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/keyboard.c                                                             \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/action.c                                                               \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/action_tapping.c                                                       \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/action_macro.c                                                         \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/action_layer.c                                                         \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/action_util.c                                                          \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/print.c                                                                \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/debug.c                                                                \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/util.c                                                                 \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/eeconfig.c                                                             \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/avr/suspend.c                                                          \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/avr/timer.c                                                            \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/avr/bootloader.c                                                       \u001b[32;01m[OK]\u001b[0m\nAssembling: ./tmk_core/common/avr/xprintf.S                                                         \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/bootmagic.c                                                            \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/command.c                                                              \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/common/backlight.c                                                            \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/lufa.c                                                          \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/descriptor.c                                                    \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Class/Common/HIDParser.c              \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/Device_AVR8.c               \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/EndpointStream_AVR8.c       \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/Endpoint_AVR8.c             \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/Host_AVR8.c                 \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/PipeStream_AVR8.c           \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/Pipe_AVR8.c                 \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.c        \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/AVR8/USBInterrupt_AVR8.c         \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/ConfigDescriptors.c              \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/DeviceStandardReq.c              \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/Events.c                         \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/HostStandardReq.c                \u001b[32;01m[OK]\u001b[0m\nCompiling: ./tmk_core/protocol/lufa/LUFA-git/LUFA/Drivers/USB/Core/USBTask.c                        \u001b[32;01m[OK]\u001b[0m\nLinking: .build/clueboard_rev2_5zVqVRQ9zK8.elf                                                      \u001b[32;01m[OK]\u001b[0m\nCreating load file for Flash: .build/clueboard_rev2_5zVqVRQ9zK8.hex                                 \u001b[32;01m[OK]\u001b[0m\n\nSize after:\n   text\t   data\t    bss\t    dec\t    hex\tfilename\n      0\t  19256\t      0\t  19256\t   4b38\tclueboard_rev2_5zVqVRQ9zK8.hex\n\n",
    "returncode": 0,
    "subproject": "rev2"
  }
}
zach-desktop:qmk_compile_api zwhite$ curl -i http://0.0.0.0:5000/api/v1/download/39b310d5-054b-4259-b740-8494c82953dd
HTTP/1.0 200 OK
Content-Type: application/octet-stream
Content-Length: 52984
Content-Disposition: attachment; filename=clueboard.hex
Pragma: no-cache
Server: Werkzeug/0.12.2 Python/3.6.1
Date: Sat, 19 Aug 2017 01:20:46 GMT

<hex contents>