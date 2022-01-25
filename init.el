(setq gc-cons-threshold most-positive-fixnum)

(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-package)
(require 'init-basic)
(require 'init-ui)
(require 'init-edit)
(require 'init-dired)
(require 'init-themes)
(require 'init-ibuffer)
(require 'init-minibuffer)
(require 'init-keybindings)

(when (eq system-type 'darwin)
  (require 'init-macos))

(require 'init-org)

(require 'init-evil)
(require 'init-git)
(require 'init-docker)

(require 'init-company)
(require 'init-flycheck)

(require 'init-web)
(require 'init-ruby)
(require 'init-yaml)
(require 'init-python)
(require 'init-rust)
(require 'init-dart)
(require 'init-lua)

(require 'init-custom-file)
