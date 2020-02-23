(use-package paren
  :straight nil
  :hook (after-init . show-paren-mode)
  :config
  (setq blink-matching-paren nil))

(use-package whitespace
  :straight nil
  :hook (after-init . global-whitespace-mode)
  :config
  (setq whitespace-line-column nil
        whitespace-style
        '(face empty space-before-tab
               trailing tabs tab-mark)))

(use-package diff-hl
  :hook ((after-init . global-diff-hl-mode)
         (after-init . diff-hl-flydiff-mode)))

(use-package rainbow-delimiters
  :hook ((prog-mode text-mode) . rainbow-delimiters-mode))

(use-package symbol-overlay
  :diminish
  :hook (prog-mode . symbol-overlay-mode)
  :bind (("M-i" . symbol-overlay-put)
         ("M-n" . symbol-overlay-switch-forward)
         ("M-p" . symbol-overlay-switch-backward)))

(provide 'init-highlight)
