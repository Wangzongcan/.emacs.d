;; Frame
(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t)

;; Suppress GUI features
(setq use-dialog-box nil
      use-file-dialog nil)

;; Title bar
(when (eq system-type 'darwin)
  (setq ns-use-proxy-icon nil))

;; Bell
(setq visible-bell nil
      ring-bell-function #'ignore)

;; Display Buffer
(setq-default truncate-lines t)
(setq uniquify-buffer-name-style 'forward)

;; Cursor
(blink-cursor-mode -1)
(setq-default cursor-in-non-selected-windows nil)

;; Modeline
(column-number-mode +1)
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-icon nil
        doom-modeline-height 1))

;; Scroll
(setq scroll-step 1
      scroll-conservatively 10000)

;; Whitespace
(use-package whitespace
  :straight (:type built-in)
  :hook (prog-mode . whitespace-mode)
  :init
  (setq whitespace-line-column nil
        whitespace-style '(face empty tabs tab-mark
                                trailing space-before-tab)))

;; Paren
(use-package paren
  :straight (:type built-in)
  :hook (after-init . show-paren-mode)
  :init
  (setq show-paren-when-point-inside-paren t
        show-paren-when-point-in-periphery t))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'init-ui)
