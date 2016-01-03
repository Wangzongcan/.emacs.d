(fringe-mode 4)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(setq
 ring-bell-function 'ignore
 inhibit-startup-message t
 initial-scratch-message nil

 scroll-step 1
 scroll-margin 5
 scroll-conservatively 5

 show-paren-style 'expression

 linum-format "%4d "

 line-number-mode t
 column-number-mode t

 frame-resize-pixelwise t                           ;; Mac 下全屏的时候会留一点空隙，取消这个设置
 )

(setq-default
 indent-tabs-mode nil)


(when window-system
  ;; 设置字体，中文字体等宽
  (set-face-attribute 'default nil :font "m+ 1m 12"))

(provide 'init-ui)
