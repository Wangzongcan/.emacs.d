(setq ns-use-srgb-colorspace nil)

;; startup
(setq inhibit-startup-screen t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(setq linum-format "%4d \u2502 ")

;; fullframe
(setq frame-resize-pixelwise t)

;; nice scrolling
(setq scroll-margin 5
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(line-number-mode 1)
(column-number-mode 1)
(size-indication-mode 1)
(global-hl-line-mode 1)

(add-hook 'minibuffer-setup-hook
          (lambda ()
            (setq-local cursor-type 'bar)))

(provide 'init-ui)
