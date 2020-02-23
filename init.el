(defvar default-file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil
      gc-cons-percentage 0.5
      gc-cons-threshold most-positive-fixnum)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-percentage 0.1
                  gc-cons-threshold 20971520
                  file-name-handler-alist default-file-name-handler-alist)))

(when (version< emacs-version "27")
  (load (expand-file-name "early-init.el" user-emacs-directory)))

(push (expand-file-name "lisp" user-emacs-directory) load-path)

(require 'init-package)
(require 'init-environment)
(require 'init-utils)

(require 'init-preferences)
(require 'init-editing)
(require 'init-highlight)
(require 'init-dired)
(require 'init-minibuffer)

(require 'init-themes)

(require 'init-projectile)
(require 'init-git)
(require 'init-company)
(require 'init-flycheck)
(require 'init-ivy)
(require 'init-evil)
(require 'init-docker)

(require 'init-ruby)
(require 'init-web)
(require 'init-yaml)

(require 'init-custom-file)
