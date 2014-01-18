(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet)
(yas--initialize)
(setq yas/root-directory "~/.emacs.d/site-lisp/yasnippet")
(yas/load-directory yas/root-directory)
(yas-global-mode 1)

(provide 'init-yasnippet)