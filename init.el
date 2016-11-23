(setq package-enable-at-startup nil)
(setq load-prefer-newer t)
(package-initialize)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(use-package auto-compile
  :ensure t
  :init
  (auto-compile-on-load-mode)
  (auto-compile-on-save-mode))

(load-file (concat
            user-emacs-directory
            "inits/init-paths.el"))

(require 'inits)
(require 'modules)
(require 'langs)
