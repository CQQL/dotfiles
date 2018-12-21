(package-initialize)

(if (require 'quelpa nil t)
    (quelpa-self-upgrade)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

;; Package configuration
(quelpa 'use-package)
(quelpa 'use-package-chords)

;; My own package
(quelpa '(cqql :fetcher file :path "home/.emacs.d/lisp/cqql.el"))

;; Key bindings
(quelpa 'free-keys)

;; Libaries
(quelpa 'dash)
(quelpa 's)

;; Planning
(quelpa 'org-plus-contrib)
(quelpa 'org-bullets)

;; Load PATH from shell, even when emacs is not started from one
(quelpa 'exec-path-from-shell)

;; General editing
(quelpa 'avy)
(quelpa 'ace-window)
(quelpa 'multiple-cursors)
(quelpa 'smartparens)
(quelpa 'expand-region)
(quelpa 'wrap-region)
(quelpa 'centimacro)
(quelpa 'visual-regexp)
(quelpa 'hydra)
(quelpa 'beginend)

;; Convenience
(quelpa 'dictcc)

;; UI
(quelpa 'gruvbox-theme)
(quelpa 'smart-mode-line)
(quelpa 'rainbow-delimiters)
(quelpa 'shackle)
(quelpa 'highlight-symbol)
(quelpa 'discover-my-major)
(quelpa 'helpful)

;; Snippets
(quelpa 'yasnippet)

;; Autocomplete
(quelpa 'lsp-mode)
(quelpa 'lsp-ui)
(quelpa 'company)
(quelpa 'company-lsp)

;; VCS
(quelpa 'magit)
(quelpa 'magit-todos)
(quelpa 'git-timemachine)

;; Syntax checking
(quelpa 'flycheck)

;; Searching
(quelpa 'swiper)
(quelpa 'ivy)
(quelpa 'counsel)
(quelpa 'projectile)
(quelpa 'flx)

;; Markdown
(quelpa 'markdown-mode)

;; Emacs Lisp
(quelpa 'macrostep)

;; C/C++
(quelpa 'cquery)
(quelpa 'cmake-mode)
(quelpa 'google-c-style)
(quelpa 'clang-format)

;; Python
(quelpa 'pyenv-mode)
(quelpa 'ein)

;; Anything web related
(quelpa 'web-mode)

;; Javascript
(quelpa 'js2-mode)
(quelpa 'js2-refactor)

;; Rust
(quelpa 'rust-mode)
(quelpa 'racer)
(quelpa 'cargo)
(quelpa 'flycheck-rust)

;; LaTeX
(quelpa 'auctex)

;; Markup Languages
(quelpa 'yaml-mode)
