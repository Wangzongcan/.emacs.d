(defcustom proxy-host "127.0.0.1"
  "The proxy host."
  :group 'init-custom
  :type 'string)

(defcustom proxy-port "1080"
  "The proxy port."
  :group 'init-custom
  :type 'string)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(provide 'init-custom)
