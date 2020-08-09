(use-package elec-pair
  :straight nil
  :hook (prog-mode . electric-pair-mode)
  :init
  (setq electric-pair-inhibit-predicate
        'electric-pair-conservative-inhibit))

(use-package paren
  :straight nil
  :hook (prog-mode . show-paren-mode))

(use-package subword
  :straight nil
  :hook (prog-mode . subword-mode))

(use-package whitespace
  :straight nil
  :hook (prog-mode . whitespace-mode)
  :config
  (setq whitespace-line-column nil
        whitespace-style
        '(face empty space-before-tab
               trailing tabs tab-mark)))

(use-package highlight-parentheses
  :hook (prog-mode . highlight-parentheses-mode))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package symbol-overlay
  :hook (prog-mode . symbol-overlay-mode)
  :bind (("M-i" . symbol-overlay-put)
         ("M-n" . symbol-overlay-switch-forward)
         ("M-p" . symbol-overlay-switch-backward)
         ("M-I" . symbol-overlay-remove-all)))

(provide 'init-prog)
