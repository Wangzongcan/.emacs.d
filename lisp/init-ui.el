;; Frame
(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t)

(setq use-file-dialog nil
      use-dialog-box nil)

(setq ring-bell-function #'ignore
      visible-bell nil)

(setq ns-use-proxy-icon nil)

;; Buffers
(setq uniquify-buffer-name-style 'forward)
(setq-default truncate-lines t)

;; Mode Line
(setq column-number-mode 1)
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode))

;; Scrolling
(setq hscroll-margin 2
      hscroll-step 1
      scroll-conservatively 101
      scroll-margin 0
      scroll-preserve-screen-position t
      auto-window-vscroll nil)

;; Cursor
(setq-default cursor-in-non-selected-windows nil)
(blink-cursor-mode -1)

;; Minibuffer
(setq enable-recursive-minibuffers t)
(setq echo-keystrokes 0.02)

(setq minibuffer-prompt-properties
      '(read-only t intangible t cursor-intangible t face minibuffer-prompt))
(add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

(advice-add #'yes-or-no-p :override #'y-or-n-p)

(use-package hl-line
  :straight nil
  :hook (after-init . global-hl-line-mode))

;; Tooltip
(use-package tooltip
  :straight nil
  :config
  (tooltip-mode -1))

;; Themes
(use-package doom-themes)
(add-hook 'after-init-hook
          (lambda ()
            (load-theme 'doom-snazzy t)))

(provide 'init-ui)
