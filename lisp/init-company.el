(use-package company
  :hook (after-init . global-company-mode)
  :bind (([remap indent-for-tab-command] . company-indent-or-complete-common)
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  (company-format-margin-function nil))

(provide 'init-company)
