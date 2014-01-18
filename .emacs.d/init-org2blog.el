(add-to-list 'load-path "~/.emacs.d/site-lisp/org2blog")

(require 'org2blog)

(setq org2blog/wp-blog-alist
      '(("manan.org"
         :url "http://manan.org/xmlrpc.php"
         :username "Little Horse"
         :default-title "ÎÞ±êÌâ"
         :default-categories ("05.Ëæ±Ê")
         :tags-as-categories nil)
		))

(provide 'init-org2blog)