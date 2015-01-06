;; Mac 使用 brew 安装软件后，设置 PATH
(add-to-list 'exec-path "/usr/local/bin")
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

(eval-when-compile (require 'cl))

;; 载入 cask
(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

;; Define emacs-dir where all the files live.
(defvar emacs-dir
  (file-name-directory (or load-file-name (buffer-file-name)))
  "Define where user load this init.el, this variable will be `~/.emacs.d/' in many case.")

(defvar config-file
  (concat emacs-dir "config.org"))

;; 载入 org
(require 'org)
(setq org-confirm-babel-evaluate nil)

;; Load config.org from emacs-dir
(if (file-exists-p config-file)
    (org-babel-load-file (expand-file-name config-file))
  (error (format "%s not found!!" config-file)))

;; 编辑 config.org
(defun edit-config-file ()
  "edit config.org."
  (interactive)
  (find-file config-file))
