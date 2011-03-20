;;; setenv PATH
(setenv "PATH" (mapconcat 'expand-file-name exec-path ":"))
