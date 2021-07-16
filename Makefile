all:	build

build:
	# アセンブル
	@rgbasm -L -o main.o main.asm

	# リンク
	@rgblink -o main.gb main.o

	# -v -p 0xFF でヘッダと ROM サイズを正しく修正してくれる
	@rgbfix -v -p 0xFF main.gb