;;; lsp-svelte.el --- Svelte client configuration    -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Ruby Iris Juric

;; Author: Ruby Iris Juric <ruby@srxl.me>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; LSP client configuration for Svelte.

;;; Code:

(defgroup lsp-svelte nil
  "LSP support for Svelte"
  :group 'lsp-mode
  :link '(url-link "https://github.com/sveltejs/language-tools")
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-typescript-enable t
  "Enable the TypeScript plugin."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-typescript-diagnostics-enable t
  "Enable diagnostic messages for TypeScript."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-typescript-hover-enable t
  "Enable hover info for TypeScript."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-typescript-document-symbols-enable t
  "Enable document symbols for TypeScript."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-typescript-completions-enable t
  "Enable completions for TypeScript."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-typescript-definitions-enable t
  "Enable go to definition for TypeScript."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-typescript-code-actions-enable t
  "Enable code actions for TypeScript."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-css-enable t
  "Enable the CSS plugin."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-css-diagnostics-enable t
  "Enable diagnostic messages for CSS."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-css-hover-enable t
  "Enable hover info for CSS."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-css-completions-enable t
  "Enable auto completions for CSS."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-css-document-colors-enable t
  "Enable document colors for CSS."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-css-color-presentations-enable t
  "Enable color picker for CSS."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-css-document-symbols-enable t
  "Enable document symbols for CSS."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-html-enable t
  "Enable the HTML plugin."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-html-hover-enable t
  "Enable hover info for HTML."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-html-completions-enable t
  "Enable auto completions for HTML."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-html-document-symbols-enable t
  "Enable document symbols for HTML."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-svelte-enable t
  "Enable the Svelte plugin."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-svelte-diagnostics-enable t
  "Enable diagnostic messages for Svelte."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-svelte-format-enable t
  "Enable formatting for Svelte (includes css & js)."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-svelte-completions-enable t
  "Enable auto completions for Svelte."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(defcustom lsp-svelte-plugin-svelte-hover-enable t
  "Enable hover information for Svelte."
  :type 'boolean
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(lsp-register-custom-settings
 '(("svelte.plugin.svelte.hover.enable" lsp-svelte-plugin-svelte-hover-enable t)
   ("svelte.plugin.svelte.completions.enable" lsp-svelte-plugin-svelte-completions-enable t)
   ("svelte.plugin.svelte.format.enable" lsp-svelte-plugin-svelte-format-enable t)
   ("svelte.plugin.svelte.diagnostics.enable" lsp-svelte-plugin-svelte-diagnostics-enable t)
   ("svelte.plugin.svelte.enable" lsp-svelte-plugin-svelte-enable t)
   ("svelte.plugin.html.documentSymbols.enable" lsp-svelte-plugin-html-document-symbols-enable t)
   ("svelte.plugin.html.completions.enable" lsp-svelte-plugin-html-completions-enable t)
   ("svelte.plugin.html.hover.enable" lsp-svelte-plugin-html-hover-enable t)
   ("svelte.plugin.html.enable" lsp-svelte-plugin-html-enable t)
   ("svelte.plugin.css.documentSymbols.enable" lsp-svelte-plugin-css-document-symbols-enable t)
   ("svelte.plugin.css.documentColors.enable" lsp-svelte-plugin-css-document-colors-enable t)
   ("svelte.plugin.css.completions.enable" lsp-svelte-plugin-css-completions-enable t)
   ("svelte.plugin.css.hover.enable" lsp-svelte-plugin-css-hover-enable t)
   ("svelte.plugin.css.diagnostics.enable" lsp-svelte-plugin-css-diagnostics-enable t)
   ("svelte.plugin.css.enable" lsp-svelte-plugin-css-enable t)
   ("svelte.plugin.typescript.codeActions.enable" lsp-svelte-plugin-typescript-code-actions-enable t)
   ("svelte.plugin.typescript.definitions.enable" lsp-svelte-plugin-typescript-definitions-enable t)
   ("svelte.plugin.typescript.completions.enable" lsp-svelte-plugin-typescript-completions-enable t)
   ("svelte.plugin.typescript.documentSymbols.enable" lsp-svelte-plugin-typescript-document-symbols-enable t)
   ("svelte.plugin.typescript.hover.enable" lsp-svelte-plugin-typescript-hover-enable t)
   ("svelte.plugin.typescript.diagnostics.enable" lsp-svelte-plugin-typescript-diagnostics-enable t)
   ("svelte.plugin.typescript.enable" lsp-svelte-plugin-typescript-enable t)))

(defcustom lsp-svelte-server-command-args '("--stdio")
  "Command-line arguments to be passed to the Svelte language server."
  :type '(repeat string)
  :group 'lsp-svelte
  :package-version '(lsp-mode . "6.3.1"))

(lsp-dependency 'svelte-language-server
                '(:system "svelteserver")
                '(:npm :package "svelte-language-server"
                       :path "svelteserver"))

(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection
                   (lambda ()
                     (cons (lsp-package-path 'svelte-language-server)
                           lsp-svelte-server-command-args)))
  :activation-fn (lambda (buffer-name _)
                   (and (string-match-p "\\.svelte\\'" buffer-name)
                        (lsp-workspace-root)))
  :initialization-options '((dontFilterIncompleteCompletions . :json-false))
  :server-id 'svelte-ls
  :priority -1
  :initialized-fn (lambda (ws)
                    (with-lsp-workspace ws
                      (lsp--set-configuration
                       (lsp-configuration-section "svelte"))))
  :download-server-fn (lambda (_client callback error-callback _update?)
                        (lsp-package-ensure
                         'svelte-language-server callback
                         error-callback))))

(provide 'lsp-svelte)
;;; lsp-svelte.el ends here
