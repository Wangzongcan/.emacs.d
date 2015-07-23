;; rvm
(rvm-use-default)

;; ruby
(require 'ruby-mode)
(autoload 'ruby-mode "ruby-mode" "" t)

(setq ruby-insert-encoding-magic-comment nil)

(define-key ruby-mode-map (kbd "C-c C-r") 'ruby-send-region)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;; inf-ruby
(require 'inf-ruby)

(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'inf-ruby-mode-hook
          (lambda () (setq truncate-lines nil)))

(define-key ruby-mode-map (kbd "<f5>")
  '(lambda ()
     (interactive)
     (if (> (length (thing-at-point 'line)) 1)
       (progn
         (end-of-line) (newline)))
     (insert "binding.pry")))

;; robe
(require 'robe)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(provide 'init-ruby)
