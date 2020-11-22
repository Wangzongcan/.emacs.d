(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-speed-up)
(require 'init-package)
(require 'init-environment)

(require 'init-utils)

(require 'init-basic)
(require 'init-ui)
(require 'init-editing)
(require 'init-files)

(require 'init-completion)
(require 'init-projectile)
(require 'init-version-control)
(require 'init-flycheck)
(require 'init-evil)

(require 'init-org)
(require 'init-docker)

(require 'init-prog)
(require 'init-ruby)
(require 'init-web)
(require 'init-yaml)

(require 'init-custom-file)
