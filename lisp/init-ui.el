;; GUI
(when window-system
  ;;; Frame
  (setq frame-resize-pixelwise t
        frame-inhibit-implied-resize t)

  ;;; Cursor
  (setq-default x-stretch-cursor t
                cursor-in-non-selected-windows nil)

  ;;; Suppress GUI features
  (setq use-dialog-box nil
        use-file-dialog nil)

  ;;; Tooltip
  (tooltip-mode -1))

;; Bell
(setq visible-bell nil
      ring-bell-function #'ignore)

;; Display Buffer
(setq-default truncate-lines t)
(setq uniquify-buffer-name-style 'forward)

;; Scroll
(setq scroll-step 1
      scroll-margin 0
      scroll-conservatively 10000
      scroll-preserve-screen-position t)

;; Simple
(use-package simple
  :straight (:type built-in)
  :custom
  (column-number-mode t))

;; Frame
(use-package frame
  :straight (:type built-in)
  :hook (window-setup . window-divider-mode)
  :hook (window-setup . (lambda () (blink-cursor-mode -1)))
  :custom
  (window-divider-default-places t)
  (window-divider-default-bottom-width 1)
  (window-divider-default-right-width 1))

;; Whitespace
(use-package whitespace
  :straight (:type built-in)
  :hook (prog-mode . whitespace-mode)
  :custom
  (whitespace-line-column nil)
  (whitespace-style '(face empty tabs tab-mark trailing space-before-tab)))

;; Modeline
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-height 1)
  (doom-modeline-icon nil))

;; Rainbow Delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'init-ui)
