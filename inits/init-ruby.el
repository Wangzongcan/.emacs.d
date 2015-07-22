;; rvm
(rvm-use-default)

;; ruby
(require 'ruby-mode)
(autoload 'ruby-mode "ruby-mode" "" t)

(setq ruby-insert-encoding-magic-comment nil)

(define-key ruby-mode-map (kbd "C-c C-r") 'ruby-send-region)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))

;; inf-ruby
(add-hook 'inf-ruby-mode-hook
          (lambda () (setq truncate-lines nil)))

(define-key ruby-mode-map (kbd "<f5>")
  '(lambda ()
     (interactive)
     (if (> (length (thing-at-point 'line)) 1)
       (progn
         (end-of-line) (newline)))
     (insert "binding.pry")))

(provide 'init-ruby)
