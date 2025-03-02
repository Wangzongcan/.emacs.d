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

;; Parentheses
(use-package paren
  :ensure nil
  :hook (after-init . show-paren-mode)
  :custom
  (show-paren-when-point-inside-paren t)
  (show-paren-when-point-in-periphery t))

;; Whitespace
(use-package whitespace
  :ensure nil
  :hook ((prog-mode conf-mode) . whitespace-mode)
  :custom
  (whitespace-line-column nil)
  (whitespace-style '(face empty tabs tab-mark trailing space-before-tab)))

;; Which Key
(use-package which-key
  :ensure nil
  :hook (after-init . which-key-mode))

;; Rainbow Delimiters
(use-package rainbow-delimiters
  :hook ((prog-mode conf-mode) . rainbow-delimiters-mode))

;; Highlight TODO
(use-package hl-todo
  :hook (after-init . global-hl-todo-mode))

;; Indent Bars
(use-package indent-bars
  :custom
  (indent-bars-treesit-support t)
  (indent-bars-no-descend-string t)
  (indent-bars-treesit-ignore-blank-lines-types '("module"))
  (indent-bars-prefer-character t)
  (indent-bars-color-by-depth '(:regexp "outline-\\([0-9]+\\)" :blend 1))
  (indent-bars-highlight-current-depth '(:blend 0.5))
  (indent-bars-treesit-scope '((python function_definition class_definition for_statement
                                       if_statement with_statement while_statement)))
  :hook ((prog-mode yaml-mode) . indent-bars-mode)
  :config (require 'indent-bars-ts))

(use-package pulsar
  :hook (after-init . pulsar-global-mode))

(provide 'init-display)
