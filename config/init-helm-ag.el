;; Helm Ag
(package-install 'helm-ag)

(setq helm-ag-base-command "ag --nogroup --ignore-case"
      helm-ag-command-option "--all-text"
      helm-ag-insert-at-point 'symbol)

(provide 'init-helm-ag)
