(use-package org :ensure t)
(use-package org-plus-contrib :pin org :ensure t)

(use-package ox-publish
  :config

  (setq
   org-publish-use-timestamps-flag nil

   org-export-with-section-numbers nil  ;; 去掉编号
   org-export-with-toc nil              ;; 关闭 TOC

   org-html-divs '((preamble "header" "top")
                   (content "main" "content")
                   (postamble "footer" "postamble"))

   org-html-postamble nil
   org-html-html5-fancy t
   org-html-doctype "html5"
   org-html-container-element "section"
   org-html-head-include-scripts nil        ;; 去掉默认的 script
   org-html-head-include-default-style nil  ;; 去掉默认的 css
   org-html-metadata-timestamp-format "%Y-%m-%d")

  (setq blog-html-head "<link href='assets/stylesheets/main.css' rel='stylesheet' type='text/css'>")
  (setq blog-html-preamble "<ul class='nav'><li><a href='/'>Home</a></li><li><a href='/about'>About</a></li></ul>")

  (setq org-publish-project-alist
        `(("blog" :components ("blog-notes" "blog-assets"))
          ("blog-notes"
           :base-extension "org"
           :base-directory "~/Dropbox/Blog/notes"
           :publishing-directory "~/Blog/"
           :publishing-function org-html-publish-to-html

           :html-head ,blog-html-head
           :html-preamble ,blog-html-preamble

           :auto-sitemap t
           :sitemap-title "Blog"
           :sitemap-filename "index.org"
           :sitemap-file-entry-format "%d » [%t]"
           :sitemap-function org-publish-org-sitemap)

          ("blog-pages"
           :base-extension "org"
           :base-directory "~/Dropbox/Blog/pages"
           :publishing-directory "~/Blog/"
           :publishing-function org-html-publish-to-html

           :html-head ,blog-html-head
           :html-preamble ,blog-html-preamble)

          ("blog-assets"
           :base-extension "css\\|js"
           :base-directory "~/Dropbox/Blog/"
           :publishing-directory "~/Blog/"
           :publishing-function org-publish-attachment

           :recursive t))))

(provide 'init-org)
