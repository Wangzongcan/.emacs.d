;; Font
(set-frame-font "Monaco:pixelsize=13")

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Hiragino Sans GB W3" :size 16)))

(provide 'init-font)
