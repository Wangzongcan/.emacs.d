(eval-when-compile (require 'cl))

;; Package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "inits"))

(require 'init-use-package)
(require 'init-encoding)
(require 'init-base)
(require 'init-osx)
(require 'init-exec-path)
(require 'init-dired)
(require 'init-font)

(require 'init-evil)
(require 'init-magit)
(require 'init-counsel)
(require 'init-ag)
(require 'init-projectile)
(require 'init-company)
(require 'init-rainbow-delimiters)
(require 'init-theme)

(require 'init-ruby)
(require 'init-swift)
(require 'init-web)
(require 'init-javascript)
(require 'init-css)
(require 'init-emmet)
(require 'init-yaml)

(require 'init-function)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode web-mode use-package swift-mode spacemacs-theme smex smartparens scss-mode sass-mode rspec-mode rainbow-delimiters quickrun projectile-rails nlinum multiple-cursors magit js2-mode ido-vertical-mode ido-ubiquitous helm-swoop flx-ido evil-leader emmet-mode dired-single dired+ counsel company coffee-mode chruby ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
