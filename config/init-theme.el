;; Theme
;; (package-install 'monokai-theme)

;; (load-theme 'monokai t)

(package-install 'solarized-theme)

;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t
      x-underline-at-descent-line t)

(load-theme 'solarized-light t)

(provide 'init-theme)
