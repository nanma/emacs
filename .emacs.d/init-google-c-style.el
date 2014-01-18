(load-file "~/.emacs.d/site-lisp/google-c-style.el")  
(add-hook 'c-mode-common-hook 'google-set-c-style)  
(add-hook 'c-mode-common-hook 'google-make-newline-indent)  

(provide 'init-google-c-style)