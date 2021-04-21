(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-gc)
(require 'init-package)
(require 'init-basic)
(require 'init-macos)
(require 'init-ui)
(require 'init-edit)
(require 'init-dired)
(require 'init-themes)

(require 'init-evil)
(require 'init-git)
(require 'init-docker)

(require 'init-ivy)
(require 'init-org)
(require 'init-company)
(require 'init-projectile)
(require 'init-flycheck)

(require 'init-web)
(require 'init-ruby)
(require 'init-yaml)
(require 'init-python)
(require 'init-rust)

(require 'init-custom-file)
