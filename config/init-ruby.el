;; RVM
(rvm-use-default)

;; Ruby
(require 'ruby-mode)
(autoload 'ruby-mode "ruby-mode" "" t)

(setq ruby-insert-encoding-magic-comment nil)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))

(define-key ruby-mode-map (kbd "C-c C-r") 'ruby-send-region)

;; Inf-Ruby
(add-hook 'inf-ruby-mode-hook
          (lambda () (setq truncate-lines nil)))

;; Ruby-Electric
(add-hook 'ruby-mode-hook 'ruby-electric-mode)
