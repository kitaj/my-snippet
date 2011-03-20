;;; setenv PATH
(setenv "PATH" (mapconcat 'expand-file-name exec-path ":"))


;;; font-set & frame-alist
(if (eq window-system 'mac)
    (progn
      (require 'carbon-font)
      (fixed-width-set-fontset 'hiramaru 12)))

(setq default-frame-alist
       (append '((active-alpha . 1.00)
		 (inactive-alpha . 0.80))
               default-frame-alist))
