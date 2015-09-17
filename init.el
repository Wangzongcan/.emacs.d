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
