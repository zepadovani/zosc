(in-package :asdf)

(defsystem :zosc
  ;; :serial t means that each component is only compiled, when the
  ;; predecessors are already loaded
  :serial t
  :author "josé henrique padovani"
  :maintainer "http://zpadovani.info"
  :description "A lib based on OpenMusic 6.x solution to create OSC connections. Requires cl-osc and has a modified version of OM 6.1 file oscoverudp.lisp and lispworks-udp 4 (see comments in the function udp-server-loop in udp-server.lisp file). In other words: you can connect PWGL with other applications and languages (SuperCollider, PD, Processing, etc.) over OSC. .... Thanks: Mika Kuuskankare."
  :version "0.4"
  :license "copyleft/GNU-GPL"
  :components
  ((:static-file "zosc.asd")
   (:file "package")
   (:file "oscoverudp")(:file "zoscthings")(:file "menus"))
  :depends-on (:osc :lispworks-udp))

