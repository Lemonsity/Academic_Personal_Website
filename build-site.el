(require 'ox-publish)


(setq org-publish-project-alist
      (list
       (list "pages"
	     :recursive t
	     :base-directory "./content/"
	     :base-extension "org"
	     :publishing-directory "./public_html"
	     :publish-function 'org-html-publish-to-html
	     :with-author nil		; No author name
	     ;; :with-creator t		; Include Emacs and Org verison
	     :with-toc nil		; Table of Content
	     :section-numbers nil
	     :time-stamp-file nil
	     
	     ;; :auto-sitemap t                ; Generate sitemap.org automagically...
	     ;; :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
	     ;; :sitemap-title "Sitemap"         ; ... with title 'Sitemap'
	     )
       (list "static"
	     :base-directory "./content/"
	     :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	     :publishing-directory "./public_html/"
	     :recursive t
	     :publishing-function 'org-publish-attachment)
       )
      )

(setq org-html-validation-link nil	      ;; No "Validate" link
      org-html-head-include-scripts nil       ;; Use our own scripts
      org-html-head-include-default-style nil ;; Use our own styles
      org-html-head "<link rel=\"stylesheet\" href=\"/style.css\" />" 
      ;; org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />"
      )	

(org-publish-all t)

(message "Done")
