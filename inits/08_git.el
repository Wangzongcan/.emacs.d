(require 'magit)
(require 'git-gutter-fringe)

;; magit

(add-hook 'magit-status-mode-hook
          (lambda ()
            (hl-line-mode t)))

;; git-gutter-fringe

(global-git-gutter-mode t)
