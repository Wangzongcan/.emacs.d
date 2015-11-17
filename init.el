;; load-path
(add-to-list 'load-path (concat user-emacs-directory "inits"))

(require 'cl)
(require 'init-cask)
(require 'init-base)
(require 'init-evil)
(require 'init-theme)
(require 'init-counsel)
(require 'init-avy)
(require 'init-dired)
(require 'init-magit)
(require 'init-company)
(require 'init-projectile)
(require 'init-ag)

(require 'init-ruby)
(require 'init-web)
(require 'init-javascript)
(require 'init-css)
(require 'init-emmet)
(require 'init-yaml)

(require 'init-function)
