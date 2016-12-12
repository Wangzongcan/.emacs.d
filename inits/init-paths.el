(defconst inits-directory
  (file-name-as-directory (concat user-emacs-directory "inits")))

(defconst modules-directory
  (file-name-as-directory (concat user-emacs-directory "modules")))

(defconst langs-directory
  (file-name-as-directory (concat user-emacs-directory "langs")))

;; load path
(add-to-list 'load-path inits-directory)
(add-to-list 'load-path modules-directory)
(add-to-list 'load-path langs-directory)

;; PATH
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

;; EXEC PATH
(setq exec-path (append '("/usr/local/bin") exec-path))
