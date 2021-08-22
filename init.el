(setq gc-cons-threshold most-positive-fixnum)

(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-package)
(require 'init-environment)
(require 'init-basic)
(require 'init-ui)
(require 'init-edit)
(require 'init-dired)
(require 'init-themes)

(require 'init-evil)
(require 'init-git)
(require 'init-docker)

(require 'init-org)

(require 'init-ivy)
(require 'init-company)
(require 'init-projectile)
(require 'init-flycheck)

(require 'init-web)
(require 'init-ruby)
(require 'init-yaml)
(require 'init-python)
(require 'init-rust)
(require 'init-dart)

(require 'init-custom-file)
