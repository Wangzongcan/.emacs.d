;; require cl
(eval-when-compile (require 'cl))

;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; path
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'load-path "~/.emacs.d/config")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

(require 'init-base)
(require 'init-font)
(require 'init-theme)

;; Evil
(require 'init-evil)

;; Dired
(require 'init-dired)

;; Helm
(require 'init-helm)

;; Ibuffer
(require 'init-ibuffer)

;; Company
(require 'init-company)

;; Porjectile
(require 'init-projectile)

;; Magit
(require 'init-magit)

;; Ace Window
(require 'init-ace-window)

;; Ace Jump
(require 'init-ace-jump)

;; Ag
(require 'init-ag)

;; quickrun
(require 'init-quickrun)

;; expand-region
(require 'init-expand-region)

;; Ruby
(require 'init-rvm)
(require 'init-ruby)
(require 'init-inf-ruby)
(require 'init-ruby-electric)

;; Web
(require 'init-web)
(require 'init-emmet)

;; NVM
(require 'init-nvm)

;; JS2
(require 'init-js2)

;; Coffee
(require 'init-coffee)

;; Css
(require 'init-css)
(require 'init-sass)
(require 'init-scss)

;; YAML
(require 'init-yaml)

;; Smart Mode Line
(require 'init-smart-mode-line)

;; Smartparens
(require 'init-smartparens)

;; Rainbow Delimiters
(require 'init-rainbow-delimiters)

;; Function
(require 'init-function)

(require 'init-bindings)

;; Nyan
(require 'init-nyan)
