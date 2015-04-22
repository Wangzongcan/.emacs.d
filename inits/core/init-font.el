;; Font
(set-frame-font "Menlo:pixelsize=14")
(if (display-graphic-p)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family "Hiragino Sans GB W3" :size 16))))
(require 'el-init)
(el-init-provide)