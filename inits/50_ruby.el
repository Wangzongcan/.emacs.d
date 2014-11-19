(eval-after-load "ruby-mode"
  '(progn

     (autoload 'ruby-mode "ruby-mode" "" t)
     (autoload 'inf-ruby-minor-mode "inf-ruby" "" t)

     (setq tab-width 2)
     (setq ruby-indent-level tab-width)
     (setq ruby-insert-encoding-magic-comment nil)

     (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
     (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
     (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
     (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)))
