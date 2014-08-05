(autoload 'ibuffer "ibuffer" "List buffers." t)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(eval-after-load "ibuffer"
  '(progn
     (require 'ibuffer-vc)

     (setq ibuffer-expert t)

     (setq ibuffer-formats
           '((mark modified read-only vc-status-mini
                   " " (name 30 30 :left :elide)
                   " " (size 9 -1 :right)
                   " " (mode 16 16 :left :elide)
                   " " (vc-status 16 16 :left)
                   " " filename-and-process)))

     (add-hook 'ibuffer-hook
               (lambda ()
                 (ibuffer-auto-mode)
                 (ibuffer-do-sort-by-alphabetic)
                 (ibuffer-vc-set-filter-groups-by-vc-root)))))
