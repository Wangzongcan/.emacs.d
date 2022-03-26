(use-package project
  :straight (:type built-in)
  :general
  (my-leader-def 'normal 'override
   "pp" 'project-switch-project
   "pd" 'project-find-dir
   "pf" 'project-find-file))

(provide 'init-project)
