;; cleaner window
(menu-bar-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(add-to-list 'default-frame-alist '(height . 48))
(add-to-list 'default-frame-alist '(width . 80))

;; inhibit startup screen
(setq inhibit-splash-screen t)

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Using arrow for moving through buffers
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

;; visual-line-mode
(global-visual-line-mode 1)

;; use-package
'(package-selected-packages '(use-package))

;; auctex
(use-package tex
	     :ensure auctex)
(custom-set-variables '(TeX-engine 'xetex))

;; reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

;; org-latex
(setq org-latex-pdf-process (list "latexmk -f -xelatex %f"
				  "latexmk -c"))
(require 'ox-latex)
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
	       '("Psychology_letter"
		 "\\documentclass{Psychology_letter}")))

(defun orgsimple ()
  "Insert a template for a simple LaTeX document"
  (interactive)
  (insert-file "~/github/LaTeX/orgsimple.org")
  )

(defun simple ()
  "Insert a template for a simple LaTeX document"
  (interactive)
  (insert-file "~/github/LaTeX/simple.tex")
  )

(defun letter ()
  "Insert a template for a simple LaTeX document"
  (interactive)
  (insert-file "~/github/LaTeX/letter.tex")
  )

;; for Mac, use same PATH as shell path
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell 
      (replace-regexp-in-string "[[:space:]\n]*$" "" 
        (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(when (equal system-type 'darwin) (set-exec-path-from-shell-PATH))

;; mac use option key as meta
(setq mac-option-modifier 'meta)

