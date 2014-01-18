(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-windows-width 0.2)
 '(scroll-bar-mode (quote right)))

;;(set-language-environment 'UTF-8) 
;;(set-locale-environment "UTF-8") 
(set-default-font "DejaVu Sans Mono-15")
;;(set-fontset-font "fontset-default" 'unicode '("文泉驿正黑" . "unicode-ttf"))

;; Invoke M-x without the Alt key 
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;;使用 backward-kill-word (向后删一词)而不是 Backspace（向后删一字）
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;;跳转命令
(define-key global-map "\C-c\C-g" 'goto-line)

;;显示行号
(global-linum-mode 1)

;;关闭工具栏
(tool-bar-mode nil)

;;终端模式下设置mark set键
(global-set-key [f8] (quote set-mark-command))

;;设置加载路径
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;;close tramp-mode in case of ecb opening failure.
(setq tramp-mode nil)

;;允许复制到外部程序
(setq x-select-enable-clipboard t)

;;设置color-theme
(require 'init-color-theme)

;;编程开发环境
(require 'cc-mode)
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

;;autopair
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

;;CEDET
(require 'init-cedet)

;;ECB
(require 'init-ecb)

;;install yasnippet
(require 'init-yasnippet)

(require 'init-auto-complete)

;member-function package for c++
(require 'member-functions)
(setq mf--source-file-extension "cpp")

(require 'init-google-c-style)

(require 'init-xcscope)

(require 'init-org-mode)

(require 'xml-rpc)

(require 'init-metaweblog)

(require 'init-org2blog)