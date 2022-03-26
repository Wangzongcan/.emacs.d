(use-package company
  :hook (after-init . global-company-mode)
  :general
  ("TAB" 'company-indent-or-complete-common)
  (company-active-map
   "TAB" 'company-complete-common-or-cycle
   "<tab>" 'company-complete-common-or-cycle
   "C-n" 'company-select-next
   "C-p" 'company-select-previous)
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 1)
  (company-require-match nil)
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case nil))

(provide 'init-company)
