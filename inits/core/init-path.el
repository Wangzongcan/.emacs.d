(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

(setq exec-path (append '("/usr/local/bin") exec-path))

(provide 'init-path)
