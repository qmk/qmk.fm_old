---
title: "QMK Toolbox"
layout: qmk-editable
permalink: /ja/toolbox/
lang: "ja"
---
# QMK Toolbox

[GitHub で見る](https://github.com/qmk/qmk_toolbox)

これは1つのアプリケーションにパッケージ化された書き込みツールのコレクションです。 キーボードの自動検出とファームウェアの自動書き込みをサポートしています。

![](https://i.imgur.com/7bFh7vJ.png)

## 書き込み

QMK Toolbox は次のブートローダをサポートしています:

 - Atmel/LUFA/QMK DFU、[dfu-programmer](http://dfu-programmer.github.io/) を利用
 - Caterina (Arduino, Pro Micro)、[avrdude](http://nongnu.org/avrdude/) を利用
 - Halfkay (Teensy, Ergodox EZ)、[Teensy Loader](https://pjrc.com/teensy/loader_cli.html) を利用
 - ARM DFU (STM32, Kiibohd)、[dfu-util](http://dfu-util.sourceforge.net/) を利用
 - Atmel SAM-BA (Massdrop)、[Massdrop Loader](https://github.com/massdrop/mdloader) を利用
 - BootloadHID (Atmel, PS2AVRGB)、[bootloadHID](https://www.obdev.at/products/vusb/bootloadhid.html) を利用

また、次の ISP ライタをサポートしています:

 - USBTiny (AVR Pocket)
 - AVRISP (Arduino ISP)
 - USBasp (AVR ISP)

他に興味があるものがあれば、コマンドがわかっている場合は追加できます。

## HID コンソール

Toolbox は、Usage page `0xFF31` と `0x0074` の HID メッセージを待ち受けます。これは PJRC の [`hid_listen`](https://www.pjrc.com/teensy/hid_listen.html) と互換性があります。

キーボードの `rules.mk` に `CONSOLE_ENABLE = yes` を指定すると、`xprintf()` でメッセージを表示できます。これはデバッグに役立ちます:

![](https://i.imgur.com/03xuJhU.png)

詳細は [QMK のドキュメント](https://docs.qmk.fm/#/newbs_testing_debugging?id=debugging) を参照してください。

## インストール

### 依存関係

Windows で QMK Toolbox を使用する場合、初回実行時に必要なドライバをインストールするよう求められます。QMK Driver Installer の最新リリースは[こちら](https://github.com/qmk/qmk_driver_installer/releases)から入手できます。

### ダウンロード

Windows 版と macOS 版が利用でき、[最新リリースはこちら](https://github.com/qmk/qmk_toolbox/releases)から入手できます。

Homebrew の利用者は、Cask も利用できます:

```
$ brew tap homebrew/cask-drivers
$ brew cask install qmk-toolbox
```

