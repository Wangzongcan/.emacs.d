;; Display

;;; Scroll
(setq scroll-step 1
      scroll-margin 0
      scroll-conservatively 10000
      scroll-preserve-screen-position t)

;; Line Truncation
(setq-default truncate-lines t)

;; Uniquify
(setq uniquify-buffer-name-style 'forward)

;; Whitespace
(use-package whitespace
  :straight (:type built-in)
  :hook ((prog-mode conf-mode) . whitespace-mode)
  :custom
  (whitespace-line-column nil)
  (whitespace-style '(face empty tabs tab-mark trailing space-before-tab)))

;; Rainbow Delimiters
(use-package rainbow-delimiters
  :hook ((prog-mode conf-mode) . rainbow-delimiters-mode))

;; Highlight TODO
(use-package hl-todo
  :hook (after-init . global-hl-todo-mode))

(provide 'init-display)
