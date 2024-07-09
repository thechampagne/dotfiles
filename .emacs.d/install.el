(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(defvar x-package-contents-refreshed nil)

(defun x-install (&rest packages)
  (dolist (package packages)
    (when (not (package-installed-p package))
      (when (not x-package-contents-refreshed)
	(setq x-package-contents-refreshed t)
	 (package-refresh-contents))
          (package-install package))))
