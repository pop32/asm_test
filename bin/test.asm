
    .inesprg 1      ; プログラムにいくつのバンクを使うか。今は１つ。
    .ineschr 1      ; グラフィックデータにいくつのバンクを使うか。今は１つ。
    .inesmir 0      ; VRAM 1:垂直 0:水平
    .inesmap 0      ; マッパー0

    .bank 0         ; バンク0
    .org $8000      ; $8000から開始

    .bank 1         ; バンク1に切り替える
    .org $FFFA      ; 

    .dw 0           ; VBlank割り込み
    .dw Start       ; リセット割り込み。起動時とリセットでStartラベルに飛ぶ
    .dw 0           ; 

    .bank 2         ; バンク2
    .org $0000      ; $0000から開始

    .incbin "giko.bkg"
    .incbin "giko.spr"

    