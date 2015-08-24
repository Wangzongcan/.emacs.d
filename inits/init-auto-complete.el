;; auto-complete
(use-package auto-complete
  :defer t
  :init
  (progn
    (setq ac-auto-start nil
          ac-delay 0.2
          ac-use-fuzzy t
          ac-fuzzy-enable t
          tab-always-indent 'complete))
  :config
  (progn
    (global-auto-complete-mode t)

    (require 'auto-complete-config)
    (ac-config-default)

    (setq-default ac-sources '(ac-source-abbrev
                               ac-source-dictionary
                               ac-source-words-in-same-mode-buffers))))

;; ac-helm
(use-package ac-helm
  :defer t
  :bind
  ("C-;" . ac-complete-with-helm)
  :config
  (bind-key "C-;" 'ac-complete-with-helm ac-complete-mode-map))

(provide 'init-auto-complete)
