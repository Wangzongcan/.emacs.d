;; web-mode
(require 'web-mode)

(setq
 web-mode-markup-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-html-offset 2
 web-mode-code-indent-offset 2
 web-mode-script-padding 2
 web-mode-enable-auto-closing t
 web-mode-enable-auto-pairing t)

(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))

(provide 'init-web)
