;; Frame
(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t)
(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; Title Bar
(setq ns-use-proxy-icon nil)

;; Cursor
(setq-default cursor-in-non-selected-windows nil)
(blink-cursor-mode -1)

;; Buffer Display
(setq-default truncate-lines t)

(setq use-file-dialog nil
      use-dialog-box nil)

;; Tooltip
(tooltip-mode -1)

;; Mode Line
(column-number-mode +1)

;; Minibuffer
(setq echo-keystrokes 0.02)

(advice-add #'yes-or-no-p :override #'y-or-n-p)

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-buffer-file-name-style 'buffer-name))

(use-package nyan-mode
  :hook (after-init)
  :custom
  (nyan-animate-nyancat t))

;; Paren
(use-package paren
  :straight (:type built-in)
  :hook (after-init . show-paren-mode)
  :custom
  (show-paren-when-point-inside-paren t)
  (show-paren-when-point-in-periphery t))

;; Whitespace
(use-package whitespace
  :straight (:type built-in)
  :hook (prog-mode . whitespace-mode)
  :custom
  (whitespace-line-column nil)
  (whitespace-style '(face empty tabs tab-mark
                           trailing space-before-tab)))

;; Highlight Parentheses
(use-package highlight-parentheses
  :hook (prog-mode . highlight-parentheses-mode))

;; Rainbow Delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'init-ui)
