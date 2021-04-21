(use-package emmet-mode
  :hook web-mode)

(use-package web-mode
  :mode ("\\.html\\'" "\\.erb\\'" "\\.vue\\'")
  :config
  (setq web-mode-enable-current-element-highlight t
        web-mode-enable-auto-indentation nil

        web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-style-padding 2
        web-mode-script-padding 2

        web-mode-content-types-alist '(("vue" . "\\.vue\\'")))

  (defun my/web-vue-setup()
    (setq web-mode-style-padding 0
          web-mode-script-padding 0))

  (add-hook 'web-mode-hook
            (lambda ()
              (cond ((equal web-mode-content-type "vue")
                     (my/web-vue-setup))))))

(use-package js2-mode
  :mode "\\.js\\'"
  :interpreter "node"
  :init
  (setq js-indent-level 2
        js2-mode-show-strict-warnings nil))

(use-package typescript-mode
  :mode ("\\.ts[x]\\'" . typescript-mode))

(use-package css-mode
  :straight (:type built-in)
  :mode ("\\.css\\'" "\\.scss\\'")
  :config
  (setq css-indent-offset 2))

(use-package json-mode
  :mode "\\.json\\'")

(use-package restclient
  :mode ("\\.http\\'" . restclient-mode))

(provide 'init-web)
