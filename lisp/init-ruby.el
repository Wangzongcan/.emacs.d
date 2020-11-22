(use-package ruby-mode
  :straight (:type built-in)
  :interpreter "ruby"
  :hook (ruby-mode . flycheck-mode)
  :config
  (setq ruby-insert-encoding-magic-comment nil)

  (with-eval-after-load 'flycheck
    (setq flycheck-command-wrapper-function
          (lambda (command)
            (append '("bundle" "exec") command)))))

(provide 'init-ruby)
