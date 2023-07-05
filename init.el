(setq gc-cons-threshold most-positive-fixnum)

(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-custom)
(require 'init-const)

(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-package)
(require 'init-basic)
(require 'init-frame)
(require 'init-display)
(require 'init-editing)
(require 'init-dired)
(require 'init-themes)
(require 'init-ibuffer)

(require 'init-project)
(require 'init-org)
(require 'init-treesit)

(require 'init-evil)
(require 'init-git)
(require 'init-docker)
(require 'init-copilot)

(require 'init-vertico)
(require 'init-company)
(require 'init-flycheck)
(require 'init-yasnippet)
(require 'init-ace-window)

(require 'init-prog)
(require 'init-web)
(require 'init-ruby)
(require 'init-yaml)
(require 'init-python)
(require 'init-rust)
(require 'init-dart)
(require 'init-lua)
