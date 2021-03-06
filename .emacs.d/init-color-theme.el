(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme-6.6.0/")
(require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-robin-hood)
(load "~/.emacs.d/site-lisp/color-theme-6.6.0/themes/color-theme-tangotango.el")
(setq color-theme-load-all-themes nil)
(require 'color-theme-tangotango)
;; select theme - first list element is for windowing system, second is for console/terminal
;; Source : http://www.emacswiki.org/emacs/ColorTheme#toc9
(setq color-theme-choices 
      '(color-theme-tangotango color-theme-tangotango))

;; default-start
(funcall (lambda (cols)
    	   (let ((color-theme-is-global nil))
     	     (eval 
     	      (append '(if (window-system))
     		      (mapcar (lambda (x) (cons x nil)) 
     			      cols)))))
     	 color-theme-choices)
 
;; test for each additional frame or console
(require 'cl)
(fset 'test-win-sys 
      (funcall (lambda (cols)
     		 (lexical-let ((cols cols))
     		   (lambda (frame)
     		     (let ((color-theme-is-global nil))
 		       ;; must be current for local ctheme
 		       (select-frame frame)
 		       ;; test winsystem
 		       (eval 
 			(append '(if (window-system frame)) 
 				(mapcar (lambda (x) (cons x nil)) 
 					cols)))))))
     	       color-theme-choices ))
;; hook on after-make-frame-functions
(add-hook 'after-make-frame-functions 'test-win-sys)
 
(color-theme-tangotango)

(provide 'init-color-theme)