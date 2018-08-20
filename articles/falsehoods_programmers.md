# Falsehoods Programmers Believe About Keyboard Firmware

## Key presses are a single event

Most key presses are two events, a key up and a key down. Some key presses don’t generate an event at all (KC_NO). Some keys require multiple presses to generate an event (Mod-Tap, Tap Dance, Etc.)

## The keyboard knows what letters are being typed

Communication between the Keyboard and Host Computer consist of scancodes, which are numbers corresponding to the location of keys on the keyboard. The Host Computer is responsible for translating those button presses into letters, numbers, and modifiers.

## Keycodes work the same on every OS

While all of the keys found on a standard 104/105 keyboard work the same there are a lot of keys which are OS specific. For example, KC_POWER is only recognized by macOS while KC_PWR is recognized by Linux and Windows too.

## Only one layer can be active at a time

QMK keeps a list of active layers. When assigning a keycode to a key press QMK will search that list from highest to lowest to find a keycode that is not KC_TRNS.

## If my base layer is 0, and I have MO(2) on that layer, KC_TRNS on layer 2 should result in a keycode from layer 1 being used.

As in the previous myth, QMK searches active layers from highest to lowest to find keycodes. In this scenario you have not activated layer 1, so it will not be used.

## Key presses are always processed in order

If two keys are processed during the same matrix cycle they will be processed in their matrix order, not the order they were pressed. Under normal circumstances the chances of this happening and mattering is very small, but if you have long macros or other custom code that takes a long time this may become important.

## The time between matrix scans is always consistent

It takes CPU cycles to process key presses. When the matrix state hasn’t changed matrix scanning will be at its fastest. Key processing happens between matrix scans, so the time between matrix scans will increase and decrease as keys are pressed and released.

## But ChibiOS is an RTOS, and therefore matrix scans should be a consistent time!

You need more than an RTOS for your system to be real time. You have to write your app to be realtime as well. We don’t impose realtime processing constraints on QMK.
