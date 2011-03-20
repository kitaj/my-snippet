;;; Automatically save place in each file
(require 'saveplace)
(setq-default save-place t)


;;; dired-x
(add-hook 'dired-load-hook
	  '(lambda ()
	     (load "dired-x")
	     (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)))
(autoload 'wdired-change-to-wdired-mode "wdired")



;;; Unique buffer name
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
