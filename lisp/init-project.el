(use-package project
  :straight (:type built-in)
  :general
  (my-leader-def 'normal 'override
   "pp" 'project-switch-project
   "pb" 'project-switch-to-buffer
   "pd" 'project-find-dir
   "pf" 'project-find-file))

(provide 'init-project)
