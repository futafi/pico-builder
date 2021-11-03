# pico-builder

Raspberry Pi Pico用のビルド環境イメージ

- English README here:<br>
[README.md](https://github.com/futafi/pico-builder/blob/master/README.md)
- 日本語版READMEはこちら:<br>
[README.ja.md](https://github.com/futafi/pico-builder/blob/master/README.ja.md)

## クイックリファレンス

* 質問・問題はこちらへ:<br>
[the Issues page on Github](https://github.com/futafi/pico-builder/issues)

* Dockerfileはこちらを参照:<br>
[The Dockerfile on Github](https://github.com/futafi/pico-builder/blob/master/Dockerfile)

## Imageの中身

* [pico-sdk](https://github.com/raspberrypi/pico-sdk)
* [tinyusb](https://github.com/hathach/tinyusb/tree/4bfab30c02279a0530e1a56f4a7c539f2d35a293)
* ビルドに必要な諸々（cmake, gcc-arm-none-eabiなど）

## 使い方

1.  プロジェクトのディレクトリで
```bash
$ docker run -v $PWD:/work -e NPROC=$(nproc) pico-builder
```

2. build下にデバッガ用の*PROJECTNAME.elf*とpicoにドラッグアンドドロップして実行する*PROJECTNAME.uf2*ができます。

## オプション
- `NPROC`
    - makeの並列数
- `PROJECT_NAME`
    - makeしたいproject名