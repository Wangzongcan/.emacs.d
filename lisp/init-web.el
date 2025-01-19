(use-package emmet-mode
  :hook web-mode)

(use-package web-mode
  :mode ("\\.html\\'" "\\.erb\\'")
  :custom
  (web-mode-enable-current-element-highlight t)
  (web-mode-enable-auto-indentation nil)

  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2)
  (web-mode-style-padding 2)
  (web-mode-script-padding 2)
  :init
  (define-derived-mode vue-mode web-mode "vue"))

(use-package vue-mode
  :ensure nil
  :mode "\\.vue\\'"
  :preface
  (defun my/vue-mode-setup()
    (setq-local electric-pair-inhibit-predicate
                `(lambda (c)
                   (if (char-equal c ?{) t (,electric-pair-inhibit-predicate c)))

                web-mode-style-padding 0
                web-mode-script-padding 0))
  :hook (vue-mode . my/vue-mode-setup))

(provide 'init-web)
