(set-frame-font "Source Code Pro:pixelsize=15")

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Noto Sans CJK SC" :size 18)))
