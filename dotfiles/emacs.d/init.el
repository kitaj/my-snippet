;;; Japanese
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;(setq default-input-method "MacOSX")

;;; Battery
(display-battery-mode t)

;;; C-h <-> DEL
(keyboard-translate ?\C-h ?\C-?)


;;; font-set
(if (eq window-system 'mac)
    (progn
      (require 'carbon-font)
      (fixed-width-set-fontset 'hirakaku_w3 12)))

(setq default-frame-alist
       (append '((active-alpha . 0.80)
		 (inactive-alpha . 0.80))
               default-frame-alist))

;;; tDiary
(add-to-list 'load-path (expand-file-name "~/Documents/Emacsen/apel"))
(add-to-list 'load-path (expand-file-name "~/Documents/tDiary/contrib/util/tdiary-mode"))
(autoload 'tdiary-replace "tdiary-mode" "tDiary mode" t)
