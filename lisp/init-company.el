(use-package company
  :hook (after-init . global-company-mode)
  :bind (("TAB" . company-indent-or-complete-common)
         ("<backtab>" . company-yasnippet)
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  (company-require-match nil)
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case nil))

(provide 'init-company)
