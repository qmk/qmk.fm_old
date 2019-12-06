---
title: "Proton C について"
layout: qmk
permalink: /ja/proton-c/
lang: "ja"
---

<img src="https://i.imgur.com/GdsN1Rd.jpg" alt="Proton C" />

Proton C は Arm STM32F303xC をベースとする Pro Micro の差し替え可能な交換品です。Planck rev6 キーボードや、Skullydazed の Arm Clueboards と同じチップを使用しています。

* スルーホールマウントの USB-C ポート
* 32-bit 72MHz Cortex-M4 プロセッサ (STM32F303CCT6)
* I2C, SPI, PWM, DMA, DAC, USART, I2S
* 23x 3.3V I/O ポート
* WS2812 LED テープ用 1x 5V 出力
* 256kB フラッシュ
* 40kB RAM
* AST1109MLTRQ スピーカのフットプリント
* リセットボタン

リビジョン 2 は次の変更が行われました:

* PCB の両側のスピーカパッド
* スピーカの片側を GND に接続して追加の I/O ピンを得ることができるようになりました
* 両側に透明なはんだマスクを使用
* 金メッキははんだマスクの前に行われるようになったため、トレースは金になりました

Proton C は次の場所で購入できます:

* [Clueboard](https://clueboard.co/parts/qmk-proton-c) (アメリカ西部)
* [Keebio](https://keeb.io/products/qmk-proton-c) (アメリカ東部)
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c) (アメリカ東部)
* [SpaceCat](https://spacecat.design/products/proton-c-by-qmk) (アメリカ東部)
* [1upkeyboards](https://www.1upkeyboards.com/shop/controllers/qmk-proton-c/) (アメリカ東部)
* [Oh, Keycaps!](https://ohkeycaps.com/products/proton-c) (アメリカ中西部)
* [Mykeyboard](https://mykeyboard.eu/catalogue/qmk-proton-c-rev-2_1246/) (ヨーロッパ)
* [Daily Clack](https://dailyclack.com/products/qmk-proton-c) (オーストラリア)

分割キーボード、RGB アンダーグロー、バックライトのサポートは現在作業中で、まもなく利用可能になる予定です。

## 比較

あなたの次の製品に Proton C を選択する理由を知りたい場合、こちらがチップの比較表です:

&nbsp;    |ATmega32U4      |AT90USB1286       |STM32F303xC       |
----------|----------------|------------------|------------------|
速度        |16MHz           |16MHz             |72MHz             |
電圧        |5V              |5V                |3.3V (5V 対応ピンを含む) |
フラッシュサイズ  |32kB (28kB 使用可能)|128kB (120kB 使用可能)|256KB (248kB 使用可能)|
EEPROM サイズ|1kB             |4kB               |4kB (フラッシュでエミュレート)|
メモリ       |2.5kB           |8kB               |48kB              |
タイマ       |合計 4            |合計 4              |合計 10             |
デジタル IO   |25 ピン           |46 ピン             |37 ピン             |

STM32F303 は ATmega32U4 に比べて 9 倍の使用可能な記憶領域があります。たくさんの機能を有効にしてまだ十分なスペースを残しておくことができます。例えば、オーディオや RGB マトリクスを完全に有効化し(サブ機能を無効化せずに)、Link Time Optimization を無効にした Planck EZ は、ファームウェアで 45kB 使用しますが、まだ 200kB 以上の空きがあります。あなたがしたいことのほとんどができる十分なスペースがあります。


## 警告

Pro Micro と互換のある PCB のいくつかは、VCC (3.3V) と RAW (5V) ピンが PCB に接続(短絡)されています。Proton C を使用すると、USB からの 5V 電源と MCU に直接接続されている安定化 3.3V 電源が短絡します。これらのピンを短絡すると Proton C の MCU が損傷する可能性があります。

これまでのところ、これは Gherkin PCB でのみ起きる問題のようですが、他の PCB もこの方法による影響を受ける可能性があります。

この場合は、RAW ピンを全く接続しないようにすると良いでしょう。
