(fringe-mode 4)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

;; 匹配括号
(show-paren-mode t)

(setq
 ring-bell-function 'ignore
 inhibit-startup-message t
 initial-scratch-message nil

 scroll-step 1

 show-paren-style 'expression

 line-number-mode t
 column-number-mode t

 frame-resize-pixelwise t                           ;; Mac 下全屏的时候会留一点空隙，取消这个设置
 )

(setq-default
 truncate-lines t
 indent-tabs-mode nil
 )

;; 设置字体，中文字体等宽
(set-face-attribute 'default nil :font "M+ 1m 12")

(provide 'init-ui)
