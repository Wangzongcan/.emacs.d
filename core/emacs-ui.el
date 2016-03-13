(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

;; fullframe
(setq frame-resize-pixelwise t)

;; nice scrolling
(setq scroll-margin 5
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; font
(add-to-list 'default-frame-alist '(font . "M+ 1m-12"))
(set-face-attribute 'default nil :font "M+ 1m-12")

(setq ns-use-srgb-colorspace nil)

(provide 'emacs-ui)
