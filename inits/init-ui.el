(when (featurep 'tool-bar) (tool-bar-mode -1))
(when (featurep 'menu-bar) (menu-bar-mode -1))
(when (featurep 'scroll-bar) (scroll-bar-mode -1))
(blink-cursor-mode -1)

(setq frame-resize-pixelwise t)

(setq ns-use-srgb-colorspace nil)

(setq inhibit-startup-screen t
      initial-scratch-message "")

(setq visible-bell t
      ring-bell-function #'ignore)

(setq echo-keystrokes 0.1)

(set-face-attribute 'default nil :font "M+ 1m-12")
(add-to-list 'default-frame-alist '(font . "M+ 1m-12"))

(fset 'yes-or-no-p 'y-or-n-p)

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(global-hl-line-mode t)

(provide 'init-ui)
