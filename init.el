(eval-when-compile (require 'cl))

;; Package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "inits"))

(require 'init-base)
(require 'init-use-package)
(require 'init-theme)
(require 'init-spaceline)
(require 'init-exec-path-from-shell)
(require 'init-counsel)
(require 'init-avy)
(require 'init-evil)
(require 'init-dired)
(require 'init-company)
(require 'init-projectile)
(require 'init-magit)
(require 'init-ag)

(require 'init-ruby)
(require 'init-web)
(require 'init-javascript)
(require 'init-css)
(require 'init-emmet)
(require 'init-yaml)

(require 'init-function)
