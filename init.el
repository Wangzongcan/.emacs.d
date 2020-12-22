(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-gc)
(require 'init-package)

(require 'init-basic)
(require 'init-ui)
(require 'init-edit)
(require 'init-dired)
(require 'init-themes)

(require 'init-org)

(require 'init-git)
(require 'init-ivy)
(require 'init-evil)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-projectile)
(require 'init-flycheck)

(require 'init-web)
(require 'init-ruby)
(require 'init-yaml)
(require 'init-docker)
(require 'init-python)

(require 'init-custom-file)
