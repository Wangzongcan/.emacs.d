(setq face-font-rescale--alist '(("Monaco" . 1) ("Hiragino Sans GB" . 1.2)))

(set-face-attribute 'default nil :font "Monaco 13")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "Hiragino Sans GB")))
