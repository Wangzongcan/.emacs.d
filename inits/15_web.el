(autoload 'web-mode "web-mode" "" t)

(progn
  (add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb$" . web-mode)))
